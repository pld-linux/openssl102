%define		date	19990520
%define		time	2130
Summary: 	Library and toolkit for the "Secure Sockets Layer" (SSL v2/v3)
Name: 		openssl
Version: 	0.9.3
Release: 	0.%{date}
Group: 		Libraries
Group(pl):	Biblioteki
Source: 	ftp://ftp.openssl.org/source/%{name}-SNAP-%{date}-%{time}.tar.gz
Patch0:		openssl-sslcrypto.patch
Patch1:		openssl-perl.patch
Vendor: 	The OpenSSL Project
License: 	Apache-style License
BuildPrereq:	perl
BuildRoot:	/tmp/%{name}-%{version}-root
Obsoletes:	SSLeay
Obsoletes:	SSLeay-devel
Obsoletes:	SSLeay-perl

%define		openssldir	/var/state/openssl
%define		_sysconfdir	/etc/%{name}
%define		_pkglibdir	%{_libdir}/%{name}
%define		_pkgincludedir	%{_includedir}/%{name}

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

%package devel
Summary:	Development part of OpenSSL library
Summary(pl):	Czê¶æ bibiloteki OpenSSL przeznaczona dla programistów
Group:		Development/Library
Group(pl):	Programownie/Biblioteki
Requires:	%{name} = %{version}

%description devel
Development part of OpenSSL library.

%description devel -l pl
Czê¶æ bibiloteki OpenSSL przeznaczona dla programistów.

%package static
Summary:	Static OpenSSL library
Summary(pl):	Statyczna wersja biblioteki OpenSSL
Group:		Development/Library
Group(pl):	Programowanie/Biblioteki
Requires:	%{name}-devel = %{version}

%description static
Static OpenSSL library.

%description static -l pl
Statyczna wersja biblioteki OpenSSL.

%prep
%setup  -q -n %{name}-SNAP-%{date}-%{time}
%patch0 -p1
%patch1 -p1

%build
for i in ` echo Configure Makefile.org `; do
        sed -e 's#-m486##g' \
		-e 's#-O3 -fomit-frame-pointer#%{optflags}#g' \
		<$i >$i.work
        mv $i.work $i
done

perl util/perlpath.pl %{_bindir}

ln -s crypto sslcrypto

./config --openssldir=%{openssldir}

make OPT_FLAGS="$RPM_OPT_FLAGS" linux-shared
make INSTALLTOP=%{_prefix} OPT_FLAGS="$RPM_OPT_FLAGS"
make rehash

%install
rm -rf $RPM_BUILD_ROOT

install -d $RPM_BUILD_ROOT{%{_sysconfdir},%{_pkglibdir}}

make install \
	INSTALLTOP=%{_prefix} \
	INSTALL_PREFIX=$RPM_BUILD_ROOT

install libRSAglue.a 	$RPM_BUILD_ROOT%{_libdir}
install lib*.so.*.* 	$RPM_BUILD_ROOT%{_libdir}
mv 	lib*.so		$RPM_BUILD_ROOT%{_libdir}


mv $RPM_BUILD_ROOT%{openssldir}/openssl.cnf $RPM_BUILD_ROOT%{_sysconfdir}
ln -s $RPM_BUILD_ROOT%{_sysconfdir}/openssl.cnf \
	$RPM_BUILD_ROOT%{openssldir}/openssl.cnf
symlinks -cs $RPM_BUILD_ROOT%{openssldir}

mv $RPM_BUILD_ROOT%{openssldir}/misc/*	$RPM_BUILD_ROOT%{_pkglibdir}
rm -rf $RPM_BUILD_ROOT%{openssldir}/misc

strip $RPM_BUILD_ROOT%{_bindir}/* || :
strip --strip-unneeded $RPM_BUILD_ROOT%{_libdir}/lib*.so.*.* || :

gzip -9fn CHANGES CHANGES.SSLeay LICENSE NEWS README \
	doc/*.pod doc/*.txt

%post
%{_bindir}/c_rehash certs
/sbin/ldconfig

%postun -p /sbin/ldconfig

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(644,root,root,755)
%doc {CHANGES,CHANGES.SSLeay,LICENSE,NEWS,README}.gz
%doc doc/*.pod.gz doc/*.txt.gz
%doc doc/openssl_button.gif doc/openssl_button.html

%attr(755,root,root) %{_bindir}/*
%verify(not md5 size mtime) %config(noreplace) %{_sysconfdir}/openssl.cnf
%verify(not md5 size mtime) %config(noreplace) %{openssldir}/openssl.cnf
%{openssldir}/certs
%{openssldir}/private
%dir %{_pkglibdir}
%attr(755,root,root) %{_pkglibdir}/*
%attr(755,root,root) %{_libdir}/lib*.so.*.*

%files devel
%defattr(644,root,root,755)
%attr(755,root,root) %{_libdir}/lib*.so
%{_pkgincludedir}

%files static
%defattr(644,root,root,755)
%{_libdir}/lib*.a

%changelog
* Wed Apr 14 1999 Artur Frysiak <wiget@pld.org.pl>
  [0.9.2c-2]
- rewrite for PLD
TODO: make shared libs and perl subpackage
