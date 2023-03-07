# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.6.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.32/flytectl_Darwin_arm64.tar.gz"
      sha256 "dd0315c72b0ca33ddace73e825b351d5a5b1871bef1e117572f6f9d04b607b77"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.32/flytectl_Darwin_x86_64.tar.gz"
      sha256 "1592b40f82862eec52b2aff6c1b842ebddcd2237995f32bcc6197ee080171311"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.32/flytectl_Linux_arm64.tar.gz"
      sha256 "9cd3b62d10cbe2ab23ce1b662fad183e0aca49354568eca7a799286b91567479"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.6.32/flytectl_Linux_x86_64.tar.gz"
      sha256 "729d8eada7063d41f30ab6ce198cb88dcec04581d11adcaec5ab981ed30f3ec4"

      def install
        bin.install "flytectl"
      end
    end
  end
end
