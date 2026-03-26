# This formula is auto-updated by the release-cli GitHub Actions workflow.
# The authoritative copy lives in the homebrew-veronese tap repo:
#   https://github.com/adusingi/homebrew-veronese
#
# Install via:
#   brew install adusingi/veronese/veronese

class Veronese < Formula
  desc "CLI for the Veronese audio-to-text platform"
  homepage "https://veronesebook.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adusingi/veronese/releases/download/cli/v0.1.0/veronese_0.1.0_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/adusingi/veronese/releases/download/cli/v0.1.0/veronese_0.1.0_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adusingi/veronese/releases/download/cli/v0.1.0/veronese_0.1.0_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/adusingi/veronese/releases/download/cli/v0.1.0/veronese_0.1.0_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "veronese"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veronese version")
  end
end
