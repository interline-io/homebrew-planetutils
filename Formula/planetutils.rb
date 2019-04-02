class Planetutils < Formula
  include Language::Python::Virtualenv

  desc "Scripts to maintain your own OpenStreetMap planet"
  homepage "https://github.com/interline-io/planetutils"
  url "https://github.com/interline-io/planetutils.git",
      :tag => "v0.4.8a"
  sha256 "07554a4f7d2f30c8a3967d732997f5e1076205d0"
 
  depends_on "osmctools"
  depends_on "osmosis"
  depends_on "gdal"
  depends_on "python3"
  # TODO: fix this
  # depends_on "boost-python3" # for pyosmium

  ###
  # Python packages required for future
  # generated using https://github.com/tdsmith/homebrew-pypi-poet
  ###
  resource "future" do
    url "https://files.pythonhosted.org/packages/00/2b/8d082ddfed935f3608cc61140df6dcbf0edea1bc3ab52fb6c29ae3e81e85/future-0.16.0.tar.gz"
    sha256 "e39ced1ab767b5936646cedba8bcce582398233d6a627067d4c6a454c90cfedb"
  end

  ###
  # Python packages required for boto3
  # generated using https://github.com/tdsmith/homebrew-pypi-poet
  ###
  resource "boto3" do
    url "https://files.pythonhosted.org/packages/f0/f5/55d4e19021cf4b6ee716861c1eb2d7a58c964b0518d77af732acde42b27f/boto3-1.7.57.tar.gz"
    sha256 "e98692ba74c85ed45b7cf4cfbafd8676ca85a9313f2433d4c3275f7dd9e80263"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/bf/d5/bf00026563a628a96b3f32ab7831dfa06360ba0712df436276a936baa5dd/botocore-1.10.57.tar.gz"
    sha256 "f15a09885492ea8b4c5d01d44af11e9938c9c17e09e1fe0d53701023023b2e56"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/84/f4/5771e41fdf52aabebbadecc9381d11dea0fa34e4759b4071244fa094804c/docutils-0.14.tar.gz"
    sha256 "51e64ef2ebfb29cae1faa133b3710143496eca21c530f3f71424d77687764274"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/e5/21/795b7549397735e911b032f255cff5fb0de58f96da794274660bca4f58ef/jmespath-0.9.3.tar.gz"
    sha256 "6a81d4c9aa62caf061cb517b4d9ad1dd300374cd4706997aff9cd6aedd61fc64"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/c5/39/4da7c2dbc4f023fba5fb2325febcadf0d0ce0efdc8bd12083a0f65d20653/python-dateutil-2.7.2.tar.gz"
    sha256 "9d8074be4c993fbe4947878ce593052f71dac82932a677d49194d8ce9778002e"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/9a/66/c6a5ae4dbbaf253bd662921b805e4972451a6d214d0dc9fb3300cb642320/s3transfer-0.1.13.tar.gz"
    sha256 "90dc18e028989c609146e241ea153250be451e05ecc0c2832565231dacdf59c1"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
  end

  ###
  # Python packages required for requests
  # generated using https://github.com/tdsmith/homebrew-pypi-poet
  ###
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/4d/9c/46e950a6f4d6b4be571ddcae21e7bc846fcbb88f1de3eff0f6dd0a6be55d/certifi-2018.4.16.tar.gz"
    sha256 "13e698f54293db9f89122b0581843a782ad0934a4fe0172d2a980ba77fc61bb7"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f4/bd/0467d62790828c23c47fc1dfa1b1f052b24efdf5290f071c7a91d0d82fd3/idna-2.6.tar.gz"
    sha256 "2c6a5de3089009e3da7c5dde64a141dbc8551d5b7f6cf4ed7c2568d0cc520a8f"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/b0/e1/eab4fc3752e3d240468a8c0b284607899d2fbfb236a56b7377a329aa8d09/requests-2.18.4.tar.gz"
    sha256 "9c443e7324ba5b85070c4a818ade28bfabedf16ea10206da1132edaa6dda237e"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/ee/11/7c59620aceedcc1ef65e156cc5ce5a24ef87be4107c2b74458464e437a5d/urllib3-1.22.tar.gz"
    sha256 "cc44da8e1145637334317feebd728bd869a35285b93cbb4cca2577da7e62db4f"
  end

  ###
  # Python packages required for osmium
  # generated using https://github.com/tdsmith/homebrew-pypi-poet
  ###
  # TODO: fix this
  # resource "osmium" do
  #   url "https://files.pythonhosted.org/packages/f1/74/4b06a023c19006133309bfbc5460bede50f451089c01ca7fa9caa1d06bf4/osmium-2.14.3.tar.gz"
  #   sha256 "df4052d2aa7e66a010d11768bea6f139c60f1b31ef23a8f81d1698c62ce5674e"
  # end

  def install
    virtualenv_install_with_resources
  end

  test do
    # TODO: verify a command can work, like:
    # output = shell_output("#{bin}/valhalla_service", 1)
    # assert_match "Usage: #{bin}/valhalla_service config/file.json", output
    system "true"
  end
end
