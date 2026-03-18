class ClaudeUsage < Formula
  desc "CLI for tracking Claude usage windows: status bar, token tracking, defer logic"
  homepage "https://github.com/abhay/claude-usage-rs"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.5/claude-usage-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "734bb18b8ec4c2d20af16a660f9dffce1f2057d6358cd27ba36be0b54cc071ed"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.5/claude-usage-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "72fc103d415659f58731605ef3a0c4035fe3869e23eb7d01ac1b35045f4c7276"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.5/claude-usage-v0.1.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e86bc241770ddb8c0131a166f0b05f1d98b0b63a84f7a9ca9b3cb55fc1338bb"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.5/claude-usage-v0.1.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7abe9fe0988239b1782009e95f2991771d519468e8c9afbfa7f434ba43f74313"
    end
  end

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage --version")
  end
end
