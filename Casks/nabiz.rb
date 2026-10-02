cask "nabiz" do
  version "1.0"
  sha256 "cbf31b5ed89db4c54b0f4e4f5c1fd09547c59dd1cf27961e77ee37c449bdc89f"

  url "https://github.com/alicinaroglu/nabiz/releases/download/v#{version}/Nabiz-#{version}.zip"
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
