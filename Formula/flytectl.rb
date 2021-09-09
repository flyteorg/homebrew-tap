# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.2.45"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.2.45/flytectl_Darwin_x86_64.tar.gz"
      sha256 "e6299375eb35571517dba8efba1589930ab37acb1b68c0e82f728f2d52c19ae7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.2.45/flytectl_Linux_x86_64.tar.gz"
      sha256 "e426603fe76f85c6af007dbf7754f12138c38259f187c21adf70ec8d76afbaa5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.2.45/flytectl_Linux_arm64.tar.gz"
      sha256 "999e23a1f700bd5700c64c2e448003669bacee41adf3d72eb3ed19133ebc8329"
    end
  end

  depends_on "go"

  def install
    bin.install "flytectl"
  end
end
