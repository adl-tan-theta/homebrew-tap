class EnactrsCanary < Formula
  desc "Enactrs multi-provider AI agent CLI"
  homepage "https://dev.azure.com/amsterdamdatalabs/Enact/_git/enact-agent-rs"
  version "0.0.4-canary.3402"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.4-canary.3402/enactrs-0.0.4-canary.3402-darwin-arm64.tar.gz"
      sha256 "fe08f3380c75f16748f0319a4358f41523cc0f05de67aa85898e16badd332d8e"
    end
    on_intel do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.4-canary.3402/enactrs-0.0.4-canary.3402-darwin-x64.tar.gz"
      sha256 "fab9eded3bc5e338d5242de4b8c815036f7db00481c81c5063fba0fa5d99a13a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.4-canary.3402/enactrs-0.0.4-canary.3402-linux-x64.tar.gz"
      sha256 "fb172680642d6a162bc388bb9daba012b6af9c6669cfecaf356f878036a6107a"
    end
  end

  def install
    bin.install "enact"
  end

  test do
    assert_match(/0\\.0\\./, shell_output("#{bin}/enact --version"))
  end
end