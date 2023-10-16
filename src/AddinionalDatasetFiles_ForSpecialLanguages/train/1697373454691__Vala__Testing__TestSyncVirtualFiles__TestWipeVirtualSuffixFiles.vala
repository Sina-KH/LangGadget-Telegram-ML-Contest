namespace Occ {
namespace Testing {

/***********************************************************
@class TestWipeVirtualSuffixFiles

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestWipeVirtualSuffixFiles : AbstractTestSyncVirtualFiles {

    /***********************************************************
    ***********************************************************/
    private TestWipeVirtualSuffixFiles () {
        //  FakeFolder fake_folder = new FakeFolder (new FileInfo ());
        //  set_up_vfs (fake_folder);

        //  // Create a suffix-vfs baseline

        //  fake_folder.remote_modifier ().mkdir ("A");
        //  fake_folder.remote_modifier ().mkdir ("A/B");
        //  fake_folder.remote_modifier ().insert ("f1");
        //  fake_folder.remote_modifier ().insert ("A/a1");
        //  fake_folder.remote_modifier ().insert ("A/a3");
        //  fake_folder.remote_modifier ().insert ("A/B/b1");
        //  fake_folder.local_modifier.mkdir ("A");
        //  fake_folder.local_modifier.mkdir ("A/B");
        //  fake_folder.local_modifier.insert ("f2");
        //  fake_folder.local_modifier.insert ("A/a2");
        //  fake_folder.local_modifier.insert ("A/B/b2");

        //  GLib.assert_true (fake_folder.sync_once ());

        //  GLib.assert_true (fake_folder.current_local_state ().find ("f1" + DVSUFFIX));
        //  GLib.assert_true (fake_folder.current_local_state ().find ("A/a1" + DVSUFFIX));
        //  GLib.assert_true (fake_folder.current_local_state ().find ("A/a3" + DVSUFFIX));
        //  GLib.assert_true (fake_folder.current_local_state ().find ("A/B/b1" + DVSUFFIX));

        //  // Make local changes to a3
        //  fake_folder.local_modifier.remove ("A/a3" + DVSUFFIX);
        //  fake_folder.local_modifier.insert ("A/a3" + DVSUFFIX, 100);

        //  // Now wipe the virtuals

        //  LibSync.SyncEngine.wipe_virtual_files (fake_folder.local_path, fake_folder.sync_journal (), fake_folder.sync_engine.sync_options ().vfs);

        //  GLib.assert_true (!fake_folder.current_local_state ().find ("f1" + DVSUFFIX));
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("A/a1" + DVSUFFIX));
        //  GLib.assert_true (fake_folder.current_local_state ().find ("A/a3" + DVSUFFIX));
        //  GLib.assert_true (!fake_folder.current_local_state ().find ("A/B/b1" + DVSUFFIX));

        //  fake_folder.switch_to_vfs ((Common.AbstractVfs)(new VfsOff ()));
        //  GLib.assert_true (fake_folder.sync_once ());
        //  GLib.assert_true (fake_folder.current_remote_state ().find ("A/a3" + DVSUFFIX)); // regular upload
        //  GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());
    }

} // class TestWipeVirtualSuffixFiles

} // namespace Testing
} // namespace Occ
