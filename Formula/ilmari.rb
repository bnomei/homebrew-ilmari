class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.9.3"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "8dea44796f0d937cd97aad4099e5345e16d7f779b61260ef4832e678579dd353",
    x86_64_apple_darwin: "cf478f8541253118deb11f5836c2e016a4b65e45297301f215e46d2f87c98681",
    aarch64_unknown_linux_musl: "a6b31e45c117f1b798ec6456675fb7b54e9323055b761a183dc444e1b7d91fe9",
    x86_64_unknown_linux_musl: "7720a0afbe289b2572a21d87b7c6bb50ffca82f7d57a1cc201ffb2b9437d1e3b",
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
