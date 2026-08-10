class EnactrsCanary < Formula
  desc "Enactrs multi-provider AI agent CLI"
  homepage "https://dev.azure.com/amsterdamdatalabs/Enact/_git/enact-agent-rs"
  version "0.0.3-canary.3353"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.3-canary.3353/enactrs-0.0.3-canary.3353-darwin-arm64.tar.gz"
      sha256 "66b23b3bab7558b74e9df91c402fc8975d8ddd6ee280b389602e486c0c466396"
    end
    on_intel do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.3-canary.3353/enactrs-0.0.3-canary.3353-darwin-x64.tar.gz"
      sha256 "a6a4a60b358c518af25c3594861e91178dddc2dac4f26aa6ffd27a557b8235f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adl-tan-theta/enact-releases/releases/download/v0.0.3-canary.3353/enactrs-0.0.3-canary.3353-linux-x64.tar.gz"
      sha256 "a019eaa915ebe24230e70677e4edfbe41e733ed87608342314e7ae6ccbd96e1e"
    end
  end

  def install
    bin.install "enact"
  end

  test do
    assert_match(/0\\.0\\./, shell_output("#{bin}/enact --version"))
  end
end