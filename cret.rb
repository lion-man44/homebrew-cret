# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cret < Formula
  desc "Version manager for Deno"
  homepage "https://github.com/lion-man44/cret"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lion-man44/cret/releases/download/v1.0.0/cret-x86_64-apple-darwin.zip"
    sha256 "d2a5999c4c2dad7ce00870411dfbe61e8fc6e3e100f79f9ab91caf9e48603ac9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lion-man44/cret/releases/download/v1.0.0/cret-aarch64-apple-darwin.zip"
    sha256 "d9ae34c62f32eb14fda31933b1c0c0f3b0926b26845543a40d098eb7eed4f526"
  end
  if OS.linux?
    url "https://github.com/lion-man44/cret/releases/download/v1.0.0/cret-x86_64-unknown-linux-gnu.zip"
    sha256 "b7ba3f7648e0c56b85cca31df8389a6058086ceff9d3639dcd19c453f27537ae"
  end

  def install
    bin.install "cret"
  end

  test do
    system "cret --version"
  end
end
