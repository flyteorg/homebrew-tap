# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.4.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.8/flytectl_Darwin_x86_64.tar.gz"
      sha256 "27cd4512002373fa7aed2268d28614f97a5690c77eeaf15d16d895bcf02ec804"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.8/flytectl_Darwin_arm64.tar.gz"
      sha256 "c8143c073c4468a6e69e8258b18d9cd9899cf6bfcee7cb620c6c96ecfadbcdbf"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.8/flytectl_Linux_arm64.tar.gz"
      sha256 "c87951d4020066283b2c703c202af33c31e13fb492287b82e5885e2d4c69fb46"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.8/flytectl_Linux_x86_64.tar.gz"
      sha256 "58083e7cc64a660f8834f009528e99dfa06614d4e21e14ddc381577dc4ef22ab"

      def install
        bin.install "flytectl"
      end
    end
  end

  depends_on "go"
end
