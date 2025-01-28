  class MiniBadger < Formula
    desc "Your mini-badger description"
    homepage "https://github.com/dderg/mini-badger"
    version "0.1.4"

    if OS.mac?
      url "https://github.com/dderg/mini-badger/releases/download/v0.1.4/mini-badger"
      sha256 "69e7c467919a20b7a8940c5c5014d7b9817864d989a2ff5a9cd70192d3debff7"
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
