Summary: 	Library and toolkit for the "Secure Sockets Layer" (SSL v2/v3)
Name: 		openssl
Version: 	0.9.2b
Release: 	2
Group: 		Libraries
Group(pl):	Biblioteki
Source: 	ftp://ftp.openssl.org/source/%{name}-%{version}.tar.gz
Patch0:		openssl-sslcrypto.patch
Patch1:		openssl-perl.patch
Patch2:		openssl-shlib.patch
Vendor: 	The OpenSSL Project
License: 	Apache-style License
BuildPrereq:	perl
BuildRoot:	/tmp/%{name}-%{version}-root
Obsoletes:	SSLeay
Obsoletes:	SSLeay-devel
Obsoletes:	SSLeay-perl

%description
The OpenSSL Project is a collaborative effort to develop a robust,
commercial-grade, full-featured, and Open Source toolkit implementing
the Secure Sockets Layer (SSL v2/v3) and Transport Layer Security (TLS
v1) protocols with full-strength cryptography world-wide. The project
is managed by a worldwide community of volunteers that use the
Internet to communicate, plan, and develop the OpenSSL tookit and its
related documentation.
   
OpenSSL is based on the excellent SSLeay library developed by Eric A.
Young and Tim J. Hudson. The OpenSSL toolkit is licensed under an
Apache-style licence, which basically means that you are free to get
and use it for commercial and non-commercial purposes subject to some
simple license conditions.

%prep
%setup  -q
%patch0 -p1
%patch1 -p1
%patch2 -p1

%build
for i in ` echo Configure Makefile.org Makefile.ssl `; do
        sed -e 's#-m486##g' \
		-e 's#-O3 -fomit-frame-pointer#%{optflags}#g' \
		<$i >$i.work
        mv $i.work $i
done

perl util/perlpath.pl /usr/bin
perl util/ssldir.pl /var/lib/ssl

./config
make INSTALLTOP=/usr OPT_FLAGS="$RPM_OPT_FLAGS"
make rehash

%install
rm -rf $RPM_BUILD_ROOT

install -d $RPM_BUILD_ROOT/{etc,usr/include/ssl,var/lib/ssl/{certs,private}}

make INSTALLTOP=$RPM_BUILD_ROOT/usr install

install libRSAglue.a $RPM_BUILD_ROOT/usr/lib

mv $RPM_BUILD_ROOT/usr/include/*.h $RPM_BUILD_ROOT/usr/include/ssl

mv $RPM_BUILD_ROOT/usr/lib/openssl.cnf $RPM_BUILD_ROOT/etc
ln -s ../../etc/openssl.cnf $RPM_BUILD_ROOT/usr/lib/openssl.cnf

gzip -9fn CHANGES CHANGES.SSLeay LICENSE NEWS README \
	doc/*.pod doc/*.txt

%post
/usr/bin/c_rehash certs

%clean
#rm -rf $RPM_BUILD_ROOT

%files
%defattr(644,root,root,755)
%doc {CHANGES,CHANGES.SSLeay,LICENSE,NEWS,README}.gz
%doc doc/*.pod.gz doc/*.txt.gz
%doc doc/openssl_button.gif doc/openssl_button.html

%attr(755,root,root) /usr/bin/*
%verify(not md5 size mtime) %config(noreplace) /etc/openssl.cnf
%verify(not md5 size mtime) %config(noreplace) /usr/lib/openssl.cnf
/usr/lib/lib*.a
/usr/include/ssl/*.h
/var/lib/ssl

%changelog
* Wed Apr 14 1999 Artur Frysiak <wiget@pld.org.pl>
  [0.9.2c-2]
- rewrite for PLD
TODO: make shared libs and perl subpackage
