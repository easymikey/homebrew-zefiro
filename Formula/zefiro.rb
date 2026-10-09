class Zefiro < Formula
  desc "Terminal music player for local files and Navidrome"
  homepage "https://github.com/easymikey/zefiro"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/easymikey/zefiro/releases/download/v0.1.0/zefiro-aarch64-apple-darwin.tar.gz"
    sha256 "6539af962c74bae834ad54a6d372a89a1e6d52923b6fb24e9f4fe8b5f89b291d"
  end

  on_intel do
    url "https://github.com/easymikey/zefiro/releases/download/v0.1.0/zefiro-x86_64-apple-darwin.tar.gz"
    sha256 "c33402a82b06f1642c1d7367ca89072d1a184e18ca57e7a0bf0158d1490a0d8f"
  end

  def install
    bin.install "zefiro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zefiro --version")
  end
end
