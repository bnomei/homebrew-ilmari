class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.2.2"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "2a805de0d206130fc5b1381c585b50cfb52eba025aa536b997aa4d52e403de96",
    x86_64_apple_darwin: "a8550064b6dd4259ff66b479024b2af288a74f1f387ab1f007a1ddbee7ec3230",
    aarch64_unknown_linux_musl: "ce9e85ad6115885f3077d18cdd969f2f1958888db20c5e0fde2d40544721d918",
    x86_64_unknown_linux_musl: "33f75b59b31d051bd6582b617e52a3eeeadbe23d72b6751ac88dff620997a488",
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
