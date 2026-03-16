class ClaudeUsage < Formula
  desc "CLI for tracking Claude usage windows: status bar, token tracking, defer logic"
  homepage "https://github.com/abhay/claude-usage-rs"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.2/claude-usage-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "a44316e8a05fbefda60f1af00c39db22b86df83ed0e027f566046caa9fc62f66"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.2/claude-usage-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "e221fa94b9ad649e2d2bcd35477d8ee6359b781369c1c8f2d2873ea04d60908b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.2/claude-usage-v0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1c343616288c3f11fbeb2ff841672774c30522320509f5d22b52fbb0adbe12fc"
    end

    on_intel do
      url "https://github.com/abhay/claude-usage-rs/releases/download/v0.1.2/claude-usage-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b2560ab0d4789bc1041eabae7844818f6fcfabea2b087580274cd069574844d1"
    end
  end

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage --version")
  end
end
