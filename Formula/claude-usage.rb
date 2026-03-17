class ClaudeUsage < Formula
  desc "CLI for tracking Claude usage windows: status bar, token tracking, defer logic"
  homepage "https://github.com/abhay/claude-usage-rs"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.4/claude-usage-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "edc40b51eb2ddf6a4c81690a83c77dd3cf19a1cd58de29b880b4580d0126593f"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.4/claude-usage-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "d9d206c165484a9ae03b733b499cc8bc02c1b5ecfb9341398b1cf0871451cb44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.4/claude-usage-v0.1.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f2dc58f5e94dbad4ac70cb7c80cef475b6fc2bc7f4140507d49c3b251a875042"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.4/claude-usage-v0.1.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ed969256dce05c17e4e447eea80d97e702ad7d52cb32f4c79787980efd7f89a7"
    end
  end

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage --version")
  end
end
