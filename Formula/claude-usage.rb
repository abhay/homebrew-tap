class ClaudeUsage < Formula
  desc "CLI for tracking Claude usage windows: status bar, token tracking, defer logic"
  homepage "https://github.com/abhay/claude-usage-rs"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.3/claude-usage-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "e094a6a2cf03fd948970f6927194f608cee9d5f43b0c87305e9ff19725211d9a"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.3/claude-usage-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "4b3a909c3a04dbbe5d16b391e4cf0cb5290035d8a5ba78683f5cee48a1110d63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.3/claude-usage-v0.1.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "21e707f61439a207c950543fdd77bf38374d6357a95bf9f6e3b8147f2176dbfa"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.3/claude-usage-v0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1081ab97203d36296c1a046d16ce3f3621afead54a7d6e7f797572c49cb2dca2"
    end
  end

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage --version")
  end
end
