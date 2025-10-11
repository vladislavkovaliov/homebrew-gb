class Gb < Formula
  desc "Git branch helper script with interactive selection"
  homepage "https://github.com/<you>/gb"
  url "https://github.com/<you>/gb/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "<SHA256>"
  license "MIT"

  def install
    bin.install "bin/gb"
  end

  def caveats
    <<~EOS
      To make 'gb' affect your current shell session, add this alias:
        echo 'alias gb="source $(brew --prefix gb)/bin/gb"' >> ~/.zshrc
      Then reload your shell:
        source ~/.zshrc

      Optional dependency for interactivity:
        brew install charmbracelet/tap/gum
    EOS
  end

  test do
    output = shell_output("#{bin}/gb 2>&1", 1)
    assert_match "Usage: gb <branch_name>", output
  end
end
