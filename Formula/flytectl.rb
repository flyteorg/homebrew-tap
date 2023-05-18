# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.6.37"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.37/flytectl_Darwin_arm64.tar.gz"
      sha256 "47f11de5ffbdc2ec3eafa5d74367088e764d7898c6e67278d37641728b1ef1c2"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.37/flytectl_Darwin_x86_64.tar.gz"
      sha256 "463022951c9e6365e51a59e1fbbb11d8541424a3f27dda329a4c07094441716f"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.37/flytectl_Linux_x86_64.tar.gz"
      sha256 "1c07b831234e395aca0463c3543db5147e500a77d6bcbf4d44c2844ddf75018a"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.37/flytectl_Linux_arm64.tar.gz"
      sha256 "8e99e2ab44a756f34ca0f44c556bf4e97dc44ace848bf705a024636ffe4db47a"

      def install
        bin.install "flytectl"
      end
    end
  end
end
