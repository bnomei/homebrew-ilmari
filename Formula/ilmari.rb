class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.9.6"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "f37440c23182a7e2bf46c0aed625c046723795f93979d88eeece6a4920e3113b",
    x86_64_apple_darwin: "822cf3111f53e6d2c7c517f39795b1a58b1624d85cefad41ec68fac10609d3a3",
    aarch64_unknown_linux_musl: "2330815648da1fa3785321d5fec84231ec333906cce3ce7d6aae5730c6f0d0dc",
    x86_64_unknown_linux_musl: "bc48d176ecb34a6a0bf37f40b11b466f6c7373fbbb68aae6bd2ca1d94cd1def1",
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
