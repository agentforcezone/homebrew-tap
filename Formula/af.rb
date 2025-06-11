class AgentforceCli < Formula
  desc "Command-line interface for AgentForce"
  homepage "https://github.com/agentforcezone/agentforce"
  version "0.0.3" # e.g., 0.0.3

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/agentforcezone/agentforce/releases/download/v0.0.3-af-cli/agentforce-cli-macos-x64.zip"
    sha256 "2730a16eceb83e687ff9a72f5660ba9f50fcd3bfe5bfc7d197e22c9583e86876"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/agentforcezone/agentforce/releases/download/v0.0.3-af-cli/agentforce-cli-macos-arm64.zip"
    sha256 "1e9e2712ff61da06b8f137f544fb91298d4c870a2f05574349e2352f2d23f84a"
  end

  def install
    bin.install "af" # Assumes binary in zip is 'af'
  end

  test do
    system "#{bin}/af", "--version" # Assumes binary is 'af'
  end
end
