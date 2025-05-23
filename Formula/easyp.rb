# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Easyp < Formula
  desc "Easy modern protobuf tooling for all your needs."
  homepage "https://easyp.tech"
  version "0.7.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/easyp-tech/easyp/releases/download/v0.7.13/easyp-0.7.13-darwin-amd64.tar.gz"
      sha256 "2bdbf7e6e7b4d827488c2bf13d6a3c77ce7c7c545370fe7742e3d0c511aebef2"

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
      url "https://github.com/easyp-tech/easyp/releases/download/v0.7.13/easyp-0.7.13-darwin-arm64.tar.gz"
      sha256 "3e227465a4cb83964a278b9c2ac2a37b319c4ae772f5a70f20081dd1d01cd4d8"

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
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/easyp-tech/easyp/releases/download/v0.7.13/easyp-0.7.13-linux-amd64.tar.gz"
      sha256 "08f14c3746c0e2dd79de223aba97312f1a775b1250fc7207b53395e3a3da8ac0"
      def install
        bin.install "easyp"
        output = Utils.popen_read("#{bin}/easyp completion bash")
        (bash_completion/"easyp").write output
        output = Utils.popen_read("#{bin}/easyp completion zsh")
        (zsh_completion/"_easyp").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/easyp-tech/easyp/releases/download/v0.7.13/easyp-0.7.13-linux-armv6.tar.gz"
      sha256 "6fde318ffcf5d98a49953a9b1a67063b84b7a2e970241c6a5dc272e0c1531146"
      def install
        bin.install "easyp"
        output = Utils.popen_read("#{bin}/easyp completion bash")
        (bash_completion/"easyp").write output
        output = Utils.popen_read("#{bin}/easyp completion zsh")
        (zsh_completion/"_easyp").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/easyp-tech/easyp/releases/download/v0.7.13/easyp-0.7.13-linux-arm64.tar.gz"
      sha256 "b64240498b64bc6a279346f34b24eb1cec328b1d64f765536beac58cfd5325d0"
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

  test do
    system "#{bin}/easyp --version"
  end
end
