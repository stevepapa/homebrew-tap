class Depaudit < Formula
  desc "Inspect and triage JS dependency vulnerabilities interactively in the console for npm/yarn/pnpm"
  homepage "https://github.com/stevepapa/depaudit"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stevepapa/depaudit/releases/download/v1.0.3/depaudit_1.0.3_darwin_arm64.tar.gz"
      sha256 "58e7145e284bf4a118610e7d67b9d28ce89796904edc1226b93c3dd2135f7c82"
    else
      url "https://github.com/stevepapa/depaudit/releases/download/v1.0.3/depaudit_1.0.3_darwin_amd64.tar.gz"
      sha256 "9190468ee00cfc070074fe304bfa3ff358329d111e5bdbd362229e5f76cc155c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stevepapa/depaudit/releases/download/v1.0.3/depaudit_1.0.3_linux_arm64.tar.gz"
      sha256 "012b78c5f7c9ab55da6bdc49c59877eea78d92d85fe12aa46099b84f2e500860"
    else
      url "https://github.com/stevepapa/depaudit/releases/download/v1.0.3/depaudit_1.0.3_linux_amd64.tar.gz"
      sha256 "39d8239dd14b7081aaa96d14f09ce9b00823e5823b2644b9d4057ca983994edf"
    end
  end

  def install
    bin.install "depaudit"
  end

  test do
    system "#{bin}/depaudit", "--version"
  end
end

