/***********************************************************
This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/

namespace Occ {
namespace Testing {

public class TestDirectoryDownloadWithError : AbstractTestSyncEngine {

    /***********************************************************
    ***********************************************************/
    private TestDirectoryDownloadWithError () {
        //  FakeFolder fake_folder = new FakeFolder (FileInfo.A12_B12_C12_S12 ());
        //  ItemCompletedSpy complete_spy = new ItemCompletedSpy (fake_folder);
        //  fake_folder.remote_modifier ().mkdir ("Y");
        //  fake_folder.remote_modifier ().mkdir ("Y/Z");
        //  fake_folder.remote_modifier ().insert ("Y/Z/d0");
        //  fake_folder.remote_modifier ().insert ("Y/Z/d1");
        //  fake_folder.remote_modifier ().insert ("Y/Z/d2");
        //  fake_folder.remote_modifier ().insert ("Y/Z/d3");
        //  fake_folder.remote_modifier ().insert ("Y/Z/d4");
        //  fake_folder.remote_modifier ().insert ("Y/Z/d5");
        //  fake_folder.remote_modifier ().insert ("Y/Z/d6");
        //  fake_folder.remote_modifier ().insert ("Y/Z/d7");
        //  fake_folder.remote_modifier ().insert ("Y/Z/d8");
        //  fake_folder.remote_modifier ().insert ("Y/Z/d9");
        //  fake_folder.server_error_paths ().append ("Y/Z/d2", 503);
        //  fake_folder.server_error_paths ().append ("Y/Z/d3", 503);
        //  GLib.assert_true (!fake_folder.sync_once ());
        //  GLib.Application.process_events (); // should not crash

        //  GLib.List<string> seen;
        //  foreach (GLib.List<GLib.Variant> args in complete_spy) {
        //      var item = args[0].value<LibSync.SyncFileItem> ();
        //      GLib.debug () + item.file + item.is_directory + item.status;
        //      GLib.assert_true (!seen.contains (item.file)); // signal only sent once per item
        //      seen.insert (item.file);
        //      if (item.file == "Y/Z/d2") {
        //          GLib.assert_true (item.status == LibSync.SyncFileItem.Status.NORMAL_ERROR);
        //      } else if (item.file == "Y/Z/d3") {
        //          GLib.assert_true (item.status != LibSync.SyncFileItem.Status.SUCCESS);
        //      } else if (!item.is_directory) {
        //          GLib.assert_true (item.status == LibSync.SyncFileItem.Status.SUCCESS);
        //      }
        //  }
    }

} // class TestDirectoryDownloadWithError

} // namespace Testing
} // namespace Occ
