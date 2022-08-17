# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.6.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.10/flytectl_Darwin_x86_64.tar.gz"
      sha256 "384c2030de0f6e026c48a17da095b898a0f368bee37337b080fce1a62adb6613"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.10/flytectl_Darwin_arm64.tar.gz"
      sha256 "7bca8be2cfc568c02aba3983d09e4dc6d6486301c9b870e08a316008963225d1"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.10/flytectl_Linux_x86_64.tar.gz"
      sha256 "9aa205b99406bfef2e6be5caf01d103f18497cfe5bc243d28e63be9e79051651"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.10/flytectl_Linux_arm64.tar.gz"
      sha256 "f02e31e11a336fd95413e876f693ba3984c0210c31254143c26058b0ac02ef2b"

      def install
        bin.install "flytectl"
      end
    end
  end

  depends_on "go"
end
