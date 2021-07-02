# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.1.34"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.1.34/flytectl_Darwin_x86_64.tar.gz"
      sha256 "3c7691c5ffbf461fd8d47e02a449c865ae09d96c4991a127edd55c88c1eebfdc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.1.34/flytectl_Linux_x86_64.tar.gz"
      sha256 "c57a2208ad82af8c5fb3de778eadc772b1fb49a3f7ca0d4aed367e44383a22ee"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.1.34/flytectl_Linux_arm64.tar.gz"
      sha256 "9c64b968b057df1292f26fef2e9c52114f6fa5dd17d02bb0040e3d90f65fe5ae"
    end
  end

  depends_on "go"

  def install
    bin.install "flytectl"
  end
end
