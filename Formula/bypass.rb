class Bypass < Formula
  desc "Terminal secrets manager for KeePass vaults"
  homepage "https://github.com/yaroshevych/bypass"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.4.0/bypass_0.4.0_darwin_arm64.tar.gz"
      sha256 "ecae4b92e4730becbfe8db2f05ce75def69b2538f38c929fbf17a24bd9dd929e"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.4.0/bypass_0.4.0_darwin_amd64.tar.gz"
      sha256 "42ad5260d1c76a7fd1863b44748eebf6e719d2d246880948d085cb25f37c6560"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.4.0/bypass_0.4.0_linux_arm64.tar.gz"
      sha256 "813a625e53bad1bd2cb354960a9da7794d3d1e2b9fb2641a4c45f7d01a1261d4"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.4.0/bypass_0.4.0_linux_amd64.tar.gz"
      sha256 "65c2962cf59ee84615d97d85d2f7ecf852acc29fa1054a53d2a93c29033b6d79"
    end
  end

  def install
    bin.install "bypass"
  end

  test do
    assert_equal "bypass #{version}", shell_output("#{bin}/bypass --version").strip
  end
end
