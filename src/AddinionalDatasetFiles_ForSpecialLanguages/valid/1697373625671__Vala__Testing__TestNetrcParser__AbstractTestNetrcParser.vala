namespace Occ {
namespace Testing {

/***********************************************************
@class AbstractTestNetrcParser

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public abstract class AbstractTestNetrcParser { //: GLib.Object {

    /***********************************************************
    ***********************************************************/
    protected private AbstractTestNetrcParser () {
        //  GLib.File netrc = new GLib.File (TESTFILE_C);
        //  GLib.assert_true (netrc.open (GLib.IODevice.WriteOnly));
        //  netrc.write ("machine foo login bar password baz\n");
        //  netrc.write ("machine broken login bar2 dontbelonghere password baz2 extratokens dontcare andanother\n");
        //  netrc.write ("machine\nfunnysplit\tlogin bar3 password baz3\n");
        //  netrc.write ("machine frob login \"user with spaces\" password 'space pwd'\n");
        //  GLib.File netrc_with_default = new GLib.File (TESTFILE_WITH_DEFAULT_C);
        //  GLib.assert_true (netrc_with_default.open (GLib.IODevice.WriteOnly));
        //  netrc_with_default.write ("machine foo login bar password baz\n");
        //  netrc_with_default.write ("default login user password pass\n");
        //  GLib.File netrc_empty = new GLib.File (TESTFILE_WITH_EMPTY_C);
        //  GLib.assert_true (netrc_empty.open (GLib.IODevice.WriteOnly));
    }


    /***********************************************************
    ***********************************************************/
    ~AbstractTestNetrcParser () {
        //  GLib.assert_true (GLib.File.remove (TESTFILE_C));
        //  GLib.assert_true (GLib.File.remove (TESTFILE_WITH_DEFAULT_C));
        //  GLib.assert_true (GLib.File.remove (TESTFILE_WITH_EMPTY_C));
    }

} // class AbstractTestNetrcParser

} // namespace Testing
} // namespace Occ
