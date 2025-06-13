class Af < Formula
  desc "The AgentForce Command-line interface for AgentForce Service and Tools"
  homepage "https://github.com/agentforcezone/agentforce"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/agentforcezone/agentforce/releases/download/v0.1.0-af-cli/agentforce-cli-macos-x64.zip"
    sha256 "b48ac5c439f31250b1493a6cb1ac4599b0f35ac2f8ca5cd6dc3c8b122fdbccd3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/agentforcezone/agentforce/releases/download/v0.1.0-af-cli/agentforce-cli-macos-arm64.zip"
    sha256 "2923f31bf163eda47b7c60ccf496699be50c58510593be95a4a402f375ab265b"
  end

  def install
    bin.install "af"
  end

  test do
    system "#{bin}/af", "--version"
  end
end
