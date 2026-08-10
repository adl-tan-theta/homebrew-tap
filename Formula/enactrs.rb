# REFERENCE FORMULA — updated automatically by ci/update-homebrew-tap.sh
# Canonical tap: https://github.com/adl-tan-theta/homebrew-tap
#
# Install:
#   brew tap adl-tan-theta/tap
#   brew install enactrs
#
# Upgrade:
#   brew upgrade enactrs

class Enactrs < Formula
  desc "Enactrs multi-provider AI agent CLI"
  homepage "https://dev.azure.com/amsterdamdatalabs/Enact/_git/enact-agent-rs"
  version "0.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.3/enactrs-0.0.3-darwin-arm64.tar.gz"
      sha256 "REPLACE_ON_RELEASE"
    end
    on_intel do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.3/enactrs-0.0.3-darwin-x64.tar.gz"
      sha256 "REPLACE_ON_RELEASE"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.3/enactrs-0.0.3-linux-x64.tar.gz"
      sha256 "REPLACE_ON_RELEASE"
    end
  end

  def install
    bin.install "enact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enact --version")
  end
end
