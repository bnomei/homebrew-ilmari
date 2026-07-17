class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.9.2"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "3d1b5649bc23b70d0e9710221597cfe67019c689ef466200d9ea9220b29ec83d",
    x86_64_apple_darwin: "9f797b2c72abcb26398d2246bb38f5d6ddafada4df916bf36ad340bd42bc07ab",
    aarch64_unknown_linux_musl: "cc19da1b799b63eb9c43331cca4e32102497f66876c702cbf57e4d76ade12bd4",
    x86_64_unknown_linux_musl: "920797c343c313a78f1de6184f9d9bc8b0cb3fc4d6fad41caf7f68f25f6814f6",
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
