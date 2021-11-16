# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.3.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.3.22/flytectl_Darwin_arm64.tar.gz"
      sha256 "dcdc67a45042d26d9eb8121eed9a5a65ee1f5b629cb231b9ab10faae871e8e57"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.3.22/flytectl_Darwin_x86_64.tar.gz"
      sha256 "2db0a0b20ace658f0740d0dcfe73cf5b4555cd33c511740d636e6e99faac688a"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.3.22/flytectl_Linux_x86_64.tar.gz"
      sha256 "6276fdb14cbdd83ba5ad0f9f0e306ee3ff8865ab0eed0d7ce81e3dda774304a1"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.3.22/flytectl_Linux_arm64.tar.gz"
      sha256 "c3def4666a8d5e93840ab05767d4fef533094a6ba22f397a756c0d28c1879a44"

      def install
        bin.install "flytectl"
      end
    end
  end

  depends_on "go"
end
