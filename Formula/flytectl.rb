# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.5.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.5.12/flytectl_Darwin_x86_64.tar.gz"
      sha256 "dff78f0e3418b3cfc1c6e820490b629501d6775340bf8dcdcc23070e9b308526"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.5.12/flytectl_Darwin_arm64.tar.gz"
      sha256 "c7243af1c2f8a69ff754ac65604ee21aa5e379d6f1ff7f8fd6818c04e6fdab3a"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.5.12/flytectl_Linux_arm64.tar.gz"
      sha256 "f2af7985287c6cd4bdff557d74b2260d864adfd7d19efd599b815415bc2c28fd"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.5.12/flytectl_Linux_x86_64.tar.gz"
      sha256 "2cfca11a437f56c9ddbd0b586a5cd514b7efe000613d548303683b5c3ed90c9a"

      def install
        bin.install "flytectl"
      end
    end
  end

  depends_on "go"
end
