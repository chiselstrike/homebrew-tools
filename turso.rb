# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/tursodatabase/homebrew-tap"
  version "0.80.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.80.0/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "e9bbd52576488f188cde88cc0abc94c21002639acf9ab0a0bb61e48b72fce7c2"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.80.0/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "e0bd661c48b7d8b3c262dd225760dbdea586acf5f28a5f8a33208f4a3c94b16b"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.80.0/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "2a4cde149ad32b936b6379833cd0dbd961ee29e602110d7d5a63556b3b9899a5"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.80.0/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "bd2b25f37164b365648729ea588e5168d27b1332d4e98340247c10d1d0c8fbde"

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
