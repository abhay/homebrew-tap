class ClaudeUsage < Formula
  desc "CLI for tracking Claude usage windows: status bar, token tracking, defer logic"
  homepage "https://github.com/abhay/claude-usage-rs"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.1/claude-usage-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "11b9534a14d9ecc6cf613630e93e997bab451fcb01dec70f28e02d15be5f9f24"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.1/claude-usage-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "6dc7b8e73337e844fdc05f88c63fc56cc48fc35c59e79bc0597181b08e70b969"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.1/claude-usage-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6578a889cccabd1db464db17d139b622c6cf8a185f798d5ffe300eef004d84d0"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.1/claude-usage-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "60c07abcb711de4daba8e949f9cecbdc798715c6a35341d2253a176fb2ff3bf1"
    end
  end

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage --version")
  end
end
