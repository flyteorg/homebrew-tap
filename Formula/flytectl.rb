# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.1/flytectl_Darwin_x86_64.tar.gz"
      sha256 "33ccab9b970eb2dc7d308892cdc8fada0ec6c5cd4fe66995bd96e7b1083437dd"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.1/flytectl_Darwin_arm64.tar.gz"
      sha256 "ba23b3461f1cab51c5638a126911216d7555738fac71fd8ee3b1535bd4a2a3e2"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.1/flytectl_Linux_x86_64.tar.gz"
      sha256 "9ec8de558401ee22fa6a577ba2ce6343124d1181822019ef62b2261cc0e42e4c"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.4.1/flytectl_Linux_arm64.tar.gz"
      sha256 "0a8a3677843899e3fcecf342aaa9f2118021040b75c5115c66abdc4e0f87610e"

      def install
        bin.install "flytectl"
      end
    end
  end

  depends_on "go"
end
