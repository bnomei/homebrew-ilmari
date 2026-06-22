class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.6.1"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "ec090fe114c6b1a656b85fb76e158248b1f8e070672815a814b9ebd1ccd65828",
    x86_64_apple_darwin: "0feb5ab7c77458bc391c9111f91fb2befd346736cf3a2deff77905b6460a7a1d",
    aarch64_unknown_linux_musl: "821c9791313fce73a43a32f3d2623e5da765b2df9e7d292b83c2f70124bbcc7a",
    x86_64_unknown_linux_musl: "da7e86d5e93b8db7231d63a151269581d2af4d90882bfd3448ef31639a032ecf",
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
