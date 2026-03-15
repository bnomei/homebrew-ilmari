class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.1.2"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "5319ce3bb273fd5c9b84463ff0019ac61e2f8f9ff42d1fc58df896d4e9b3dafb",
    x86_64_apple_darwin: "9ada196b287ca765eb3fe8c050ab16c6cf9c4a10bd8d0253770fd805e724bb70",
    aarch64_unknown_linux_musl: "b5c2175f6cc0e0d7fc9a0a6f583847a76caf36682f59023d5556d711349203a9",
    x86_64_unknown_linux_musl: "616ffb5afcb3abe39fd673639c9e678d8f0e2487cefec0a36e5ded354548d2b8",
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
