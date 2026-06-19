class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.4.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "4f70800317fb714c5d2a9f956f44cb6c4802f0034486d362a43a8e369cf35524",
    x86_64_apple_darwin: "65b9ef7ead80e450a3d7fdc3ede80738f2ebe2625eca0411b69c6c850372ddec",
    aarch64_unknown_linux_musl: "1eb25665b4de6a19471b240ddf78cd104796c88d72afd32b54a34c1b3218651f",
    x86_64_unknown_linux_musl: "6aee8fe3052574bd24a592da5a457011498e43c816ddb5344c27d4ac96f463a0",
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
