class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.6.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "51c1d04ad6e199bebb037ac1d472f317d9a8dcb0006a0c50004bf2a5298e4651",
    x86_64_apple_darwin: "80957fc502b8adde3cf568fc83b61bf0a78802c115c2c70c072b70d319d80dc3",
    aarch64_unknown_linux_musl: "1d5e6ff5998142ff6f86dc49fbc1ae82e70943fcb18dd6db42cec1793a156f88",
    x86_64_unknown_linux_musl: "dca96896f9fea456b1b84ba02bfc682cabe64dc82a2d6aaacb83bab23a78c1f6",
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
