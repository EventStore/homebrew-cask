cask "luxmark" do
  version "3.1"
  sha256 "eb103ac1bbee170c9fdecb2cd2bc6b70662a0a5f74bcf8e8edf1057d695291c0"

  url "https://github.com/LuxCoreRender/LuxMark/releases/download/luxmark_v#{version}/luxmark-macos64-v#{version}.zip",
      verified: "github.com/LuxCoreRender/LuxMark/"
  appcast "https://github.com/LuxCoreRender/LuxMark/releases.atom"
  name "LuxMark"
  desc "OpenCL benchmark"
  homepage "http://www.luxmark.info/"

  app "LuxMark.app"
end
