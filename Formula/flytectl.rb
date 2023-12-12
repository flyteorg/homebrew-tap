# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.8.2/flytectl_Darwin_arm64.tar.gz"
      sha256 "44baf5c1bb06ee98da2529c63c51e085a57e53d3ab5f6eee5fef10b375c2eaa4"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.8.2/flytectl_Darwin_x86_64.tar.gz"
      sha256 "2a2b12a5ddb0a5e58293a36ea4262f1c1e56b166abc33f3a616ea0f80dee1f09"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.8.2/flytectl_Linux_arm64.tar.gz"
      sha256 "6df7281efb4a2e2c8b68f92926944ce0d6bc56a7fa0970a780441c620378f1ee"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.8.2/flytectl_Linux_x86_64.tar.gz"
      sha256 "e345fed5559e4ac7eb0c005d0775733fd598710e8aa8071ac7b0ba93bc4ee687"

      def install
        bin.install "flytectl"
      end
    end
  end
end
