class Af < Formula
  desc "The AgentForce Command-line interface for AgentForce Service and Tools"
  homepage "https://github.com/agentforcezone/agentforce"
  version "0.0.8"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/agentforcezone/agentforce/releases/download/v0.0.8-af-cli/agentforce-cli-macos-x64.zip"
    sha256 "95d593cbce3bfc52f29da6dde3a477c0f1f37f36449ec32a872fc6f39d12ac86"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/agentforcezone/agentforce/releases/download/v0.0.8-af-cli/agentforce-cli-macos-arm64.zip"
    sha256 "7f013bbd0812796a29972796c40130aa67a6f9ff1fbe42520a991c1bd2731f17"
  end

  def install
    bin.install "af"
  end

  test do
    system "#{bin}/af", "--version"
  end
end
