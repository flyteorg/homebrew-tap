# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.2.31"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.2.31/flytectl_Darwin_x86_64.tar.gz"
      sha256 "c18c05ece38c9b4b0bfe400c9533a44e05c1b4cbd84038bb3d8316183f2012a0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.2.31/flytectl_Linux_x86_64.tar.gz"
      sha256 "874dea1635c62d0c3cad5bb93b8f9cfe219a97b659fd98684724f68cccf8257f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.2.31/flytectl_Linux_arm64.tar.gz"
      sha256 "719437f5db63535b4af67cf646a93978c18c29e5ceff3bb48aad0d7a8c4e3c62"
    end
  end

  depends_on "go"

  def install
    bin.install "flytectl"
  end
end
