class Enactrs < Formula
  desc "Enactrs multi-provider AI agent CLI"
  homepage "https://dev.azure.com/amsterdamdatalabs/Enact/_git/enact-agent-rs"
  version "0.0.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.4/enactrs-0.0.4-darwin-arm64.tar.gz"
      sha256 "11361839119e45bf9d7d8e6835db5ff14428a74216e2f527853ac60aa64d5184"
    end
    on_intel do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.4/enactrs-0.0.4-darwin-x64.tar.gz"
      sha256 "db8608869af80361a620e5831158cf6f82479dd644e2432b0f0ae437713c5a3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.4/enactrs-0.0.4-linux-x64.tar.gz"
      sha256 "f78ec4b8f0c23c1ecfab7eb56fdecbf6be45133eae74f230657669445bd6a7ac"
    end
  end

  def install
    bin.install "enact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enact --version")
  end
end