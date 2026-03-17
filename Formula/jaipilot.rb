# Generated with JReleaser 1.22.0 at 2026-03-17T18:34:04.572105006Z

class Jaipilot < Formula
  desc "JAIPilot CLI"
  homepage "https://github.com/skrcode/jaipilot-cli"
  url "https://github.com/skrcode/jaipilot-cli/releases/download/v0.1.0/jaipilot-0.1.0.zip"
  version "0.1.0"
  sha256 "895e31ad66a60add111fb4b4730e4b38a96c4b351ca5acca306551d242a102d7"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jaipilot" => "jaipilot"
  end

  test do
    output = shell_output("#{bin}/jaipilot --version")
    assert_match "0.1.0", output
  end
end
