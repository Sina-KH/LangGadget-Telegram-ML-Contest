namespace Occ {
namespace Testing {

/***********************************************************
@class TestCSyncIsWindowsReservedWord

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestCSyncIsWindowsReservedWord : AbstractTestCSyncExclude {

    /***********************************************************
    ***********************************************************/
    private TestCSyncIsWindowsReservedWord () {

        //  GLib.assert_true (csync_is_windows_reserved_word ("CON"));
        //  GLib.assert_true (csync_is_windows_reserved_word ("con"));
        //  GLib.assert_true (csync_is_windows_reserved_word ("CON."));
        //  GLib.assert_true (csync_is_windows_reserved_word ("con."));
        //  GLib.assert_true (csync_is_windows_reserved_word ("CON.ference"));
        //  GLib.assert_true (!csync_is_windows_reserved_word ("CONference"));
        //  GLib.assert_true (!csync_is_windows_reserved_word ("conference"));
        //  GLib.assert_true (!csync_is_windows_reserved_word ("conf.erence"));
        //  GLib.assert_true (!csync_is_windows_reserved_word ("co"));

        //  GLib.assert_true (csync_is_windows_reserved_word ("COM2"));
        //  GLib.assert_true (csync_is_windows_reserved_word ("com2"));
        //  GLib.assert_true (csync_is_windows_reserved_word ("COM2."));
        //  GLib.assert_true (csync_is_windows_reserved_word ("com2."));
        //  GLib.assert_true (csync_is_windows_reserved_word ("COM2.ference"));
        //  GLib.assert_true (!csync_is_windows_reserved_word ("COM2ference"));
        //  GLib.assert_true (!csync_is_windows_reserved_word ("com2ference"));
        //  GLib.assert_true (!csync_is_windows_reserved_word ("com2f.erence"));
        //  GLib.assert_true (!csync_is_windows_reserved_word ("com"));

        //  GLib.assert_true (csync_is_windows_reserved_word ("CLOCK$"));
        //  GLib.assert_true (csync_is_windows_reserved_word ("$Recycle.Bin"));
        //  GLib.assert_true (csync_is_windows_reserved_word ("ClocK$"));
        //  GLib.assert_true (csync_is_windows_reserved_word ("$recycle.bin"));

        //  GLib.assert_true (csync_is_windows_reserved_word ("A:"));
        //  GLib.assert_true (csync_is_windows_reserved_word ("a:"));
        //  GLib.assert_true (csync_is_windows_reserved_word ("z:"));
        //  GLib.assert_true (csync_is_windows_reserved_word ("Z:"));
        //  GLib.assert_true (csync_is_windows_reserved_word ("M:"));
        //  GLib.assert_true (csync_is_windows_reserved_word ("m:"));
    }


    /***********************************************************
    ***********************************************************/
    private static bool csync_is_windows_reserved_word (string filename) {
        //  string s = filename;
        //  //  extern bool csync_is_windows_reserved_word (/* GLib.StringRef */ string filename);
        //  return csync_is_windows_reserved_word (s);
    }

} // class TestCSyncIsWindowsReservedWord

} // namespace Testing
} // namespace Occ
