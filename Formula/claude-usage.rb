class ClaudeUsage < Formula
  desc "CLI for tracking Claude usage windows: status bar, token tracking, defer logic"
  homepage "https://github.com/abhay/claude-usage-rs"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.2/claude-usage-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "28d8030dd12df2e57e1d2e4792995ebf400b8271f5a5206c46421b6d4f659699"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.2/claude-usage-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "5b61a607d75da84d857c0d0faa1f82a4f875d59fb69e067943922929e48747b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.2/claude-usage-v0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a0086594b31addc39084c97f6ad3c399d1a6e4b4422a637c8204688ab4431af"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.2/claude-usage-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "19bc9e90b19bb5a49d1bdacbd2c69e02c870ef3ec844b7fe849c204948fee64b"
    end
  end

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage --version")
  end
end
