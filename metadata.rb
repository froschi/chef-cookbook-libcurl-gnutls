maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures libcurl-gnutls"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

depends          "ca-certificates", ">= 0.0.1"
depends          "libgcrypt", ">= 0.0.1"
depends          "libidn", ">= 0.0.1"
depends          "libldap", ">= 0.0.1"
depends          "libgnutls", ">= 0.0.1"
depends          "libgssapi-krb5", ">= 0.0.1"
depends          "librtmp", ">= 0.0.1"
