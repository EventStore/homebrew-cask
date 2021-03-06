cask "kode54-cog" do
  version "1312,58b6ea588"
  sha256 "d99777b26b18fb04216bf144ef54ed13dfc2e311502d46df51c903211723d87b"

  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip",
      verified: "losno.co/cog/"
  appcast "https://balde.losno.co/cog/mercury.xml"
  name "Cog"
  homepage "https://kode54.net/cog/"

  auto_updates true

  app "Cog.app"
end
