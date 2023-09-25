# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/tursodatabase/homebrew-tap"
  version "0.85.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.85.0/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "67b806659630eb5d83f304c3cdb0e1bb62c9fdf2a84f77ba07bea68af81a3c56"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.85.0/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "7850bf062330d9712a5f6450c273bb97cc237be493a0982d2dbd12e69bf19c98"

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
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.85.0/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "d872673c7b07db2a1f6eadc89793fd3d5e1d75f548f79c812d2b84c26ffa945c"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.85.0/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "171965c493bee8435b11a89f177b2fdb3bcea9d008c1e59704b939a2b6e876bb"

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
