class Veronese < Formula
  desc "CLI for the Veronese audio-to-text platform"
  homepage "https://veronesebook.com"
  version "v0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adusingi/veronese-cli/releases/download/v0.2.0/veronese_v0.2.0_darwin_arm64.tar.gz"
      sha256 "9b7089f43940db8f0494935d3588394535198056985386f6cef0b5e16bbc69cc"
    end
    on_intel do
      url "https://github.com/adusingi/veronese-cli/releases/download/v0.2.0/veronese_v0.2.0_darwin_amd64.tar.gz"
      sha256 "35c6aabb7902dd5a65d5b03cb9f10566426ad0f9d7a5999a349c2df0181e7310"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adusingi/veronese-cli/releases/download/v0.2.0/veronese_v0.2.0_linux_arm64.tar.gz"
      sha256 "2aaff65f16792e57380d727f2c3686951b0404bdb25dd4bfe8eb48c8122df40e"
    end
    on_intel do
      url "https://github.com/adusingi/veronese-cli/releases/download/v0.2.0/veronese_v0.2.0_linux_amd64.tar.gz"
      sha256 "5bb1a389d07f9485ea2cdfa915e33b4e0ecfc74572b4a52a92f3819f76379edc"
    end
  end

  def install
    bin.install "veronese"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veronese version")
  end
end
