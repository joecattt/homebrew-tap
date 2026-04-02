class Thaw < Formula
  desc "Freeze, restore, and recap your terminal sessions"
  homepage "https://github.com/joecattt/thaw"
  version "3.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joecattt/thaw/releases/download/v3.3.1/thaw_3.3.1_darwin_arm64.tar.gz"
    else
      url "https://github.com/joecattt/thaw/releases/download/v3.3.1/thaw_3.3.1_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/joecattt/thaw/releases/download/v3.3.1/thaw_3.3.1_linux_arm64.tar.gz"
    else
      url "https://github.com/joecattt/thaw/releases/download/v3.3.1/thaw_3.3.1_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "thaw"
  end

  test do
    system "#{bin}/thaw", "--version"
  end
end
