class EnactrsCanary < Formula
  desc "Enactrs multi-provider AI agent CLI"
  homepage "https://dev.azure.com/amsterdamdatalabs/Enact/_git/enact-agent-rs"
  version "0.0.4-canary.3406"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.4-canary.3406/enactrs-0.0.4-canary.3406-darwin-arm64.tar.gz"
      sha256 "1412130b4b44453e4891df7e62635e21e7bc308f646879c3b52cb23fe36d6732"
    end
    on_intel do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.4-canary.3406/enactrs-0.0.4-canary.3406-darwin-x64.tar.gz"
      sha256 "0d615decd84ddcba5ecd5a7856d4b25ab6b4991a987f81459d1dbb8385ee8882"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.4-canary.3406/enactrs-0.0.4-canary.3406-linux-x64.tar.gz"
      sha256 "839053253ff4d33943dd7fa2206b73fd1fa4fcb6d2437ab129830f99b0120963"
    end
  end

  def install
    bin.install "enact"
  end

  test do
    assert_match(/0\\.0\\./, shell_output("#{bin}/enact --version"))
  end
end