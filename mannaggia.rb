class Mannaggia < Formula
  desc "Automatic saint calling for depressed developers, in italian."
  homepage "https://github.com/mattmezza/mannaggia"
  url "https://github.com/mattmezza/mannaggia/archive/v1.0.tar.gz"
  sha256 "844968a5662a2daab15a44e0c3f9667f8d3c4987a9581c812bc96dd232d45968"

  def install
    ln_s "#{sbin}/mannaggia", "./mannaggia.sh"
  end
  test do
    quiet_system "#{sbin}/mannaggia", "-h"
    assert_equal 3, $?.exitstatus
  end
end
