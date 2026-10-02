class Planetutils < Formula
  desc "Maintain, cut, convert and download OpenStreetMap planets and extracts"
  homepage "https://github.com/interline-io/planetutils"
  url "https://github.com/interline-io/planetutils/releases/download/v1.0.0/interline_planetutils-1.0.0-py3-none-any.whl"
  sha256 "d6acb78471c0f7d6dec2685d0e8549b94c1b8df21ea1080cd7d7cfba4f15615a"
  license "MIT"

  # osm_planet_extract (osmium is its default toolchain) and
  # osm_extract_convert shell out to osmium-tool; everything else runs from
  # Python wheels. For --toolchain=osmosis or osmctools, install those
  # formulae separately.
  depends_on "osmium-tool"
  depends_on "python@3.13"

  def install
    python = Formula["python@3.13"].opt_bin/"python3.13"
    system python, "-m", "venv", libexec
    # The dependencies (osmium, rasterio, requests, urllib3) install as
    # prebuilt wheels from PyPI; rasterio's bundles GDAL, so no source builds.
    # Homebrew stages the wheel into the build directory under its own
    # name; pip rejects the hashed name of the copy in Homebrew's cache.
    system libexec/"bin/pip", "install", "--quiet", Dir["*.whl"].first
    bin.install_symlink Dir[libexec/"bin/{osm,elevation,valhalla}_*"]
  end

  test do
    %w[
      osm_planet_update osm_planet_extract osm_planet_get_timestamp
      osm_extract_download osm_extract_convert
      elevation_tile_download elevation_tile_merge
      valhalla_tilepack_download valhalla_tilepack_list
    ].each do |cmd|
      assert_match "usage:", shell_output("#{bin}/#{cmd} --help")
    end

    (testpath/"tiny.osm").write <<~XML
      <?xml version="1.0" encoding="UTF-8"?>
      <osm version="0.6" generator="test">
        <node id="1" version="1" timestamp="2026-01-01T00:00:00Z" lat="0.5" lon="0.5">
          <tag k="amenity" v="cafe"/>
        </node>
        <node id="2" version="1" timestamp="2026-01-01T00:00:00Z" lat="5" lon="5">
          <tag k="amenity" v="bar"/>
        </node>
      </osm>
    XML
    system bin/"osm_planet_extract", "--bbox=0,0,1,1", "--name=box", "tiny.osm"
    system bin/"osm_extract_convert", "box.osm.pbf"
    geojson = (testpath/"box.geojson").read
    assert_match "cafe", geojson
    refute_match "bar", geojson
  end
end
