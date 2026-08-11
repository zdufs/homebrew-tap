cask "clicker" do
  version "1.4.1"
  sha256 "d8d24586bb3692b3bd2faaec29c0ecdaa4d7436ce77e481f179a5ad29a1108a1"

  url "https://github.com/ribren/clicker/releases/download/v#{version}/Clicker-macOS.zip"
  name "Clicker"
  desc "Menu-bar remote for Apple TV"
  homepage "https://github.com/ribren/clicker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Clicker.app"

  zap trash: [
    "~/Library/Application Support/Clicker",
    "~/Library/Preferences/info.backpocket.clicker.plist",
  ]
end
