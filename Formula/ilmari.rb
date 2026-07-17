class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.9.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "8ed580ca4fad98db06a701bd587c8597146f2aeef808c193153da7465af04b13",
    x86_64_apple_darwin: "2154723e0a99816f5812fc38d4438817db16f05174e66907b150a87c0a32664f",
    aarch64_unknown_linux_musl: "a90fe8d07cbc2f0bd42bbb07a66eefa7f2d61c248819874bdbba9f8c6b7261b0",
    x86_64_unknown_linux_musl: "2dcfce494e4a483ca288978836de3a71a6dce664e17966c99b680d32025aeecf",
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
