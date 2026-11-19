class Bypass < Formula
  desc "Terminal secrets manager for KeePass vaults"
  homepage "https://github.com/yaroshevych/bypass"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.4/bypass_0.3.4_darwin_arm64.tar.gz"
      sha256 "0f8e8adb923ee7375c981e2b4f4a5b01faa0bbf968bff17ef4b40bf0233f3381"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.4/bypass_0.3.4_darwin_amd64.tar.gz"
      sha256 "dfed43fa6365841cc5aa6eaabbba9c0e4fcec6f9beece3da20ea28fa670c5042"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.4/bypass_0.3.4_linux_arm64.tar.gz"
      sha256 "f8b0841f046752660df2dacc0e80558636ec41e32fee8809ea722e39ed438776"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.4/bypass_0.3.4_linux_amd64.tar.gz"
      sha256 "29129f339bf3831a2ff8c9fa8f78870368b1714259e0ed63593bc0c8e31fe190"
    end
  end

  def install
    bin.install "bypass"
  end

  test do
    assert_equal "bypass #{version}", shell_output("#{bin}/bypass --version").strip
  end
end
