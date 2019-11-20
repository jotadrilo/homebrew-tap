# This file was generated by GoReleaser. DO NOT EDIT.
class Kubectxext < Formula
  desc "CLI to extract a context from an existing kubernetes configuration file"
  homepage "https://github.com/jotadrilo/kubectxext"
  version "1.0.3"

  if OS.mac?
    url "https://github.com/jotadrilo/kubectxext/releases/download/1.0.3/kubectxext_1.0.3_darwin_x86_64.tar.gz"
    sha256 "d774ad8444b6c6497e2aff12f6472922cb1af62861d3d06c80321cf55cf52600"
  elsif OS.linux?
    url "https://github.com/jotadrilo/kubectxext/releases/download/1.0.3/kubectxext_1.0.3_linux_x86_64.tar.gz"
    sha256 "b1fcbf40620f811a4f3f5b30e3a2acb1635362741850307b80051c28387cf746"
  end

  def install
    bin.install "kubectxext"
  end

  test do
    system bin/"kubectxext", "-help"
  end
end
