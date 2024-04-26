# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/en/latest/flytectl/docs_index.html"
  version "0.8.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.8.16/flytectl_Darwin_x86_64.tar.gz"
      sha256 "14c3e4ce26a0b83a0c58db2c4ca01f0588d1f054e52e6a3d4df9862e16a5466c"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.8.16/flytectl_Darwin_arm64.tar.gz"
      sha256 "fbc9673044d2cf61937e4fe15435464cd53b1b5839193299648ccb48f3db8dea"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.8.16/flytectl_Linux_x86_64.tar.gz"
      sha256 "e219611994b62d07db5d6dc81fb499615741b5562c4cf19347e4f621c99a165b"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.8.16/flytectl_Linux_arm64.tar.gz"
      sha256 "c34b09d81d5988ee42631b312590c4bdaf65e7fdec7a775087283b1e201a1ba4"

      def install
        bin.install "flytectl"
      end
    end
  end
end
