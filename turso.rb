# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/chiselstrike/homebrew-tap"
  version "0.67.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.67.0/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "5834726256ff55e4c89af5a012fd2de210c856b38081797b0c4e3abadddc832e"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.67.0/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "92d12ecd7c8b6958a486b1d11d241a220137a686e98adfb9f44c102350239211"

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
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.67.0/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "bbe4f1c174b002e6ebd061a21ac36f86dc705bacea29358fc13d7aa65efbdd7c"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.67.0/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "5cfaa83147ba7dd3ad54fac457ccf3291475950d50d57dca8b81e56081186040"

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
