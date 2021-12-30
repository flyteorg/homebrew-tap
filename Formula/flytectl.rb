# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.4.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.7/flytectl_Darwin_arm64.tar.gz"
      sha256 "a361d6ec64672ad7be3dc88c1b54e5a6fda6d4f2005c86d5ea12eb0d435df63b"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.7/flytectl_Darwin_x86_64.tar.gz"
      sha256 "79531ebe440d2ee35d30946fd9f54b8b50707cb048187eac4524c1c8136086d5"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.7/flytectl_Linux_x86_64.tar.gz"
      sha256 "a037520fe50a2d1dc0130c8e73d4077cb722906be9d84652db64a1fb4b83baa2"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.7/flytectl_Linux_arm64.tar.gz"
      sha256 "c1473567df64964d4e851bedbe4a8ede36d7df6450904bee04bdda8c9688c68e"

      def install
        bin.install "flytectl"
      end
    end
  end

  depends_on "go"
end
