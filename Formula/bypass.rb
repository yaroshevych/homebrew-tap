class Bypass < Formula
  desc "Terminal secrets manager for KeePass vaults"
  homepage "https://github.com/yaroshevych/bypass"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.2/bypass_0.3.2_darwin_arm64.tar.gz"
      sha256 "5e78585b6f9106e431cc0eb3c16c138aa341a89e152d9567d8d8d0245ff584d3"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.2/bypass_0.3.2_darwin_amd64.tar.gz"
      sha256 "743525b508a5247a24b07b9e809900cfefaa5b81fa1240accb6f4024c6a9c596"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.2/bypass_0.3.2_linux_arm64.tar.gz"
      sha256 "b12ec471ebefef0c6cf55b1ebfedba174e1e132045ca7dedc417839dbf3fecb8"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.2/bypass_0.3.2_linux_amd64.tar.gz"
      sha256 "04e4e3ef84b1b9c038fe8b9aaf91b5cd4b0b0e14147baf9d26af0ea635c28c3e"
    end
  end

  def install
    bin.install "bypass"
  end

  test do
    assert_equal "bypass #{version}", shell_output("#{bin}/bypass --version").strip
  end
end
