class Af < Formula
  desc "The AgentForce Command-line interface for AgentForce Service and Tools"
  homepage "https://github.com/agentforcezone/agentforce"
  version "0.0.7"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/agentforcezone/agentforce/releases/download/v0.0.7-af-cli/agentforce-cli-macos-x64.zip"
    sha256 "8be9aa957222c6e86c45a7dd85d6a19ff5e4191cef1bd548a2637fbb99612544"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/agentforcezone/agentforce/releases/download/v0.0.7-af-cli/agentforce-cli-macos-arm64.zip"
    sha256 "06efe473fcdf7146a0b83a62b2e5f4f6f87cf8c3630e75e9bc7b1af800901105"
  end

  def install
    bin.install "af"
  end

  test do
    system "#{bin}/af", "--version"
  end
end
