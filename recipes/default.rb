include_recipe "libgcrypt"
include_recipe "libgnutls"
include_recipe "libgssapi-krb5"
include_recipe "libidn"
include_recipe "libldap"
include_recipe "ca-certificates"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libcurl3-gnutls
  /
when "precise"
  include_recipe "librtmp"

  packages |= %w/
    libcurl3-gnutls
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
