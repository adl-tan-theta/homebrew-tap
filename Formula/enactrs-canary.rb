class EnactrsCanary < Formula
  desc "Enactrs multi-provider AI agent CLI"
  homepage "https://dev.azure.com/amsterdamdatalabs/Enact/_git/enact-agent-rs"
  version "0.0.3-canary.3355"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.3-canary.3355/enactrs-0.0.3-canary.3355-darwin-arm64.tar.gz"
      sha256 "e6ee0109afa18f227066eb910718374305acd1f5b107bdbde8ce449f35b1fcd6"
    end
    on_intel do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.3-canary.3355/enactrs-0.0.3-canary.3355-darwin-x64.tar.gz"
      sha256 "2cda7983e9de21377f8ddc83c9114577dd552df4314eae7794979728b9cd36c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.3-canary.3355/enactrs-0.0.3-canary.3355-linux-x64.tar.gz"
      sha256 "6fa1b1eef9ed584383de7fa9aa655c0bcf9538bd15a79ac6d81ba0fc692d79c3"
    end
  end

  def install
    bin.install "enact"
  end

  test do
    assert_match(/0\\.0\\./, shell_output("#{bin}/enact --version"))
  end
end