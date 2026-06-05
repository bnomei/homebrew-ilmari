class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.2.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "42dcdc0d3cdb6745bcfeb0b5dae21bc82e5f966347446c86091077ac91402fa7",
    x86_64_apple_darwin: "6ad84ae9d5e0c9f66943639bb163dff2d4c224f1b0fba082d1862658ac1e223f",
    aarch64_unknown_linux_musl: "f5377ef30c9bef11177fea365c637261b54ee42d1fb10acc9131b0b855b8ed0a",
    x86_64_unknown_linux_musl: "e39a8a280c4c8050c93a48393d2b2c9895580255a04223be059b328d6f9c704f",
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
