class Bypass < Formula
  desc "Terminal secrets manager for KeePass vaults"
  homepage "https://github.com/yaroshevych/bypass"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.3/bypass_0.3.3_darwin_arm64.tar.gz"
      sha256 "7865720a505aa8a0a8a3a4577a72523f5563c40dd49a770fec0430b171a3bee4"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.3/bypass_0.3.3_darwin_amd64.tar.gz"
      sha256 "178a75424e266932a785205855c6b22a9c42f416e727ac413904e1764246464f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.3/bypass_0.3.3_linux_arm64.tar.gz"
      sha256 "c57111e4c41416fe71b3a76b5714b06747fa8259140c19e641d67e5e052e21a3"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.3/bypass_0.3.3_linux_amd64.tar.gz"
      sha256 "8a87af962311edf42cd0a247a799cd1195ed63b81460aa992ada4d014aa7dd2c"
    end
  end

  def install
    bin.install "bypass"
  end

  test do
    assert_equal "bypass #{version}", shell_output("#{bin}/bypass --version").strip
  end
end
