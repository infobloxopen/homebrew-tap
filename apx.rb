# typed: false
# frozen_string_literal: true

# This formula has been replaced by a Cask.
# Install with: brew install --cask infobloxopen/tap/apx
class Apx < Formula
  desc "API Publishing eXperience CLI"
  homepage "https://github.com/infobloxopen/apx"
  version "0.1.0-alpha.1"
  license "Apache-2.0"

  url "https://github.com/infobloxopen/apx/releases/download/v0.1.0-alpha.1/apx_0.1.0-alpha.1_darwin_arm64.tar.gz"
  sha256 "9e6161e57c921c17e8a4fa7c6b1d0cf4cc8d41290e9154b89c843bcd50fe9127"

  disable! date: "2026-03-07", because: "it has moved to a Cask. Uninstall this formula and reinstall with: brew install --cask infobloxopen/tap/apx"

  def install
    bin.install "apx"
  end

  test do
    system "#{bin}/apx", "--version"
  end
end
