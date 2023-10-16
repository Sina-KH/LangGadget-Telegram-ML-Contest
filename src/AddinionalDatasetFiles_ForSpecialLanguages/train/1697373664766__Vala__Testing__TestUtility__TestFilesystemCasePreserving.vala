namespace Occ {
namespace Testing {

/***********************************************************
@class TestFilesystemCasePreserving

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestFilesystemCasePreserving : AbstractTestUtility {

    /***********************************************************
    ***********************************************************/
    private TestFilesystemCasePreserving () {
        //  GLib.assert_true (is_mac () || is_windows () ? filesystem_case_preserving () : ! filesystem_case_preserving ());
        //  GLib.ScopedValueRollback<bool> scope = new GLib.ScopedValueRollback<bool> (filesystem_case_preserving_override);
        //  filesystem_case_preserving_override = true;
        //  GLib.assert_true (filesystem_case_preserving ());
        //  filesystem_case_preserving_override = false;
        //  GLib.assert_true (! filesystem_case_preserving ());
    }

} // class TestFilesystemCasePreserving

} // namespace Testing
} // namespace Occ
