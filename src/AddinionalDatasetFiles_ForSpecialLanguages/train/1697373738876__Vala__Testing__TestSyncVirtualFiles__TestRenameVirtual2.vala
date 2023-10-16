namespace Occ {
namespace Testing {

/***********************************************************
@class TestRenameVirtual2

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestRenameVirtual2 : AbstractTestSyncVirtualFiles {

    /***********************************************************
    ***********************************************************/
    private TestRenameVirtual2 () {
        //  FakeFolder fake_folder = new FakeFolder (new FileInfo ());
        //  set_up_vfs (fake_folder);
        //  ItemCompletedSpy complete_spy = new ItemCompletedSpy (fake_folder);

        //  TestSyncVirtualFiles.clean_up_test_rename_virtual2 (complete_spy);

        //  fake_folder.remote_modifier ().insert ("case3", 128, 'C');
        //  fake_folder.remote_modifier ().insert ("case4", 256, 'C');
        //  fake_folder.remote_modifier ().insert ("case5", 256, 'C');
        //  fake_folder.remote_modifier ().insert ("case6", 256, 'C');
        //  GLib.assert_true (fake_folder.sync_once ());

        //  trigger_download (fake_folder, "case4");
        //  trigger_download (fake_folder, "case6");
        //  GLib.assert_true (fake_folder.sync_once ());

        //  GLib.assert_true (fake_folder.current_local_state ().find ("case3" + DVSUFFIX));
        //  GLib.assert_true (fake_folder.current_local_state ().find ("case4"));
        //  GLib.assert_true (fake_folder.current_local_state ().find ("case5" + DVSUFFIX));
        //  GLib.assert_true (fake_folder.current_local_state ().find ("case6"));
        //  TestSyncVirtualFiles.clean_up_test_rename_virtual2 (complete_spy);

        //  // Case 1 : foo . bar (tested elsewhere)
        //  // Case 2 : foo.oc . bar.oc (tested elsewhere)

        //  // Case 3 : foo.oc . bar (database unchanged)
        //  fake_folder.local_modifier.rename ("case3" + DVSUFFIX, "case3-rename");

        //  // Case 4 : foo . bar.oc (database unchanged)
        //  fake_folder.local_modifier.rename ("case4", "case4-rename" + DVSUFFIX);

        //  // Case 5 : foo.oc . bar.oc (database hydrate)
        //  fake_folder.local_modifier.rename ("case5" + DVSUFFIX, "case5-rename" + DVSUFFIX);
        //  trigger_download (fake_folder, "case5");

        //  // Case 6 : foo . bar (database dehydrate)
        //  fake_folder.local_modifier.rename ("case6", "case6-rename");
        //  mark_for_dehydration (fake_folder, "case6");

        //  GLib.assert_true (fake_folder.sync_once ());

        //  // Case 3 : the rename went though, hydration is forgotten
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("case3"));
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("case3" + DVSUFFIX));
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("case3-rename"));
        //  GLib.assert_true (fake_folder.current_local_state ().find ("case3-rename" + DVSUFFIX));
        //  GLib.assert_true (!fake_folder.current_remote_state ().find ("case3"));
        //  GLib.assert_true (fake_folder.current_remote_state ().find ("case3-rename"));
        //  GLib.assert_true (item_instruction (complete_spy, "case3-rename" + DVSUFFIX, CSync.SyncInstructions.RENAME));
        //  GLib.assert_true (database_record (fake_folder, "case3-rename" + DVSUFFIX).type == ItemType.VIRTUAL_FILE);

        //  // Case 4 : the rename went though, dehydration is forgotten
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("case4"));
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("case4" + DVSUFFIX));
        //  GLib.assert_true (fake_folder.current_local_state ().find ("case4-rename"));
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("case4-rename" + DVSUFFIX));
        //  GLib.assert_true (!fake_folder.current_remote_state ().find ("case4"));
        //  GLib.assert_true (fake_folder.current_remote_state ().find ("case4-rename"));
        //  GLib.assert_true (item_instruction (complete_spy, "case4-rename", CSync.SyncInstructions.RENAME));
        //  GLib.assert_true (database_record (fake_folder, "case4-rename").type == ItemType.FILE);

        //  // Case 5 : the rename went though, hydration is forgotten
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("case5"));
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("case5" + DVSUFFIX));
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("case5-rename"));
        //  GLib.assert_true (fake_folder.current_local_state ().find ("case5-rename" + DVSUFFIX));
        //  GLib.assert_true (!fake_folder.current_remote_state ().find ("case5"));
        //  GLib.assert_true (fake_folder.current_remote_state ().find ("case5-rename"));
        //  GLib.assert_true (item_instruction (complete_spy, "case5-rename" + DVSUFFIX, CSync.SyncInstructions.RENAME));
        //  GLib.assert_true (database_record (fake_folder, "case5-rename" + DVSUFFIX).type == ItemType.VIRTUAL_FILE);

        //  // Case 6 : the rename went though, dehydration is forgotten
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("case6"));
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("case6" + DVSUFFIX));
        //  GLib.assert_true (fake_folder.current_local_state ().find ("case6-rename"));
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("case6-rename" + DVSUFFIX));
        //  GLib.assert_true (!fake_folder.current_remote_state ().find ("case6"));
        //  GLib.assert_true (fake_folder.current_remote_state ().find ("case6-rename"));
        //  GLib.assert_true (item_instruction (complete_spy, "case6-rename", CSync.SyncInstructions.RENAME));
        //  GLib.assert_true (database_record (fake_folder, "case6-rename").type == ItemType.FILE);
    }


    /***********************************************************
    ***********************************************************/
    private static void clean_up_test_rename_virtual2 (ItemCompletedSpy complete_spy) {
        //  complete_spy = "";
    }

} // class
} // namespace Testing
} // namespace Occ
