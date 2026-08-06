#
# This code has been automatically generated. Any changes will be overwritten.
#
class CredhubCli < Formula
  desc "CredHub CLI"
  homepage "https://github.com/cloudfoundry/credhub-cli"
  version "2.9.59"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cloudfoundry/credhub-cli/releases/download/2.9.59/credhub-darwin-arm64-2.9.59.tgz"
      sha256 "e548ac1f2ca2cac255d3b56da8b99ad7f073548757303e7a4d5ee9965921d60a"
    else
      url "https://github.com/cloudfoundry/credhub-cli/releases/download/2.9.59/credhub-darwin-amd64-2.9.59.tgz"
      sha256 "71dff2d533e7af732baec59c3caaab0724f767bcd4f2fed0a368f5c81d300a17"
    end
  elsif OS.linux?
    url "https://github.com/cloudfoundry/credhub-cli/releases/download/2.9.59/credhub-linux-amd64-2.9.59.tgz"
    sha256 "faf75bedb058053d649cfdd8e19fb56b323f954ba78a3df101b023339c1b21d2"
  end

  def install
    bin.install "credhub"
  end

  test do
    system "#{bin}/credhub --help"
  end
end
