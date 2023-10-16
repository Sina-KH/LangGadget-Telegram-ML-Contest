namespace Occ {
namespace Testing {

/***********************************************************
@class TestCSyncExcludedTraversalPerDirectory

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestCSyncExcludedTraversalPerDirectory : AbstractTestCSyncExclude {

    /***********************************************************
    ***********************************************************/
    private TestCSyncExcludedTraversalPerDirectory () {
        //  base ();
        //  GLib.assert_true (check_file_traversal ("/") == CSync.ExcludedFiles.Type.NOT_EXCLUDED);

        //  /* path wildcards */
        //  excluded_files.add_manual_exclude ("*/*.tex.temporary", "/latex/");
        //  GLib.assert_true (check_file_traversal ("latex/my_manuscript.tex.temporary") == CSync.ExcludedFiles.Type.NOT_EXCLUDED);
        //  GLib.assert_true (check_file_traversal ("latex/songbook/my_manuscript.tex.temporary") == CSync.ExcludedFiles.Type.LIST);
    }

} // class TestCSyncExcludedTraversalPerDirectory

} // namespace Testing
} // namespace Occ
