# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.6.39"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.39/flytectl_Darwin_arm64.tar.gz"
      sha256 "f65a0e822a0020baf7f34440bb1753cc19c2fe32b04f8d54a5e0abbfa15b4e38"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.39/flytectl_Darwin_x86_64.tar.gz"
      sha256 "cd0f46850e0c044fae6a64a31ab2bf80e3fafe0a5886b2b03a8ce371f83a1b8c"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.39/flytectl_Linux_arm64.tar.gz"
      sha256 "011c86d6e7ee42db6b0c20ecf84a022f5a844d860114ea2c9f6d5419a6a63c83"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.39/flytectl_Linux_x86_64.tar.gz"
      sha256 "e0369f66e7f246d1dce2b1530eb127fae6296e76d0f5feb0937a1b60a565c048"

      def install
        bin.install "flytectl"
      end
    end
  end
end
