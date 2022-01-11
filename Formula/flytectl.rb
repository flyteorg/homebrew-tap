# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.4.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.11/flytectl_Darwin_x86_64.tar.gz"
      sha256 "67a07d393a0746e5b0e7fb219a8fb04c273c20c469eaa1b5e52806f0318504b7"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.11/flytectl_Darwin_arm64.tar.gz"
      sha256 "cdb2bb8b90607641968eceb58420094e17609fb278f41f971302bc7a6f89e237"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.11/flytectl_Linux_arm64.tar.gz"
      sha256 "488b443e07c1c0d9846d26e1ef1107190ec343ff1c6d59cd08f88ba4adafd5ac"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.11/flytectl_Linux_x86_64.tar.gz"
      sha256 "f21c554b79d0cc2112ca3410e87f2aa109856ad37ca6bcaa0c8d1e38928d0553"

      def install
        bin.install "flytectl"
      end
    end
  end

  depends_on "go"
end
