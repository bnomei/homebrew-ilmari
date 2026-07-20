class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.9.4"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "255541314a8ed44bf7abf334db13a5130c106728c89ea2081e486940795d8369",
    x86_64_apple_darwin: "ca4619d5470a119c6ae6ac6be951e195d6211b5796416fe7fd3767457a16d9e6",
    aarch64_unknown_linux_musl: "c7c88a68e825b8cccf24589e20f0ad199478a48a3673a4d71f4a91c49799c070",
    x86_64_unknown_linux_musl: "b4f8ba904001e1adb1359e02d7c94a69dbf33d5763c6704a8b62d9481e0816d3",
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
