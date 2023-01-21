# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/chiselstrike/homebrew-tap"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.0.9/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "b01bdc3ab512f043fb71df490c4253317e5311ec9dc226e8b68e3d7a35ef5850"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.0.9/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "7e0aa379dd0f52fa243f7c1a048859e140afff74a6390e5ff0d89704a1a03d1b"

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
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.0.9/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "a487e24ec3d32217b90e9f89cdb75d656a33c3dc6df632bb9dfb22e1d47d1875"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.0.9/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "7b6f40cccdd18b70660de763dc7884a25e7b0007efbad14c1a4b37f6bb8dbd4e"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end
end
