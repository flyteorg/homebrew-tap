# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/en/latest/flytectl/docs_index.html"
  version "0.9.1"

  on_macos do
    on_intel do
      url "https://github.com/flyteorg/flyte/releases/download/flytectl/v0.9.1/flytectl_Darwin_x86_64.tar.gz"
      sha256 "e218e760232595f5a46ed11c9b8711a66003cec5f2710c636ef802191b2e8377"

      def install
        bin.install "flytectl"
      end
    end
    on_arm do
      url "https://github.com/flyteorg/flyte/releases/download/flytectl/v0.9.1/flytectl_Darwin_arm64.tar.gz"
      sha256 "4a7a7ad2b09d23e862c907e941a560040a45eeafb9a96838fde08dac8263a14c"

      def install
        bin.install "flytectl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/flyteorg/flyte/releases/download/flytectl/v0.9.1/flytectl_Linux_x86_64.tar.gz"
        sha256 "70fe5eb5efb0cde94fe806433edcdb089c61b5babbf9906a3fc751e198e0e49a"

        def install
          bin.install "flytectl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/flyteorg/flyte/releases/download/flytectl/v0.9.1/flytectl_Linux_arm64.tar.gz"
        sha256 "107626fe44b2ed5d2afa97913009fd0fa0de13cab88542437321bb4e7849b03c"

        def install
          bin.install "flytectl"
        end
      end
    end
  end
end
