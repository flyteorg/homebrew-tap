# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.7.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.7.6/flytectl_Darwin_arm64.tar.gz"
      sha256 "f92d7ee00af3f2a1b8f44d245ead94eac0f25e5071054961f762ed7d97418997"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.7.6/flytectl_Darwin_x86_64.tar.gz"
      sha256 "aa7fd226eb0a81e5d2ee0d0e2b798ff8d58f5399bc013c0447c80ce66c6ab1ba"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.7.6/flytectl_Linux_arm64.tar.gz"
      sha256 "d1aeb768a65290bc8386067726f6318c90ac9197e56aa387914095467fd8a909"

      def install
        bin.install "flytectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.7.6/flytectl_Linux_x86_64.tar.gz"
      sha256 "782e30f67eabee7868190ea3632b024511ce920bbd56e444a379365fe30a4672"

      def install
        bin.install "flytectl"
      end
    end
  end
end
