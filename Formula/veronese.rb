class Veronese < Formula
  desc "CLI for the Veronese audio-to-text platform"
  homepage "https://veronesebook.com"
  version "v0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adusingi/veronese/releases/download/cli/v0.1.0/veronese_v0.1.0_darwin_arm64.tar.gz"
      sha256 "24563d24d3c9c445040f6891a87375785a39142e12fa0cb6570d7fbb471f4c53"
    end
    on_intel do
      url "https://github.com/adusingi/veronese/releases/download/cli/v0.1.0/veronese_v0.1.0_darwin_amd64.tar.gz"
      sha256 "3eb478d93fa62077e684d5d2a02bd12218fded38262451445c5481762eef473d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adusingi/veronese/releases/download/cli/v0.1.0/veronese_v0.1.0_linux_arm64.tar.gz"
      sha256 "a607eaa9b0d3dc9f57055772400996332f4493168af460d3f57ba738434f7092"
    end
    on_intel do
      url "https://github.com/adusingi/veronese/releases/download/cli/v0.1.0/veronese_v0.1.0_linux_amd64.tar.gz"
      sha256 "62b8bffcb8893677fb0bbc63db02be46ce3a56599918ec12913773a626f1fa5c"
    end
  end

  def install
    bin.install "veronese"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veronese version")
  end
end
