class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.1.5"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "872272563cebefbb31390d92c0c9e13fd3c6d8161f5c226d8e26ddb136f4d159",
    x86_64_apple_darwin: "a6b7c187b44179edcbea34a6fc1e1c6357fdf276684fde1ee8783a24ec3db25c",
    aarch64_unknown_linux_musl: "647e91a6832498af9baff8e60c9da3b297635fde7233ba1162fab262d791d96a",
    x86_64_unknown_linux_musl: "719a9cd2a9a169fd4d29ade140e542b0f6ae7e42de7107c01e917e9d28b404c6",
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
