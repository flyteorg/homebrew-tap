# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.8.0/flytectl_Darwin_x86_64.tar.gz"
      sha256 "f9a4eccce2ce19beb2b1985883920fa3002843fc62e39802ab671c25ee841cb8"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.8.0/flytectl_Darwin_arm64.tar.gz"
      sha256 "09e1cfdb379599fe30a58eed1eca51d43a362ec86142e141ddb2e79064fe8f4c"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.8.0/flytectl_Linux_x86_64.tar.gz"
      sha256 "c6bc441761dee165e6de01247f9a27b6d6c86f49ec47489dfb6ca1d01eb717d8"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.8.0/flytectl_Linux_arm64.tar.gz"
      sha256 "5ec0c32781f6a7fbf54904d147318aafc6f6c24a2a521133e563dbf2241cac2a"

      def install
        bin.install "flytectl"
      end
    end
  end
end
