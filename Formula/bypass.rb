class Bypass < Formula
  desc "Terminal secrets manager for KeePass vaults"
  homepage "https://github.com/yaroshevych/bypass"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.4.0/bypass_0.4.0_darwin_arm64.tar.gz"
      sha256 "1cf35084c97c432ad6af2d81308355083b9948a0f13fc82e2c038f2f6bac63ae"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.4.0/bypass_0.4.0_darwin_amd64.tar.gz"
      sha256 "5f2fa6640b079710f836cec4f5aaa56b519fe7f7a19715a531328ac73c65ab55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.4.0/bypass_0.4.0_linux_arm64.tar.gz"
      sha256 "94932095bd4d60544aa1878cec4453d90e00cd027c7a42995f707705ac411cac"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.4.0/bypass_0.4.0_linux_amd64.tar.gz"
      sha256 "ee17e5a0ca0a755bdc48d4d18f42bb27a55a1c5916b63f532a0431e73b74426b"
    end
  end

  def install
    bin.install "bypass"
  end

  test do
    assert_equal "bypass #{version}", shell_output("#{bin}/bypass --version").strip
  end
end
