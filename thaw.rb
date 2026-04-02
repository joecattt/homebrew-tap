class Thaw < Formula
  desc "Freeze, restore, and recap your terminal sessions"
  homepage "https://github.com/joecattt/thaw"
  version "3.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joecattt/thaw/releases/download/v3.3.1/thaw_3.3.1_darwin_arm64.tar.gz"
      sha256 "a18ac1fe14acb7c2188fc0e2a5dbce85f5a947b2a90b65d493d2011ee7cd1a28"
    else
      url "https://github.com/joecattt/thaw/releases/download/v3.3.1/thaw_3.3.1_darwin_amd64.tar.gz"
      sha256 "a31d94c44dd0c3e0eee8929282e09d31a133e8a4ae10a7a2d8e60347137c7175"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/joecattt/thaw/releases/download/v3.3.1/thaw_3.3.1_linux_arm64.tar.gz"
      sha256 "2c7ad0ad089a4cc9a0681750da05e069b2702a9bdaa4a0153cb30687e24decd9"
    else
      url "https://github.com/joecattt/thaw/releases/download/v3.3.1/thaw_3.3.1_linux_amd64.tar.gz"
      sha256 "86859e261577656460a4fe32badc911ca25d0d3c14588508f0493c6a988c1b84"
    end
  end

  def install
    bin.install "thaw"
  end

  test do
    system "#{bin}/thaw", "--version"
  end
end
