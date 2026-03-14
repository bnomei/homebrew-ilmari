class Ilmari < Formula
  desc "Minimal tmux popup radar for multi-agent tmux workspaces"
  homepage "https://github.com/bnomei/ilmari"
  version "0.1.1"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "ed9b2d39c2315af9c198588d3539d0281b5ef5ea3d76736b62322555d6d61a60",
    x86_64_apple_darwin: "397ba88b230b5492a7d9fcc581b7fc5d1b9d3a8bfc02e207f160b6fe08696322",
    aarch64_unknown_linux_musl: "25492e9a6774b2d9004241ca66ecde08536e407770c5ce767a214711d16d5bcf",
    x86_64_unknown_linux_musl: "67844f522fae41f4f075f90279505b909c48c4a70fb3201cd041967c461640da",
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
