# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.2.15"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.2.15/flytectl_Darwin_x86_64.tar.gz"
      sha256 "aebb1ede2b1aa6fb3e736adb9210fa56618e893b0ec77157f0cbbe3525d396fa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.2.15/flytectl_Linux_x86_64.tar.gz"
      sha256 "12d183a0799c44b7e3165e589fb78f672f62f541888029833d6d3d9670106d8f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.2.15/flytectl_Linux_arm64.tar.gz"
      sha256 "3736016ff74785947fdc12decfcaa0d241ed4c72b1d1d44fcde0a4296d8f2916"
    end
  end

  depends_on "go"

  def install
    bin.install "flytectl"
  end
end
