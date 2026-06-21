class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.5.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "f0010cab02be82ef9df3da58d806c981e3be5e3ddef9b027a8a7901d564099ec",
    x86_64_apple_darwin: "4f0a8b2d11f5d4b78593fe5e415e03490b3b2b6f506a99ae9019d84556c6d0e6",
    aarch64_unknown_linux_musl: "37e710f00b44881a56e923961c91d69d0f1488468dc7eb7ef2d0d4f5bbdd44c9",
    x86_64_unknown_linux_musl: "32757a203b073daa580fdc8dbe4f845de78d36e4c7c856e4ee3b27bc47636bfe",
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
