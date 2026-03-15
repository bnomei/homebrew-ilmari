class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.1.4"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "6acde36429ad6a85a6c31f54dc61975d2e93e15795acb4a744fe723296a4e9bf",
    x86_64_apple_darwin: "fabb7084ffcba3de62d600f772b23ef6d11e111f1ca20d8d0acfcc6fee9f3140",
    aarch64_unknown_linux_musl: "1f9fdf66a0ad5e3912793fdfdff7b299ce6c2c8da22036b56c1a2fc1112d1cf3",
    x86_64_unknown_linux_musl: "3d39d8a3b15e342bb9f563ffd20a55040534c5b8d21bbe26f31e5c86289b955d",
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
