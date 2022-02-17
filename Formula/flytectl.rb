# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.5.1/flytectl_Darwin_x86_64.tar.gz"
      sha256 "694d177b4416e8bced66f51aa8a3b76bb1bb0f7fd8c7ee4962f9e55ca3ae7459"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.5.1/flytectl_Darwin_arm64.tar.gz"
      sha256 "bfcc90440320c230099193aaf99e77c81b3eacef0eece728723a5932d1da79be"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.5.1/flytectl_Linux_x86_64.tar.gz"
      sha256 "91d7efbb2df2cab6f3b48fffa1994a097bf9af9c9de0845f645fce463cb6628e"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.5.1/flytectl_Linux_arm64.tar.gz"
      sha256 "e5b4baff1c628498d54d654b7c01bee25ae368a2de98832fac45fda74cecede8"

      def install
        bin.install "flytectl"
      end
    end
  end

  depends_on "go"
end
