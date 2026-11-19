class Bypass < Formula
  desc "Terminal secrets manager for KeePass vaults"
  homepage "https://github.com/yaroshevych/bypass"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.5/bypass_0.3.5_darwin_arm64.tar.gz"
      sha256 "9fa02f73c646725e58d299738bc3fdeb40bba8d0996977f0f90e7a7c57114f69"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.5/bypass_0.3.5_darwin_amd64.tar.gz"
      sha256 "666584b77b8c535ca69f35213c1a5edb13bb03a0d0df6b76d6c55c55e960021e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.5/bypass_0.3.5_linux_arm64.tar.gz"
      sha256 "16b2531b2fd23bc128781c76b42e38cb38fa068dcae99d35e4ae0976f3659cfe"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.5/bypass_0.3.5_linux_amd64.tar.gz"
      sha256 "54e72fa2b67680c7a343dc47d8a0d2448506cab676381e00cfe2587dd79ab27a"
    end
  end

  def install
    bin.install "bypass"
  end

  test do
    assert_equal "bypass #{version}", shell_output("#{bin}/bypass --version").strip
  end
end
