cask "switchboard" do
  version "0.1.0"
  sha256 "7fb18ed31c230135d12aba146ed10a547d96e7e0e78d39b06f5f1e40fa7227cf"

  url "https://github.com/adamsilverstein/claude-switchboard/releases/download/v#{version}/Switchboard-#{version}.zip"
  name "Switchboard"
  desc "Keyboard-driven picker for live Claude Code agents"
  homepage "https://github.com/adamsilverstein/claude-switchboard"

  depends_on :macos

  app "Switchboard.app"

  caveats <<~CAVEATS
    Switchboard.app is ad-hoc signed, not notarized, so macOS blocks the
    first launch. Allow it once with:

      xattr -dr com.apple.quarantine "#{appdir}/Switchboard.app"

    or open it, then choose Open Anyway in System Settings > Privacy & Security.
  CAVEATS
end
