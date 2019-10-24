cask 'eventstore' do
  version '5.0.3'
  sha256 'e1c0a1009062d66101ab6a4e7ddd1b875e6bb9c9d3d3cea449918b29eff39528'

  url "https://eventstore.org/downloads/EventStore-OSS-MacOS-macOS-v#{version}.tar.gz"
  name 'Event Store'
  homepage 'https://eventstore.org/'

  binary "EventStore-OSS-MacOSX-v#{version}/eventstore"
  binary "EventStore-OSS-MacOSX-v#{version}/eventstore-testclient"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  eventstore_shimscript = "#{staged_path}/EventStore-OSS-MacOSX-v#{version}/eventstore"
  testclient_shimscript = "#{staged_path}/EventStore-OSS-MacOSX-v#{version}/eventstore-testclient"

  preflight do
    IO.write eventstore_shimscript, <<~EOS
      #!/bin/sh
      cd "#{staged_path}/EventStore-OSS-MacOSX-v#{version}"
      exec "#{staged_path}/EventStore-OSS-MacOSX-v#{version}/run-node.sh" "$@"
    EOS

    IO.write testclient_shimscript, <<~EOS
      #!/bin/sh
      exec "#{staged_path}/EventStore-OSS-MacOSX-v#{version}/testclient" "$@"
    EOS
  end
end
