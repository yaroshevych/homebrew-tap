class Bypass < Formula
  desc "Terminal secrets manager for KeePass vaults"
  homepage "https://github.com/yaroshevych/bypass"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.1/bypass_0.3.1_darwin_arm64.tar.gz"
      sha256 "93bf46dd49943e1c1f5f7648c037d8b39e5f891233787b914f85a33b82c2f640"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.1/bypass_0.3.1_darwin_amd64.tar.gz"
      sha256 "1f4a3de9925ab2c6945b3194d24338328427050cfa4b23460812c2ba889da5e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.1/bypass_0.3.1_linux_arm64.tar.gz"
      sha256 "dc870810ec26ae034570fbc042cefd26c1ea99f0331e052b28bcf33fc753854c"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.1/bypass_0.3.1_linux_amd64.tar.gz"
      sha256 "fe60a516e9caefc6a26daa7e5e6857e983823c41c95410784d8f4e2eede8d2e7"
    end
  end

  def install
    bin.install "bypass"
  end

  test do
    assert_equal "bypass #{version}", shell_output("#{bin}/bypass --version").strip
  end
end
