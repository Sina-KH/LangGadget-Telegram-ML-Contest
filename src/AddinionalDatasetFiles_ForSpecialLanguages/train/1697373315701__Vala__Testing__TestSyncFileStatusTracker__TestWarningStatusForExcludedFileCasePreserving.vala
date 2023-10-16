/***********************************************************
This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/

namespace Occ {
namespace Testing {

public class TestWarningStatusForExcludedFileCasePreserving : AbstractTestSyncFileStatusTracker {

    /***********************************************************
    ***********************************************************/
    private TestWarningStatusForExcludedFileCasePreserving () {
        //  FakeFolder fake_folder = new FakeFolder (FileInfo.A12_B12_C12_S12 ());
        //  fake_folder.sync_engine.excluded_files ().add_manual_exclude ("B");
        //  fake_folder.server_error_paths ().append ("A/a1");
        //  fake_folder.local_modifier.append_byte ("A/a1");

        //  fake_folder.sync_once ();
        //  GLib.assert_true (fake_folder.sync_engine.sync_file_status_tracker.file_status ("") == SyncFileStatus.StatusWarning);
        //  GLib.assert_true (fake_folder.sync_engine.sync_file_status_tracker.file_status ("A") == SyncFileStatus.StatusWarning);
        //  GLib.assert_true (fake_folder.sync_engine.sync_file_status_tracker.file_status ("A/a1") == SyncFileStatus.StatusError);
        //  GLib.assert_true (fake_folder.sync_engine.sync_file_status_tracker.file_status ("B") == SyncFileStatus.StatusExcluded);

        //  // Should still get the status for different casing on macOS and Windows.
        //  GLib.assert_true (fake_folder.sync_engine.sync_file_status_tracker.file_status ("a") == Utility.filesystem_case_preserving () ? SyncFileStatus.StatusWarning : SyncFileStatus.StatusNone);
        //  GLib.assert_true (fake_folder.sync_engine.sync_file_status_tracker.file_status ("A/A1") == Utility.filesystem_case_preserving () ? SyncFileStatus.StatusError : SyncFileStatus.StatusNone);
        //  GLib.assert_true (fake_folder.sync_engine.sync_file_status_tracker.file_status ("b") == Utility.filesystem_case_preserving () ? SyncFileStatus.StatusExcluded : SyncFileStatus.StatusNone);
    }

} // class TestWarningStatusForExcludedFileCasePreserving

} // namespace Testing
} // namespace Occ
