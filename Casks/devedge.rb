cask "devedge" do
  name "devedge"
  desc "Local development edge router and name registry"
  homepage "https://github.com/infobloxopen/devedge"
  version "0.1.0"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/infobloxopen/devedge/releases/download/v#{version}/devedge_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/infobloxopen/devedge/releases/download/v#{version}/devedge_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/infobloxopen/devedge/releases/download/v#{version}/devedge_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/infobloxopen/devedge/releases/download/v#{version}/devedge_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  binary "de"
  binary "devedged"
  binary "devedge-dns-webhook"

  postflight do
    if OS.mac?
      %w[de devedged devedge-dns-webhook].each do |bin|
        system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/#{bin}"]
      end
    end
  end

  caveats <<~EOS
    To get started:
      de install    # set up daemon, mkcert CA, DNS
      de start      # start the background daemon
      de doctor     # verify everything is healthy

    The binaries are not signed by Apple. The post-install hook clears
    the quarantine flag automatically. If macOS still blocks them, run:
      xattr -dr com.apple.quarantine $(brew --caskroom)/devedge
  EOS

  uninstall_postflight do
    # Stop the daemon if running.
    system_command "#{staged_path}/de", args: ["stop"], print_stderr: false
  end
end
