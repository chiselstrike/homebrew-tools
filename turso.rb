# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/tursodatabase/homebrew-tap"
  version "0.87.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.87.9/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "7fe2c527ceec78c16a6814c771857f3aa13a03b3b1b65cb6f30d2dd17a2a66d5"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.87.9/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "01a1c56e89aee91da16a43e2383cb79977e208eebdc4062801ce1e9fc6770788"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.87.9/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "60bd68f5804e477d82e29fe60114a094cd88159397a994bd0308768bb82554e5"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.87.9/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "9d7b827cfa50a580b3c6fcce7f3e61d8617ac59eb57f482553d4565e7074ce9e"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  def post_install
    exec('turso quickstart')
  end
end
