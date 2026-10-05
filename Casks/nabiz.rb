cask "nabiz" do
  version "1.1"
  sha256 "fe4856f1e1af412749704ac7abf8f16f4f7715520f24a76eb970aa058a946af3"

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
