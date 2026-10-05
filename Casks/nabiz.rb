cask "nabiz" do
  version "1.1.1"
  sha256 "1b286d0722777b0c280521b462a83e30bd85b48b18c9e92127e535e85a2af797"

  url "https://github.com/alicinaroglu/nabiz/releases/download/v#{version}/Nabiz.dmg"
  name "Nabız"
  desc "Menu bar monitor for CPU, memory, disk and temperature, built for developers"
  homepage "https://alicinaroglu.github.io/nabiz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Nabız.app"

  zap trash: [
    "~/Library/Caches/app.nabiz.mac",
    "~/Library/HTTPStorages/app.nabiz.mac",
    "~/Library/Preferences/app.nabiz.mac.plist",
  ]
end
