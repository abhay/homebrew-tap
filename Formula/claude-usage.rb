class ClaudeUsage < Formula
  desc "CLI for tracking Claude usage windows: status bar, token tracking, defer logic"
  homepage "https://github.com/abhay/claude-usage-rs"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.6/claude-usage-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "62ed062ee6621758b9652b4600fdd96334dd9d0dc9deb0be3c278c1a4b35f52e"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.6/claude-usage-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "b5ab04a393a56bb26cd8f6ee0fe50d3f96870abc335dbb1d24d6cf0ad5ec2b30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.6/claude-usage-v0.1.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5a02a28d43520518dc79761eb6bc41f125e7cef47c2be6a0a4b397a570ba6a41"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.6/claude-usage-v0.1.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6ce0522f1e4709a0161dbcee046c1f12e00d3d38b7906dbc8b766cf26cd9a7ca"
    end
  end

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage --version")
  end
end
