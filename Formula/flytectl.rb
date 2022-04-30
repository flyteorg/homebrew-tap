# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.5.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.5.23/flytectl_Darwin_arm64.tar.gz"
      sha256 "4f7c8144db431502ed0bd69857ba744e52b8d4d49800e1e35d96fa057e6eb540"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.5.23/flytectl_Darwin_x86_64.tar.gz"
      sha256 "699d3250cb78d947df03466b91f4fd1247ceb3da837b736ff5e24b84c0cd22c0"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.5.23/flytectl_Linux_arm64.tar.gz"
      sha256 "50b40f971061406e63d7047cc94a25a62aa94bc6f661b1c541e97a4e75d907a9"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.5.23/flytectl_Linux_x86_64.tar.gz"
      sha256 "525651ddf8c253d4ae74c6dd7c93882435de4ad931e9416fa256775b984013c5"

      def install
        bin.install "flytectl"
      end
    end
  end

  depends_on "go"
end
