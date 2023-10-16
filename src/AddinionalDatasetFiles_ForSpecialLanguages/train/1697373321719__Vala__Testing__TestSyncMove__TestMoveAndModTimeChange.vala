/***********************************************************
This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/

namespace Occ {
namespace Testing {

public class TestMoveAndModTimeChange : AbstractTestSyncMove {

    /***********************************************************
    When a file is moved and the server mtime was not in sync,
    the local mtime should be kept.

    https://github.com/owncloud/client/issues/6629#issuecomment-402450691
    ***********************************************************/
    private TestMoveAndModTimeChange () {
        //  FakeFolder fake_folder = new FakeFolder (FileInfo.A12_B12_C12_S12 ());
        //  OperationCounter counter;
        //  fake_folder.set_server_override (counter.functor ());

        //  // Changing the mtime on the server (without invalidating the etag)
        //  fake_folder.remote_modifier ().find ("A/a1").last_modified = GLib.DateTime.current_date_time_utc ().add_secs (-50000);
        //  fake_folder.remote_modifier ().find ("A/a2").last_modified = GLib.DateTime.current_date_time_utc ().add_secs (-40000);

        //  // Move a few files
        //  fake_folder.remote_modifier ().rename ("A/a1", "A/a1_server_renamed");
        //  fake_folder.local_modifier.rename ("A/a2", "A/a2_local_renamed");

        //  GLib.assert_true (fake_folder.sync_once ());
        //  GLib.assert_true (counter.number_of_get == 0);
        //  GLib.assert_true (counter.number_of_put == 0);
        //  GLib.assert_true (counter.number_of_move == 1);
        //  GLib.assert_true (counter.number_of_delete == 0);

        //  // Another sync should do nothing
        //  GLib.assert_true (fake_folder.sync_once ());
        //  GLib.assert_true (counter.number_of_get == 0);
        //  GLib.assert_true (counter.number_of_put == 0);
        //  GLib.assert_true (counter.number_of_move == 1);
        //  GLib.assert_true (counter.number_of_delete == 0);

        //  GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());
    }

} // class TestMoveAndModTimeChange

} // namespace Testing
} // namespace Occ
