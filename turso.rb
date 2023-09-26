# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/tursodatabase/homebrew-tap"
  version "0.85.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.85.1/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "3d6383cfdde4d80c907f1b515c978c0b6b491c949d14be612633aefaf758baa9"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.85.1/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "9f3545d3f7c1eb3a7339f8dbba7e9346cc36631eee90562b8c72d7288342c216"

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
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.85.1/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "bf6606e687feba3ed9a7cbb6790ed5f40f7f5b7a63df0bddada0e7199de1a76a"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.85.1/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "1ab852669afdbf1245bce2f85b0812d1d9871c7d4529e2a50f9891b28e591bdc"

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
