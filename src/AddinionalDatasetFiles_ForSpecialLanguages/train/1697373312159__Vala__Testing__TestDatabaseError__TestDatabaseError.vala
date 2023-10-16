namespace Occ {
namespace Testing {

/***********************************************************
@class TestDatabaseError

@details This test will make many iteration, at each
iteration, the iᵗʰ database access will fail. The test
ensure that if there is a failure, the next sync recovers.
And if there was no error, then everything was synchronized
properly.

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestDatabaseError { //: GLib.Object {

    /***********************************************************
    ***********************************************************/
    private TestDatabaseError () {

        //  FileInfo final_state;
        //  for (int count = 0; true; ++count) {
        //      GLib.info ("Starting Iteration " + count.to_string ());

        //      FakeFolder fake_folder = new FakeFolder (FileInfo.A12_B12_C12_S12 ());

        //      // Do a couple of changes
        //      fake_folder.remote_modifier ().insert ("A/a0");
        //      fake_folder.remote_modifier ().append_byte ("A/a1");
        //      fake_folder.remote_modifier ().remove ("A/a2");
        //      fake_folder.remote_modifier ().rename ("S/s1", "S/s1_renamed");
        //      fake_folder.remote_modifier ().mkdir ("D");
        //      fake_folder.remote_modifier ().mkdir ("D/subdir");
        //      fake_folder.remote_modifier ().insert ("D/subdir/file");
        //      fake_folder.local_modifier.insert ("B/b0");
        //      fake_folder.local_modifier.append_byte ("B/b1");
        //      fake_folder.remote_modifier ().remove ("B/b2");
        //      fake_folder.local_modifier.mkdir ("NewDir");
        //      fake_folder.local_modifier.rename ("C", "NewDir/C");

        //      // Set the counter
        //      fake_folder.sync_journal ().autotest_fail_counter = count;

        //      // run the sync
        //      bool result = fake_folder.sync_once ();

        //      GLib.info ("Result of iteration " + count.to_string () + " was " + result);

        //      if (fake_folder.sync_journal ().autotest_fail_counter >= 0) {
        //          // No error was thrown, we are on_signal_finished
        //          GLib.assert_true (result);
        //          GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());
        //          GLib.assert_true (fake_folder.current_remote_state () == final_state);
        //          return;
        //      }

        //      if (!result) {
        //          fake_folder.sync_journal ().autotest_fail_counter = -1;
        //          // Try again
        //          GLib.assert_true (fake_folder.sync_once ());
        //      }

        //      GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());
        //      if (count == 0) {
        //          final_state = fake_folder.current_remote_state ();
        //      } else {
        //          // the final state should be the same for every iteration
        //          GLib.assert_true (fake_folder.current_remote_state () == final_state);
        //      }
        //  }
    }

} // class TestDatabaseError

} // namespace Testing
} // namespace Occ
