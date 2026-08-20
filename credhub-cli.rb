#
# This code has been automatically generated. Any changes will be overwritten.
#
class CredhubCli < Formula
  desc "CredHub CLI"
  homepage "https://github.com/cloudfoundry/credhub-cli"
  version "2.9.60"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cloudfoundry/credhub-cli/releases/download/2.9.60/credhub-darwin-arm64-2.9.60.tgz"
      sha256 "10ba1afe23035f0b364f2f971efcba0ff06ec8f6e9a148b0dc55b1e1d61c1c36"
    else
      url "https://github.com/cloudfoundry/credhub-cli/releases/download/2.9.60/credhub-darwin-amd64-2.9.60.tgz"
      sha256 "e4106bfde75bd1a7f89fb2244d4ce7a9a903e32b432c0949026152b45fdd76e2"
    end
  elsif OS.linux?
    url "https://github.com/cloudfoundry/credhub-cli/releases/download/2.9.60/credhub-linux-amd64-2.9.60.tgz"
    sha256 "e6018cf5a12f399d5bc9b2a89926551113e0ceac57856519d01a6f435a8619e0"
  end

  def install
    bin.install "credhub"
  end

  test do
    system "#{bin}/credhub --help"
  end
end
