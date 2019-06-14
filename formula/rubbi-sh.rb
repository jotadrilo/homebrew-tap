class RubbiSh < Formula
  desc "Go and Shell helpers to provide a sandbox directory for rubbish."
  homepage "https://github.com/jotadrilo/rubbi-sh"
  url "https://github.com/jotadrilo/rubbi-sh/releases/download/0.0.5/rubbi-sh_0.0.5_darwin_amd64.tar.gz"
  version "0.0.5"
  sha256 "ced7fba81a0e94a662d9131cf47c686266239abade0fcb5776919f1ff9ea9909"

  def install
    bin.install "rubbi-sh"
    (share/"alias").install "dotfiles/.rubbi.sh"
  end

  def caveats
    <<~EOS
      This tool is based on some alias and shell functions.

      Please import the .rubbi.sh file in your profile configuration or add its content directly.

       . #{(share/"alias")}/.rubbi.sh

    EOS
  end

  test do
    system bin/"rubbi-sh", "-version"
  end
end
