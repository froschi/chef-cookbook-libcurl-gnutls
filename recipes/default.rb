packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libcurl3-gnutls
  /
when "precise"
  packages |= %w/
    libcurl3-gnutls
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
