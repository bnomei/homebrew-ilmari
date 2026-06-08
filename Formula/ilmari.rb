class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.2.3"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "fb44b484f07aa0b31622a628d58b131d23220783c02ebe12062fe7e14455edcb",
    x86_64_apple_darwin: "669ab120f6e3013fc8683e649017132d1b2f53c24720eabde496e96efea51a58",
    aarch64_unknown_linux_musl: "72144597bf10a5b577b696edc6131e48b8f46117db488e9c1fa46f65459ee444",
    x86_64_unknown_linux_musl: "b4aec9238d5b3d1ed9c069c03a045d41092be91826e067ef1440479885cd930b",
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
