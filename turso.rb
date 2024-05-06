# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/tursodatabase/homebrew-tap"
  version "0.93.7"

  depends_on "libsql/sqld/sqld"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.93.7/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "667f713bea504dd14344dba95e0ad97586c60b7632631999cd999ed3ab54981b"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.93.7/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "824a8ae4ea622e74345f1b687aba9412a4d0ec6d280317d90f40ab6014b3423f"

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
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.93.7/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "cb089c90f9747fb0ffc419438ca4633c3d8c6571883ed29f13d2ba9b12654ea8"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tursodatabase/homebrew-tap/releases/download/v0.93.7/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "5b813fafe42af41c230a165e718c2d0582a8a7584fcf20bc418b1fb094446984"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  def post_install
    exec('turso post-install')
  end
end
