class Bypass < Formula
  desc "Terminal secrets manager for KeePass vaults"
  homepage "https://github.com/yaroshevych/bypass"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.4.0/bypass_0.4.0_darwin_arm64.tar.gz"
      sha256 "34339a0c47c7741bcb263cfafdce0576199e05d04372fe519971783e4faf915e"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.4.0/bypass_0.4.0_darwin_amd64.tar.gz"
      sha256 "1177f24f881683a34bb629fd4d39a44d13c4e65e2674ec0314931ffc3737f3ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.4.0/bypass_0.4.0_linux_arm64.tar.gz"
      sha256 "354e06599cbdfa75e774591dabc4942f5a4b64d7a4944a119538f920eb812662"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.4.0/bypass_0.4.0_linux_amd64.tar.gz"
      sha256 "251b8d2a5f4fc7ad3a0aafdfc907576c6cf82eaac0bb51e952f56c7a6f73fdd3"
    end
  end

  def install
    bin.install "bypass"
  end

  test do
    assert_equal "bypass #{version}", shell_output("#{bin}/bypass --version").strip
  end
end
