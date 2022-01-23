# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.4.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.16/flytectl_Darwin_arm64.tar.gz"
      sha256 "cdaefd1462c576f5771aaa349a7d6f59dcff8bf9349a3b1affae3fa0ea41922b"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.16/flytectl_Darwin_x86_64.tar.gz"
      sha256 "f92762be4795df6c45810562b2f0bcd28449f8cf2837872b939a5d7a904bcb4b"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.16/flytectl_Linux_x86_64.tar.gz"
      sha256 "f1c8abc2e635e9410bf5aeeec83fa9e04a3fbb84a0a6561b4815f42d1a0e927e"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.16/flytectl_Linux_arm64.tar.gz"
      sha256 "fc97a496f9401528fda97a4696fb4be69d15ececde70b36d2281dea010ea8e15"

      def install
        bin.install "flytectl"
      end
    end
  end

  depends_on "go"
end
