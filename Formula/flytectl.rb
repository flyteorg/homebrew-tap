# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.1.24"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.1.24/flytectl_Darwin_x86_64.tar.gz"
      sha256 "6767cf09ed39e5422d1565a36b216962c0eb4672d5e8f8fa9cff4a4675bf33b7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.1.24/flytectl_Linux_x86_64.tar.gz"
      sha256 "b125c4870618cfd17f6054fc20e95c4fd8e0b1fb11628fa255e2920b90f71171"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.1.24/flytectl_Linux_arm64.tar.gz"
      sha256 "0fb397315253fdabde01218a9e05d0c904a8c57c337ae916cba8c6ec4d3974d3"
    end
  end

  depends_on "go"

  def install
    bin.install "flytectl"
  end
end
