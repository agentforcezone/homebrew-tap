class Af < Formula
  desc "The AgentForce Command-line interface for AgentForce Service and Tools"
  homepage "https://github.com/agentforcezone/agentforce"
  version "0.0.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/agentforcezone/agentforce/releases/download/v0.0.6-af-cli/agentforce-cli-macos-x64.zip"
    sha256 "1234df82a28a9030b54df88afba0c454bacf283d3f74544325fa9de080a31cce"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/agentforcezone/agentforce/releases/download/v0.0.6-af-cli/agentforce-cli-macos-arm64.zip"
    sha256 "894782b6b32865adbfc0c7c80af42bf872800d3608a46d4a8d7b7a7c26c12f97"
  end

  def install
    bin.install "af"
  end

  test do
    system "#{bin}/af", "--version"
  end
end
