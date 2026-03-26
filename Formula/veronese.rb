class Veronese < Formula
  desc "CLI for the Veronese audio-to-text platform"
  homepage "https://veronesebook.com"
  version "v0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adusingi/veronese-cli/releases/download/v0.3.0/veronese_v0.3.0_darwin_arm64.tar.gz"
      sha256 "048c974f16078d74ccef420dce0c44bac07eaccdae537d7fe3ff016c2a7f09d0"
    end
    on_intel do
      url "https://github.com/adusingi/veronese-cli/releases/download/v0.3.0/veronese_v0.3.0_darwin_amd64.tar.gz"
      sha256 "9b18d0035eb7670ef7e36940f43c4b51e14e894d75b4866bb04e358b3011ea44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adusingi/veronese-cli/releases/download/v0.3.0/veronese_v0.3.0_linux_arm64.tar.gz"
      sha256 "85fde860f449eddb4f2f7f1d40936cc10399907956b78b324f4b620051233397"
    end
    on_intel do
      url "https://github.com/adusingi/veronese-cli/releases/download/v0.3.0/veronese_v0.3.0_linux_amd64.tar.gz"
      sha256 "cbfbd2c2b6357bdd0955dddbcf3514be05974c03d4b1b1b274076d30e95774d3"
    end
  end

  def install
    bin.install "veronese"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veronese version")
  end
end
