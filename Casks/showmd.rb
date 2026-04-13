cask "showmd" do
  version "1.0.1"
  sha256 "71a819ce25facd36891c411a163552af0a2372604bb1b8cf5241b9a318832524"

  url "https://github.com/johannesnagl/showmd/releases/download/v#{version}/showmd-#{version}.zip"
  name "showmd"
  desc "Quick Look extension that renders Markdown beautifully on macOS"
  homepage "https://showmd.yetanother.one"

  depends_on macos: ">= :sequoia"

  app "showmd.app"

  postflight do
    system_command "/usr/bin/qlmanage", args: ["-r"]
  end

  zap trash: [
    "~/Library/Group Containers/group.one.yetanother.showmd",
  ]
end
