# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.2.44"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.2.44/flytectl_Darwin_x86_64.tar.gz"
      sha256 "fb0b6d233236a9cab30d044f6038e575b5d625fbf90da9fbb1a8319434d6d771"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.2.44/flytectl_Linux_x86_64.tar.gz"
      sha256 "856819ffc0500a35572d1af7aeab8c50855d54def11ee8db4f7acf95607c1723"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.2.44/flytectl_Linux_arm64.tar.gz"
      sha256 "2556bef23e39579d2630752d7a2dc8009b6217d6d59c4269ef4aa887883dbf3d"
    end
  end

  depends_on "go"

  def install
    bin.install "flytectl"
  end
end
