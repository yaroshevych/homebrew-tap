class Bypass < Formula
  desc "Terminal secrets manager for KeePass vaults"
  homepage "https://github.com/yaroshevych/bypass"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.5.0/bypass_0.5.0_darwin_arm64.tar.gz"
      sha256 "a936dc0c8b191daf4466a49da20d119a9a20fd347d4b3ba96dc5a728472a5a38"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.5.0/bypass_0.5.0_darwin_amd64.tar.gz"
      sha256 "9d3e6722cd1ab0249896abf3ba4ffc9227a6818e725ceff6a930ec3dee5396f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.5.0/bypass_0.5.0_linux_arm64.tar.gz"
      sha256 "c8612d92a0a340482b127ae0c22d73354018766a1788ccaddaec596cb510322d"
    end
    on_intel do
      url "https://github.com/yaroshevych/bypass/releases/download/v0.5.0/bypass_0.5.0_linux_amd64.tar.gz"
      sha256 "303c3a7730f45c374be7d5ec3740fc4320bafc617dac0e5d88761905d6ae434a"
    end
  end

  def install
    bin.install "bypass"
  end

  test do
    assert_equal "bypass #{version}", shell_output("#{bin}/bypass --version").strip
  end
end
