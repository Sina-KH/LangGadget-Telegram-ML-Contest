namespace Occ {
namespace Testing {

/***********************************************************
@class TestVersionOfInstalledBinary

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestVersionOfInstalledBinary : AbstractTestUtility {

    /***********************************************************
    ***********************************************************/
    private TestVersionOfInstalledBinary () {
        //  if (is_linux ()) {
        //      // pass the command client from our build directory
        //      // this is a bit inaccurate as it does not test the "real thing"
        //      // but command and gui have the same --version handler by now
        //      // and command works without X in CI
        //      string version = version_of_installed_binary (OWNCLOUD_BIN_PATH + "/" + APPLICATION_EXECUTABLE + "command");
        //      GLib.debug ("Version of installed Nextcloud: " + version);
        //      GLib.assert_true (!version == "");

        //      GLib.Regex regular_expression = new GLib.Regex (GLib.Regex.anchored_pattern (APPLICATION_SHORTNAME + " ( version \d+\.\d+\.\d+.*)"));
        //      GLib.assert_true (regular_expression.match (version).has_match ());
        //  } else {
        //      GLib.assert_true (version_of_installed_binary () == "");
        //  }
    }

} // class TestVersionOfInstalledBinary

} // namespace Testing
} // namespace Occ
