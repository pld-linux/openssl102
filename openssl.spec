%include	/usr/lib/rpm/macros.perl
Summary:	Library and toolkit for the "Secure Sockets Layer" (SSL v2/v3)
Summary(de):	Secure Sockets Layer (SSL)-Kommunikationslibrary & Utilities
Summary(fr):	Utilitaires et librairies de communication SSL (Secure Sockets Layer)
Name:		openssl
Version:	0.9.5a
Release:	1
Group:		Libraries
Group(fr):	Librairies
Group(pl):	Biblioteki
Source0:	ftp://ftp.openssl.org/source/%{name}-%{version}.tar.gz
Patch0:		openssl-perl.patch
Vendor:		The OpenSSL Project
License:	Apache-style License
BuildRequires:	symlinks
BuildRequires:	perl
BuildRoot:	%{tmpdir}/%{name}-%{version}-root-%(id -u -n)
Prereq:		fileutils
Prereq:		sed
Obsoletes:	SSLeay
Obsoletes:	SSLeay-devel
Obsoletes:	SSLeay-perl

%define		openssldir	/var/lib/openssl
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

%description -l de
Openssl enthält das OpenSSL Zertifikatsmanagementtool und shared
libraries, die verschiedene Verschlüsselungs- und
Entschlüsselungsalgorithmen und
- -protokolle, wie DES, RC4, RSA und SSL zur Verfügung stellen.

%description -l fr
OpenSSL est un outiil de gestion des certificats et les librairies
partagees qui fournit plusieurs protocoles et algorithmes de
codage/decodage, incluant DES, RC4, RSA et SSL.

%package devel
Summary:	Development part of OpenSSL library
Summary(de):	Secure Sockets Layer Kommunikationslibrary: statische libraries+header                           
Summary(fr):	Librairies statiques, headers et utilitaires pour communication SSL (Secure Sockets Layer)
Summary(pl):	Czê¶æ bibiloteki OpenSSL przeznaczona dla programistów
Group:		Development/Libraries
Group(fr):	Development/Librairies
Group(pl):	Programowanie/Biblioteki
Requires:	%{name} = %{version}

%description devel
Development part of OpenSSL library.

%description devel -l pl
Czê¶æ bibiloteki OpenSSL przeznaczona dla programistów.

%package static
Summary:	Static OpenSSL library
Summary(pl):	Statyczna wersja biblioteki OpenSSL
Group:		Development/Libraries
Group(fr):	Development/Librairies
Group(pl):	Programowanie/Biblioteki
Requires:	%{name}-devel = %{version}

%description static
Static OpenSSL library.

%description static -l pl
Statyczna wersja biblioteki OpenSSL.

%prep
%setup -q 
%patch -p1

%build
for i in Configure Makefile.org ; do
        perl -pi -e 's#-m486##g' $i
	perl -pi -e 's#-O3 -fomit-frame-pointer#%{optflags}#g' $i
done

perl util/perlpath.pl %{_bindir}

./config --openssldir=%{openssldir}

make OPT_FLAGS="$RPM_OPT_FLAGS" linux-shared
make INSTALLTOP=%{_prefix} OPT_FLAGS="$RPM_OPT_FLAGS"
make rehash
#cd perl
#perl Makefile.PL
#make

%install
rm -rf $RPM_BUILD_ROOT

install -d $RPM_BUILD_ROOT{%{_sysconfdir},%{_pkglibdir}}

make install \
	INSTALLTOP=%{_prefix} \
	INSTALL_PREFIX=$RPM_BUILD_ROOT

install libRSAglue.a 	$RPM_BUILD_ROOT%{_libdir}
install lib*.so.*.* 	$RPM_BUILD_ROOT%{_libdir}
cp -d 	lib*.so		$RPM_BUILD_ROOT%{_libdir}

#cd perl
#make install DESTDIR=$RPM_BUILD_ROOT
#cd ..

mv $RPM_BUILD_ROOT%{openssldir}/openssl.cnf $RPM_BUILD_ROOT%{_sysconfdir}
ln -s %{_sysconfdir}/openssl.cnf \
	$RPM_BUILD_ROOT%{openssldir}/openssl.cnf
symlinks -cs $RPM_BUILD_ROOT%{openssldir}

mv $RPM_BUILD_ROOT%{openssldir}/misc/*	$RPM_BUILD_ROOT%{_pkglibdir}
rm -rf $RPM_BUILD_ROOT%{openssldir}/misc

strip $RPM_BUILD_ROOT%{_bindir}/* || :
strip --strip-unneeded $RPM_BUILD_ROOT%{_libdir}/lib*.so.*.*

gzip -9nf CHANGES CHANGES.SSLeay LICENSE NEWS README \
	doc/*.txt doc/*/*pod

%post
%{_bindir}/c_rehash certs
/sbin/ldconfig

%postun -p /sbin/ldconfig

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(644,root,root,755)
%doc {CHANGES,CHANGES.SSLeay,LICENSE,NEWS,README}.gz
%doc doc/*.txt.gz doc/apps 
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
%doc doc/ssl doc/crypto
%attr(755,root,root) %{_libdir}/lib*.so
%{_pkgincludedir}

%files static
%defattr(644,root,root,755)
%{_libdir}/lib*.a
