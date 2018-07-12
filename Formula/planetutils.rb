class Planetutils < Formula
  include Language::Python::Virtualenv

  desc "Scripts to maintain your own OpenStreetMap planet"
  homepage "https://github.com/interline-io/planetutils"
  url "https://github.com/interline-io/planetutils.git",
      :tag => "v0.3.2"
  sha256 "1bfed64a51214dd0059b22261da228f37e454568"
  revision 3

  depends_on "osmctools"
  depends_on "osmosis"
  depends_on "python" if MacOS.version <= :snow_leopard # we need Python 2.7

  ###
  # Python packages required for boto3
  # generated using https://github.com/tdsmith/homebrew-pypi-poet
  ###
  resource "boto3" do
    url "https://files.pythonhosted.org/packages/03/ae/d901d36291222b097771a03e42e6e2d9c55a70f8808dedc6fc5ff5af96f9/boto3-1.5.33.tar.gz"
    sha256 "239717ef87f1a073a73000af32bbc6828f50063514d934028bd8dc566c2837a6"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/30/5f/499d676f1048b627ac594a2513acb01d5b32a426a2f474fb6ba95a50c3b3/botocore-1.8.47.tar.gz"
    sha256 "3def0a1ced4cb77624454d77988f64642fd365001fbcedf2c809ce72ec73a406"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/84/f4/5771e41fdf52aabebbadecc9381d11dea0fa34e4759b4071244fa094804c/docutils-0.14.tar.gz"
    sha256 "51e64ef2ebfb29cae1faa133b3710143496eca21c530f3f71424d77687764274"
  end

  resource "futures" do
    url "https://files.pythonhosted.org/packages/1f/9e/7b2ff7e965fc654592269f2906ade1c7d705f1bf25b7d469fa153f7d19eb/futures-3.2.0.tar.gz"
    sha256 "9ec02aa7d674acb8618afb127e27fde7fc68994c0437ad759fa094a574adb265"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/e5/21/795b7549397735e911b032f255cff5fb0de58f96da794274660bca4f58ef/jmespath-0.9.3.tar.gz"
    sha256 "6a81d4c9aa62caf061cb517b4d9ad1dd300374cd4706997aff9cd6aedd61fc64"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/54/bb/f1db86504f7a49e1d9b9301531181b00a1c7325dc85a29160ee3eaa73a54/python-dateutil-2.6.1.tar.gz"
    sha256 "891c38b2a02f5bb1be3e4793866c8df49c7d19baabf9c1bad62547e0b4866aca"
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
    url "https://files.pythonhosted.org/packages/15/d4/2f888fc463d516ff7bf2379a4e9a552fef7f22a94147655d9b1097108248/certifi-2018.1.18.tar.gz"
    sha256 "edbc3f203427eef571f79a7692bb160a2b0f7ccaa31953e99bd17e307cf63f7d"
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
  resource "osmium" do
    url "https://files.pythonhosted.org/packages/7a/eb/63d7af416ee6126c96a3e5c057750e266da5d1eecc108a6fe87cad9e98c9/osmium-2.14.1.tar.gz"
    sha256 "14b8fe5698d39d3926079bc5f5e4b7c369ffc9d8fcc1cc4435daff038d1f2323"
  end

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
