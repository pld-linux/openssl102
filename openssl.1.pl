.\" Automatically generated by Pod::Man version 1.15
.\" Mon Apr 15 17:49:44 2002
.\"
.\" Standard preamble:
.\" ======================================================================
.de Sh \" Subsection heading
.br
.if t .Sp
.ne 5
.PP
\fB\\$1\fR
.PP
..
.de Sp \" Vertical space (when we can't use .PP)
.if t .sp .5v
.if n .sp
..
.de Ip \" List item
.br
.ie \\n(.$>=3 .ne \\$3
.el .ne 3
.IP "\\$1" \\$2
..
.de Vb \" Begin verbatim text
.ft CW
.nf
.ne \\$1
..
.de Ve \" End verbatim text
.ft R

.fi
..
.\" Set up some character translations and predefined strings.  \*(-- will
.\" give an unbreakable dash, \*(PI will give pi, \*(L" will give a left
.\" double quote, and \*(R" will give a right double quote.  | will give a
.\" real vertical bar.  \*(C+ will give a nicer C++.  Capital omega is used
.\" to do unbreakable dashes and therefore won't be available.  \*(C` and
.\" \*(C' expand to `' in nroff, nothing in troff, for use with C<>
.tr \(*W-|\(bv\*(Tr
.ds C+ C\v'-.1v'\h'-1p'\s-2+\h'-1p'+\s0\v'.1v'\h'-1p'
.ie n \{\
.    ds -- \(*W-
.    ds PI pi
.    if (\n(.H=4u)&(1m=24u) .ds -- \(*W\h'-12u'\(*W\h'-12u'-\" diablo 10 pitch
.    if (\n(.H=4u)&(1m=20u) .ds -- \(*W\h'-12u'\(*W\h'-8u'-\"  diablo 12 pitch
.    ds L" ""
.    ds R" ""
.    ds C` ""
.    ds C' ""
'br\}
.el\{\
.    ds -- \|\(em\|
.    ds PI \(*p
.    ds L" ``
.    ds R" ''
'br\}
.\"
.\" If the F register is turned on, we'll generate index entries on stderr
.\" for titles (.TH), headers (.SH), subsections (.Sh), items (.Ip), and
.\" index entries marked with X<> in POD.  Of course, you'll have to process
.\" the output yourself in some meaningful fashion.
.if \nF \{\
.    de IX
.    tm Index:\\$1\t\\n%\t"\\$2"
..
.    nr % 0
.    rr F
.\}
.\"
.\" For nroff, turn off justification.  Always turn off hyphenation; it
.\" makes way too many mistakes in technical documents.
.hy 0
.if n .na
.\"
.\" Accent mark definitions (@(#)ms.acc 1.5 88/02/08 SMI; from UCB 4.2).
.\" Fear.  Run.  Save yourself.  No user-serviceable parts.
.bd B 3
.    \" fudge factors for nroff and troff
.if n \{\
.    ds #H 0
.    ds #V .8m
.    ds #F .3m
.    ds #[ \f1
.    ds #] \fP
.\}
.if t \{\
.    ds #H ((1u-(\\\\n(.fu%2u))*.13m)
.    ds #V .6m
.    ds #F 0
.    ds #[ \&
.    ds #] \&
.\}
.    \" simple accents for nroff and troff
.if n \{\
.    ds ' \&
.    ds ` \&
.    ds ^ \&
.    ds , \&
.    ds ~ ~
.    ds /
.\}
.if t \{\
.    ds ' \\k:\h'-(\\n(.wu*8/10-\*(#H)'\'\h"|\\n:u"
.    ds ` \\k:\h'-(\\n(.wu*8/10-\*(#H)'\`\h'|\\n:u'
.    ds ^ \\k:\h'-(\\n(.wu*10/11-\*(#H)'^\h'|\\n:u'
.    ds , \\k:\h'-(\\n(.wu*8/10)',\h'|\\n:u'
.    ds ~ \\k:\h'-(\\n(.wu-\*(#H-.1m)'~\h'|\\n:u'
.    ds / \\k:\h'-(\\n(.wu*8/10-\*(#H)'\z\(sl\h'|\\n:u'
.\}
.    \" troff and (daisy-wheel) nroff accents
.ds : \\k:\h'-(\\n(.wu*8/10-\*(#H+.1m+\*(#F)'\v'-\*(#V'\z.\h'.2m+\*(#F'.\h'|\\n:u'\v'\*(#V'
.ds 8 \h'\*(#H'\(*b\h'-\*(#H'
.ds o \\k:\h'-(\\n(.wu+\w'\(de'u-\*(#H)/2u'\v'-.3n'\*(#[\z\(de\v'.3n'\h'|\\n:u'\*(#]
.ds d- \h'\*(#H'\(pd\h'-\w'~'u'\v'-.25m'\f2\(hy\fP\v'.25m'\h'-\*(#H'
.ds D- D\\k:\h'-\w'D'u'\v'-.11m'\z\(hy\v'.11m'\h'|\\n:u'
.ds th \*(#[\v'.3m'\s+1I\s-1\v'-.3m'\h'-(\w'I'u*2/3)'\s-1o\s+1\*(#]
.ds Th \*(#[\s+2I\s-2\h'-\w'I'u*3/5'\v'-.3m'o\v'.3m'\*(#]
.ds ae a\h'-(\w'a'u*4/10)'e
.ds Ae A\h'-(\w'A'u*4/10)'E
.    \" corrections for vroff
.if v .ds ~ \\k:\h'-(\\n(.wu*9/10-\*(#H)'\s-2\u~\d\s+2\h'|\\n:u'
.if v .ds ^ \\k:\h'-(\\n(.wu*10/11-\*(#H)'\v'-.4m'^\v'.4m'\h'|\\n:u'
.    \" for low resolution devices (crt and lpr)
.if \n(.H>23 .if \n(.V>19 \
\{\
.    ds : e
.    ds 8 ss
.    ds o a
.    ds d- d\h'-1'\(ga
.    ds D- D\h'-1'\(hy
.    ds th \o'bp'
.    ds Th \o'LP'
.    ds ae ae
.    ds Ae AE
.\}
.rm #[ #] #H #V #F C
.\" ======================================================================
.\"
.IX Title "OPENSSL 1"
.TH OPENSSL 1 "OpenSSL 0.9.6" "2002-10-02" "OpenSSL 0.9.6"
.UC
.SH "NAZWA"
openssl \- narz�dzia wiersza polece� do biblioteki OpenSSL 
.SH "SK�ADNIA"
.IX Header "SK�ADNIA"
\&\fBopenssl\fR
\&\fIpolecenie\fR
[ \fIopcje_polecenia\fR ]
[ \fIargumenty_polecenia\fR ]
.PP
\&\fBopenssl\fR [ \fBlist-standard-commands\fR | \fBlist-message-digest-commands\fR | \fBlist-cipher-commands\fR ]
.PP
\&\fBopenssl\fR \fBno-\fR\fI\s-1XXX\s0\fR [ \fIdowolne opcje\fR ]
.SH "OPIS"
.IX Header "OPIS"
OpenSSL to zestaw narz�dzi kryptograficznych implementuj�cy protoko�y
sieciowe Secure Sockets Layer (\s-1SSL\s0 v2/v3) i Transport Layer Security 
(\s-1TLS\s0 v1) oraz wymagane przez nie standardy kryptograficzne.
.PP
Program \fBopenssl\fR to narz�dzie wiersza polece� przeznaczone do 
u�ywania r�nych funkcji kryptograficznych biblioteki \fBcrypto\fR OpenSSL
z poziomu pow�oki. Mo�na go u�ywa� do:
.PP
.Vb 6
\& o Tworzenia kluczy RSA, DH i DSA
\& o Wystawiania certyfikat�w X.509, CSR oraz CRL
\& o Obliczania skr�t�w wiadomo�ci
\& o Szyfrowania i deszyfrowania
\& o Testowania klient�w i serwer�w SSL/TLS
\& o Obs�ugi poczty z podpisem S/MIME lub zaszyfrowanej
.Ve
.SH "PODSUMOWANIE POLECE�"
.IX Header "PODSUMOWANIE POLECE�"
Program \fBopenssl\fR dostarcza wielu r�nych polece� (\fIpolecenie\fR w sekcji 
SK�ADNIA powy�ej), z kt�rych ka�de ma mn�stwo opcji i argument�w (\fIopcje_polecenia\fR 
i \fIargumenty_polecenia\fR w sekcji SK�ADNIA).
.PP
Pseudo-polecenia \fBlist-standard-commands\fR, \fBlist-message-digest-commands\fR
oraz \fBlist-cipher-commands\fR wypisuj� list� nazw (po jednym elemencie 
w wierszu) odpowiednio: wszystkich standardowych polece�, polece� skr�tu wiadomo�ci
lub polece� szyfrowania dost�pnych w bie��cej aplikacji \fBopenssl\fR.
.PP
Pseudo-polecenie \fBno-\fR\fI\s-1XXX\s0\fR sprawdza obecno�� polecenia o podanej
nazwie. Je�li \fI\s-1XXX\s0\fR nie jest dost�pne, zwraca 0 (kod powodzenia) 
i wypisuje \fBno-\fR\fI\s-1XXX\s0\fR; w przeciwnym razie zwraca 1 i wypisuje
\&\fI\s-1XXX\s0\fR. W obydwu przypadkach efekty s� kierowane na \fBstdout\fR i nic
nie pojawia si� na \fBstderr\fR. Dodatkowe argumenty wiersza polece�
s� zawsze ignorowane. Poniewa� ka�dy szyfr jest wywo�ywany przez polecenie 
o takiej samej nazwie jak on sam, �atwo sprawdzi� dost�pno�� szyfr�w w \fBopenssl\fR 
z poziomu pow�oki. (\fBno-\fR\fI\s-1XXX\s0\fR nie potrafi wykrywa� pseudo-polece�
takich jak \fBquit\fR, \fBlist-\fR\fI...\fR\fB\-commands\fR, czy samego \fBno-\fR\fI\s-1XXX\s0\fR.)
.Sh "\s-1STANDARDOWE\s0 \s-1POLECENIA\s0"
.IX Subsection "STANDARDOWE POLECENIA"
.Ip "\fBasn1parse\fR" 10
.IX Item "asn1parse"
Analiza sk�adni sekwencji \s-1ASN\s0.1.
.Ip "\fBca\fR" 10
.IX Item "ca"
Zarz�dzanie o�rodkami certyfikacji (\s-1CA\s0).
.Ip "\fBciphers\fR" 10
.IX Item "ciphers"
Opis zestawu dost�pnych szyfr�w.
.Ip "\fBcrl\fR" 10
.IX Item "crl"
Zarz�dzanie list� uniewa�nionych certyfikat�w (\s-1CRL\s0).
.Ip "\fBcrl2pkcs7\fR" 10
.IX Item "crl2pkcs7"
Konwersja z \s-1CRL\s0 do PKCS#7.
.Ip "\fBdgst\fR" 10
.IX Item "dgst"
Obliczanie skr�tu wiadomo�ci.
.Ip "\fBdh\fR" 10
.IX Item "dh"
Zarz�dzanie parametrami Diffie-Hellmana.
Przedawnione przez \fBdhparam\fR.
.Ip "\fBdsa\fR" 10
.IX Item "dsa"
Zarz�dzanie danymi \s-1DSA\s0.
.Ip "\fBdsaparam\fR" 10
.IX Item "dsaparam"
Tworzenie parametru \s-1DSA\s0.
.Ip "\fBenc\fR" 10
.IX Item "enc"
Szyfrowanie.
.Ip "\fBerrstr\fR" 10
.IX Item "errstr"
Konwersja numeru b��du na komunikat b��du.
.Ip "\fBdhparam\fR" 10
.IX Item "dhparam"
Tworzenie i zarz�dzanie parametrami Diffie-Hellmana.
.Ip "\fBgendh\fR" 10
.IX Item "gendh"
Tworzenie parametr�w Diffie-Hellmana.
Przedawnione przez \fBdhparam\fR.
.Ip "\fBgendsa\fR" 10
.IX Item "gendsa"
Tworzenie parametr�w \s-1DSA\s0.
.Ip "\fBgenrsa\fR" 10
.IX Item "genrsa"
Tworzenie parametr�w \s-1RSA\s0.
.Ip "\fBpasswd\fR" 10
.IX Item "passwd"
Generowanie skr�tu has�a.
.Ip "\fBpkcs12\fR" 10
.IX Item "pkcs12"
Zarz�dzanie danymi PKCS#12.
.Ip "\fBpkcs7\fR" 10
.IX Item "pkcs7"
Zarz�dzanie danymi w formacie PKCS#7.
.Ip "\fBrand\fR" 10
.IX Item "rand"
Tworzenie pseudo-losowych bajt�w.
.Ip "\fBreq\fR" 10
.IX Item "req"
Zarz�dzanie ��daniami podpisu certyfikatu X.509 (\s-1CSR\s0).
.Ip "\fBrsa\fR" 10
.IX Item "rsa"
Zarz�dzanie danymi \s-1RSA\s0.
.Ip "\fBrsautl\fR" 10
.IX Item "rsautl"
Narz�dzie do podpisywania, weryfikowania, szyfrowania i deszyfrowania \s-1RSA\s0.
.Ip "\fBs_client\fR" 10
.IX Item "s_client"
Implementacja podstawowego klienta \s-1SSL/TLS\s0 potrafi�cego nawi�zywa� prze�roczyste
po��czenia z odleg�ym serwerem na \s-1SSL/TLS\s0. S�u�y jedynie do
testowania i dostarcza tylko podstawowej funkcjonalno�ci interfejsu, ale
wewn�trznie korzysta z niemal pe�nych mo�liwo�ci biblioteki OpenSSL \fBssl\fR.
.Ip "\fBs_server\fR" 10
.IX Item "s_server"
Implementacja podstawowego serwera \s-1SSL/TLS\s0 przyjmuj�cego po��czenia od odleg�ych
klient�w obs�uguj�cych \s-1SSL/TLS\s0. S�u�y jedynie do testowania i dostarcza tylko
podstawowej funkcjonalno�ci interfejsu, ale wewn�trznie korzysta z niemal 
pe�nych mo�liwo�ci biblioteki OpenSSL \fBssl\fR. Posiada zar�wno w�asny protok�
wiersza polece� do testowania funkcji \s-1SSL\s0, jak i emuluje prosty serwer sieciowy
\&\s-1SSL/TLS\s0 oparty o \s-1HTTP\s0.
.Ip "\fBs_time\fR" 10
.IX Item "s_time"
Licznik czasu po��czenia \s-1SSL\s0.
.Ip "\fBsess_id\fR" 10
.IX Item "sess_id"
Zarz�dzanie danymi sesji \s-1SSL\s0.
.Ip "\fBsmime\fR" 10
.IX Item "smime"
Przetwarzanie poczty S/MIME.
.Ip "\fBspeed\fR" 10
.IX Item "speed"
Mierzenie szybko�ci algorytmu.
.Ip "\fBverify\fR" 10
.IX Item "verify"
Weryfikacja certyfikatu X.509.
.Ip "\fBversion\fR" 10
.IX Item "version"
Informacja o wersji OpenSSL.
.Ip "\fBx509\fR" 10
.IX Item "x509"
Zarz�dzanie certyfikatami X.509.
.Sh "\s-1POLECENIA\s0 SKR�TU WIADOMO�CI"
.IX Subsection "POLECENIA SKR�TU WIADOMO�CI"
.Ip "\fBmd2\fR" 10
.IX Item "md2"
Skr�t \s-1MD2\s0
.Ip "\fBmd5\fR" 10
.IX Item "md5"
Skr�t \s-1MD5\s0
.Ip "\fBmdc2\fR" 10
.IX Item "mdc2"
Skr�t \s-1MDC2\s0
.Ip "\fBrmd160\fR" 10
.IX Item "rmd160"
Skr�t \s-1RMD-160\s0
.Ip "\fBsha\fR" 10
.IX Item "sha"
Skr�t \s-1SHA\s0
.Ip "\fBsha1\fR" 10
.IX Item "sha1"
Skr�t \s-1SHA-1\s0
.Sh "\s-1POLECENIA\s0 \s-1KODOWANIA\s0 I \s-1SZYFROWANIA\s0"
.IX Subsection "POLECENIA KODOWANIA I SZYFROWANIA"
.Ip "\fBbase64\fR" 10
.IX Item "base64"
Kodowanie Base64
.Ip "\fBbf bf-cbc bf-cfb bf-ecb bf-ofb\fR" 10
.IX Item "bf bf-cbc bf-cfb bf-ecb bf-ofb"
Szyfr Blowfish
.Ip "\fBcast cast-cbc\fR" 10
.IX Item "cast cast-cbc"
Szyfr \s-1CAST\s0
.Ip "\fBcast5\-cbc cast5\-cfb cast5\-ecb cast5\-ofb\fR" 10
.IX Item "cast5-cbc cast5-cfb cast5-ecb cast5-ofb"
Szyfr \s-1CAST5\s0
.Ip "\fBdes des-cbc des-cfb des-ecb des-ede des-ede-cbc des-ede-cfb des-ede-ofb des-ofb\fR" 10
.IX Item "des des-cbc des-cfb des-ecb des-ede des-ede-cbc des-ede-cfb des-ede-ofb des-ofb"
Szyfr \s-1DES\s0
.Ip "\fBdes3 desx des-ede3 des-ede3\-cbc des-ede3\-cfb des-ede3\-ofb\fR" 10
.IX Item "des3 desx des-ede3 des-ede3-cbc des-ede3-cfb des-ede3-ofb"
Szyfr Triple-DES
.Ip "\fBidea idea-cbc idea-cfb idea-ecb idea-ofb\fR" 10
.IX Item "idea idea-cbc idea-cfb idea-ecb idea-ofb"
Szyfr \s-1IDEA\s0
.Ip "\fBrc2 rc2\-cbc rc2\-cfb rc2\-ecb rc2\-ofb\fR" 10
.IX Item "rc2 rc2-cbc rc2-cfb rc2-ecb rc2-ofb"
Szyfr \s-1RC2\s0
.Ip "\fBrc4\fR" 10
.IX Item "rc4"
Szyfr \s-1RC4\s0
.Ip "\fBrc5 rc5\-cbc rc5\-cfb rc5\-ecb rc5\-ofb\fR" 10
.IX Item "rc5 rc5-cbc rc5-cfb rc5-ecb rc5-ofb"
Szyfr \s-1RC5\s0
.SH "ARGUMENTY HAS�A"
.IX Header "ARGUMENTY HAS�A"
Niekt�re polecenia przyjmuj� argumenty has�a, zazwyczaj przy pomocy
odpowiednio \fB\-passin\fR i \fB\-passout\fR dla hase� wchodz�cych i wychodz�cych.
Pozwala to przyjmowa� has�a z rozmaitych �r�de�. Obie te opcje pobieraj�
pojedynczy argument w formacie opisanym poni�ej. Je�eli wymagane has�o 
nie zosta�o podane, u�ytkownik jest monitowany o wpisanie go. Zwykle
zostanie ono wczytane z bie��cego terminalu z wy��czonym wy�wietlaniem.
.Ip "\fBpass:has�o\fR" 10
.IX Item "pass:has�o"
w�a�ciwe has�o to \fBhas�o\fR. Poniewa� jest ono widoczne dla aplikacji
takich jak na przyk�ad ,,ps'' w uniksie, tej formy nale�y u�ywa� 
tylko wtedy, kiedy nie zale�y nam na bezpiecze�stwie.
.Ip "\fBenv:zmienna\fR" 10
.IX Item "env:zmienna"
pobranie has�a ze zmiennej �rodowiskowej \fBzmienna\fR. Poniewa� �rodowisko
innych proces�w jest widzialne na niekt�rych platformach (na przyk�ad
przez ,,ps'' w niekt�rych uniksach) nale�y ostro�nie korzysta� z tej opcji.
.Ip "\fBfile:�cie�ka\fR" 10
.IX Item "file:�cie�ka"
pierwszy wiersz \fB�cie�ki\fR stanowi has�o. Je�eli ta sama nazwa \fB�cie�ki\fR
jest do��czona do argument�w  \fB\-passin\fR oraz \fB\-passout\fR to pierwszy wiersz
zostanie u�yty w charakterze has�a wej�ciowego a nast�pny w charakterze
has�a wyj�ciowego. \fB�cie�ka\fR nie musi si� odnosi� do zwyk�ego pliku: mo�e
si� na przyk�ad odnosi� do urz�dzenia lub nazwanego potoku.
.Ip "\fBfd:numer\fR" 10
.IX Item "fd:numer"
czytanie has�a z deskryptora pliku \fBnumer\fR. Mo�na tego u�ywa� na przyk�ad 
do wysy�ania danych przez potok.
.Ip "\fBstdin\fR" 10
.IX Item "stdin"
czytanie has�a ze standardowego wej�cia.
.SH "ZOBACZ TAK�E"
.IX Header "ZOBACZ TAK�E"
openssl_asn1parse(1), openssl_ca(1), openssl_config(5),
openssl_crl(1), openssl_crl2pkcs7(1), openssl_dgst(1),
openssl_dhparam(1), openssl_dsa(1), openssl_dsaparam(1),
openssl_enc(1), openssl_gendsa(1),
openssl_genrsa(1), openssl_nseq(1), openssl_openssl(1),
openssl_passwd(1),
openssl_pkcs12(1), openssl_pkcs7(1), openssl_pkcs8(1),
openssl_rand(1), openssl_req(1), openssl_rsa(1),
openssl_rsautl(1), openssl_s_client(1),
openssl_s_server(1), openssl_smime(1), openssl_spkac(1),
openssl_verify(1), openssl_version(1), openssl_x509(1),
openssl_crypto(3), openssl_ssl(3) 
.SH "HISTORIA"
.IX Header "HISTORIA"
Strona podr�cznika systemowego \fIopenssl\fR\|(1) pojawi�a si� w OpenSSL 0.9.2.
Pseudo-polecenia \fBlist-\fR\fI\s-1XXX\s0\fR\fB\-commands\fR dodano w OpenSSL 0.9.3;
pseudo-polecenia \fBno-\fR\fI\s-1XXX\s0\fR zosta�y dodane w OpenSSL 0.9.5a.
O dost�pno�ci pozosta�ych polece� mo�na przeczyta� na ich w�asnych
stronach podr�cznika.
.\" .SH "OD T�UMACZA"
.\" .IX Header "OD T�UMACZA"
.\" T�umaczenie Daniel Ko� <kocio@linuxnews.pl> na podstawie strony 
.\" podr�cznika systemowego openssl 0.9.6c, 13.04.2002.
