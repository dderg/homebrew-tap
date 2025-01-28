  class MiniBadger < Formula
    desc "Your mini-badger description"
    homepage "https://github.com/dderg/mini-badger"
    version "0.1.5"

    if OS.mac?
      url "https://github.com/dderg/mini-badger/releases/download/v0.1.5/mini-badger"
      sha256 "1d7692940207c58dbb5b963bdf4c6ccf62852fa807d25edcf6154b44c8fd384d"
    end

    service do
      run opt_bin/"mini-badger"
      keep_alive true
      log_path var/"log/mini-badger.log"
      error_log_path var/"log/mini-badger.error.log"
    end

    def install
      bin.install "mini-badger"
    end
  end
