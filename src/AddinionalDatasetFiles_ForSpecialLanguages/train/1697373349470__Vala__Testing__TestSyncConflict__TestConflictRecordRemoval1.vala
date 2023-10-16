/***********************************************************
This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/

namespace Occ {
namespace Testing {

public class TestConflictRecordRemoval1 : AbstractTestSyncConflict {

    /***********************************************************
    Check that conflict records are removed when the file is gone
    ***********************************************************/
    private TestConflictRecordRemoval1 () {
        //  FakeFolder fake_folder = new FakeFolder (FileInfo.A12_B12_C12_S12 ());
        //  fake_folder.sync_engine.account.set_capabilities ({ { "upload_donflict_files", true } });
        //  GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());

        //  // Make conflict records
        //  ConflictRecord conflict_record;
        //  conflict_record.path = "A/a1";
        //  fake_folder.sync_journal ().set_conflict_record (conflict_record);
        //  conflict_record.path = "A/a2";
        //  fake_folder.sync_journal ().set_conflict_record (conflict_record);

        //  // A nothing-to-sync keeps them alive
        //  GLib.assert_true (fake_folder.sync_once ());
        //  GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());
        //  GLib.assert_true (fake_folder.sync_journal ().conflict_record ("A/a1").is_valid);
        //  GLib.assert_true (fake_folder.sync_journal ().conflict_record ("A/a2").is_valid);

        //  // When the file is removed, the record is removed too
        //  fake_folder.local_modifier.remove ("A/a2");
        //  GLib.assert_true (fake_folder.sync_once ());
        //  GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());
        //  GLib.assert_true (fake_folder.sync_journal ().conflict_record ("A/a1").is_valid);
        //  GLib.assert_true (!fake_folder.sync_journal ().conflict_record ("A/a2").is_valid);
    }

} // class TestConflictRecordRemoval1

} // namespace Testing
} // namespace Occ
