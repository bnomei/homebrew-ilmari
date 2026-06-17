class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.3.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "41e4b37c4a55009ec0b0d0b04e55ddc71f28f6978de4b7513c8ce141498524c6",
    x86_64_apple_darwin: "6c2dabb56f4c523ed0f4bab03adc4b6305ef32014368cc8879bf392d93ab4ebf",
    aarch64_unknown_linux_musl: "c0d9f56a31cd73342b85d24e6c148849802544f6b55b2829dc837f84987576a6",
    x86_64_unknown_linux_musl: "2d2eecde7f2f3bd0017536b657c3e41717fc9ecaffe52af2ce83c2d8c3ffdfee",
  }

  on_macos do
    on_arm do
      url "https://github.com/bnomei/ilmari/releases/download/v#{version}/ilmari-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 checksums[:aarch64_apple_darwin]
    end
    on_intel do
      url "https://github.com/bnomei/ilmari/releases/download/v#{version}/ilmari-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 checksums[:x86_64_apple_darwin]
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bnomei/ilmari/releases/download/v#{version}/ilmari-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 checksums[:aarch64_unknown_linux_musl]
    end
    on_intel do
      url "https://github.com/bnomei/ilmari/releases/download/v#{version}/ilmari-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 checksums[:x86_64_unknown_linux_musl]
    end
  end

  def install
    bin.install "ilmari"
  end

  test do
    assert_match "ilmari", shell_output("#{bin}/ilmari --help")
  end
end
