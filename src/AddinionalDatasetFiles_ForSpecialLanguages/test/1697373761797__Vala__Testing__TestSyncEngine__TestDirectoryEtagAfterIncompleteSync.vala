/***********************************************************
This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/

namespace Occ {
namespace Testing {

public class TestDirectoryEtagAfterIncompleteSync : AbstractTestSyncEngine {

    /***********************************************************
    Verify that an incompletely propagated directory doesn't
    have the server's etag stored in the database yet.
    ***********************************************************/
    private TestDirectoryEtagAfterIncompleteSync () {
        //  FakeFolder fake_folder = new FakeFolder (new FileInfo ());
        //  GLib.SignalSpy finished_spy = new GLib.SignalSpy (
        //      fake_folder.sync_engine,
        //      SIGNAL (on_signal_finished (bool))
        //  );
        //  fake_folder.server_error_paths ().append ("NewFolder/foo");
        //  fake_folder.remote_modifier ().mkdir ("NewFolder");
        //  fake_folder.remote_modifier ().insert ("NewFolder/foo");
        //  GLib.assert_true (!fake_folder.sync_once ());

        //  Common.SyncJournalFileRecord record;
        //  fake_folder.sync_journal ().get_file_record ("NewFolder", record);
        //  GLib.assert_true (record.is_valid);
        //  GLib.assert_true (record.etag == "this.invalid_");
        //  GLib.assert_true (!record.file_identifier == "");
    }

} // class TestDirectoryEtagAfterIncompleteSync

} // namespace Testing
} // namespace Occ
