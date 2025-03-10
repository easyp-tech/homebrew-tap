# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Easyp < Formula
  desc "Easy modern protobuf tooling for all your needs."
  homepage "https://easyp.tech"
  version "0.7.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/easyp-tech/easyp/releases/download/v0.7.10/easyp-0.7.10-darwin-amd64.tar.gz"
      sha256 "1c5b66502e8971d1912e0058db0b2d264031726eaa7b1f0fddb31f8c9276a482"

      def install
        bin.install "easyp"
        output = Utils.popen_read("#{bin}/easyp completion bash")
        (bash_completion/"easyp").write output
        output = Utils.popen_read("#{bin}/easyp completion zsh")
        (zsh_completion/"_easyp").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/easyp-tech/easyp/releases/download/v0.7.10/easyp-0.7.10-darwin-arm64.tar.gz"
      sha256 "8030a43ec9bc77348cb27198f2581c3f4db672ac64388cab3376adf5a21359ce"

      def install
        bin.install "easyp"
        output = Utils.popen_read("#{bin}/easyp completion bash")
        (bash_completion/"easyp").write output
        output = Utils.popen_read("#{bin}/easyp completion zsh")
        (zsh_completion/"_easyp").write output
        prefix.install_metafiles
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/easyp-tech/easyp/releases/download/v0.7.10/easyp-0.7.10-linux-amd64.tar.gz"
        sha256 "7bf3f122af25af8981b6504ebe82a24616d50aa9c3ec07477e62059cdc283f8d"

        def install
          bin.install "easyp"
          output = Utils.popen_read("#{bin}/easyp completion bash")
          (bash_completion/"easyp").write output
          output = Utils.popen_read("#{bin}/easyp completion zsh")
          (zsh_completion/"_easyp").write output
          prefix.install_metafiles
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/easyp-tech/easyp/releases/download/v0.7.10/easyp-0.7.10-linux-armv6.tar.gz"
        sha256 "d2e70cb845252627b8e33d66c6e0fefeff330d4183f58b8bc9e898dfaa4dea66"

        def install
          bin.install "easyp"
          output = Utils.popen_read("#{bin}/easyp completion bash")
          (bash_completion/"easyp").write output
          output = Utils.popen_read("#{bin}/easyp completion zsh")
          (zsh_completion/"_easyp").write output
          prefix.install_metafiles
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/easyp-tech/easyp/releases/download/v0.7.10/easyp-0.7.10-linux-arm64.tar.gz"
        sha256 "4cd0175b67b9fe750cf6a002b1d3506db8cfe0d0e2168fa84a1cb8ce1cb295ad"

        def install
          bin.install "easyp"
          output = Utils.popen_read("#{bin}/easyp completion bash")
          (bash_completion/"easyp").write output
          output = Utils.popen_read("#{bin}/easyp completion zsh")
          (zsh_completion/"_easyp").write output
          prefix.install_metafiles
        end
      end
    end
  end

  test do
    system "#{bin}/easyp --version"
  end
end
