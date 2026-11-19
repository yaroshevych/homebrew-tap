class Bypass < Formula
  desc "Terminal secrets manager for KeePass vaults"
  homepage "https://github.com/yaroshevych/bypass"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.4/bypass_0.3.4_darwin_arm64.tar.gz"
      sha256 "3d7a1f7e3dbb0d25dc8ff1218ee156fe1ce2d417379c0f734a5047526edb4a13"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.4/bypass_0.3.4_darwin_amd64.tar.gz"
      sha256 "d5423c49f9149c1d3024044f3cd5f000c0b491ac0f3e6bb5416d3576d0c80f26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.4/bypass_0.3.4_linux_arm64.tar.gz"
      sha256 "858dd72b3d796e249c3238ad0da5039a27a762f9c1b882f558306fe49b3006f0"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.3.4/bypass_0.3.4_linux_amd64.tar.gz"
      sha256 "4cbd956a501f520a0dad297fecad626e47089b419bd3fcb5f951398d86f51615"
    end
  end

  def install
    bin.install "bypass"
  end

  test do
    assert_equal "bypass #{version}", shell_output("#{bin}/bypass --version").strip
  end
end
