Name: openssl
Version: 0.9.2b
Release: 1
Source: ftp://ftp.openssl.org/source/openssl-0.9.2b.tar.gz
Group: Libraries
Vendor: The OpenSSL Project
License: Apache-style License
Summary: Library and toolkit for the "Secure Sockets Layer" (SSL v2/v3)
Packager: Chris Hamilton <chrish@realminfo.com>

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
%setup
./config

%build
make
make rehash

%install
make install

%files
/usr/local/ssl/bin/openssl
/usr/local/ssl/bin/CA.sh
/usr/local/ssl/bin/CA.pl
/usr/local/ssl/bin/der_chop
/usr/local/ssl/bin/c_hash
/usr/local/ssl/bin/c_info
/usr/local/ssl/bin/c_issuer
/usr/local/ssl/bin/c_name
/usr/local/ssl/bin/c_rehash
/usr/local/ssl/lib/openssl.cnf
/usr/local/ssl/lib/libcrypto.a
/usr/local/ssl/lib/libssl.a
/usr/local/ssl/include/crypto.h
/usr/local/ssl/include/cryptall.h
/usr/local/ssl/include/tmdiff.h
/usr/local/ssl/include/opensslv.h
/usr/local/ssl/include/md2.h
/usr/local/ssl/include/md5.h
/usr/local/ssl/include/sha.h
/usr/local/ssl/include/mdc2.h
/usr/local/ssl/include/hmac.h
/usr/local/ssl/include/ripemd.h
/usr/local/ssl/include/des.h
/usr/local/ssl/include/rc2.h
/usr/local/ssl/include/rc4.h
/usr/local/ssl/include/rc5.h
/usr/local/ssl/include/idea.h
/usr/local/ssl/include/blowfish.h
/usr/local/ssl/include/cast.h
/usr/local/ssl/include/bn.h
/usr/local/ssl/include/rsa.h
/usr/local/ssl/include/dsa.h
/usr/local/ssl/include/dh.h
/usr/local/ssl/include/buffer.h
/usr/local/ssl/include/bio.h
/usr/local/ssl/include/stack.h
/usr/local/ssl/include/lhash.h
/usr/local/ssl/include/rand.h
/usr/local/ssl/include/err.h
/usr/local/ssl/include/objects.h
/usr/local/ssl/include/evp.h
/usr/local/ssl/include/asn1.h
/usr/local/ssl/include/asn1_mac.h
/usr/local/ssl/include/pem.h
/usr/local/ssl/include/pem2.h
/usr/local/ssl/include/x509.h
/usr/local/ssl/include/x509_vfy.h
/usr/local/ssl/include/x509v3.h
/usr/local/ssl/include/conf.h
/usr/local/ssl/include/txt_db.h
/usr/local/ssl/include/pkcs7.h
/usr/local/ssl/include/comp.h
/usr/local/ssl/include/ssl.h
/usr/local/ssl/include/ssl2.h
/usr/local/ssl/include/ssl3.h
/usr/local/ssl/include/ssl23.h
/usr/local/ssl/include/tls1.h

%doc CHANGES
%doc CHANGES.SSLeay
%doc INSTALL
%doc INSTALL.W32
%doc LICENSE
%doc NEWS
%doc README
%doc doc/crypto.pod
%doc doc/openssl.pod
%doc doc/openssl.txt
%doc doc/openssl_button.gif
%doc doc/openssl_button.html
%doc doc/ssl.pod
%doc doc/ssleay.txt
