class Af < Formula
  desc "The AgentForce Command-line interface for AgentForce Service and Tools"
  homepage "https://github.com/agentforcezone/agentforce"
  version "0.0.9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/agentforcezone/agentforce/releases/download/v0.0.9-af-cli/agentforce-cli-macos-x64.zip"
    sha256 "d30fad8b4140952035af602156663962dfb6423fd811f1aa9d082dcb163ce57d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/agentforcezone/agentforce/releases/download/v0.0.9-af-cli/agentforce-cli-macos-arm64.zip"
    sha256 "c169b11f3ab376f1cbe4f401a11b0001cc991cba395caebfd02792f7b280f0b4"
  end

  def install
    bin.install "af"
  end

  test do
    system "#{bin}/af", "--version"
  end
end
