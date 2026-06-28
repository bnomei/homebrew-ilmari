class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.7.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "7dab3537e22c43e21cc2a8b0e21ea2e12411dafee558f157dac06775fc261b56",
    x86_64_apple_darwin: "7d583d1abb54d39faf6cd987c358cc244f99ffe8d6f187e9b2532193532b675e",
    aarch64_unknown_linux_musl: "44e9aacf1c290d674b99539015f0f7184b5d01ec3642baa96e3c1ceb7515f22b",
    x86_64_unknown_linux_musl: "63e0797836e6ed673fb6b2d6bfdf145045a972a853f403e3123ad4ea5d0227bb",
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
