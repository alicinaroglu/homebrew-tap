cask "nabiz" do
  version "1.1.2"
  sha256 "25f53e589cd2b98da62dff14715be3db34f7287f0a3e22ce09489de84c8848e7"

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
