#
# This code has been generated automatically. Any changes will be overwritten.
#
class Bbr < Formula
  desc "BOSH Backup and Restore CLI"
  homepage "https://github.com/cloudfoundry/bosh-backup-and-restore"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cloudfoundry/bosh-backup-and-restore/releases/download/v1.9.80/bbr-1.9.80-darwin-arm64"
      sha256 "1f8d45c33206239084c78c90d7deae33605c4122a6a23048b473b4dbedb03403"
    else
      url "https://github.com/cloudfoundry/bosh-backup-and-restore/releases/download/v1.9.80/bbr-1.9.80-darwin-amd64"
      sha256 "ae377bbeaf0ed35461004038b8126faf7787928ee591c24f3a75c41ecd810138"
    end
  elsif OS.linux?
    url "https://github.com/cloudfoundry/bosh-backup-and-restore/releases/download/v1.9.80/bbr-1.9.80-linux-amd64"
    sha256 "2d7c6260d43867bc945052c42701986e172ca0129b1b414f616432de66b90f6c"
  end

  def install
    binary_name = "bbr"

    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "bbr-1.9.80-darwin-arm64" => binary_name
      else
        bin.install "bbr-1.9.80-darwin-amd64" => binary_name
      end
    elsif OS.linux?
      bin.install "bbr-1.9.80-linux-amd64" => binary_name
    end
  end

  test do
    system "#{bin}/bbr", "version"
  end
end
