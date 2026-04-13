cask "holdor" do
  version "1.4.3"
  sha256 "cdf50442720ad3c95849f4f0275d8216d3331d84f5885e9d17c1257efd211028"

  url "https://github.com/johannesnagl/holdor/releases/download/v#{version}/Holdor-#{version}-arm64.dmg"
  name "Holdor"
  desc "Menu bar app that prevents macOS sleep while AI agents are running"
  homepage "https://holdor.yetanother.one"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Holdor.app"

  zap trash: [
    "~/Library/Preferences/app.holdor.Holdor.plist",
  ]
end
