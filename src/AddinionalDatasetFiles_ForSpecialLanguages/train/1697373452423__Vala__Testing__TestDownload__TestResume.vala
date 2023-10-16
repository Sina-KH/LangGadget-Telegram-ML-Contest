namespace Occ {
namespace Testing {

/***********************************************************
@class TestResume

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestResume { //: GLib.Object {

    const int64 STOP_AFTER = 3123668;

    /***********************************************************
    ***********************************************************/
    private TestResume () {
        //  FakeFolder fake_folder = new FakeFolder (FileInfo.A12_B12_C12_S12 ());
        //  fake_folder.sync_engine.set_ignore_hidden_files (true);
        //  GLib.SignalSpy complete_spy = new GLib.SignalSpy (
        //      fake_folder.sync_engine,
        //      signal_item_completed (LibSync.SyncFileItem)
        //  );
        //  var size = 30 * 1000 * 1000;
        //  fake_folder.remote_modifier ().insert ("A/a0", size);

        //  // First, download only the first 3 MB of the file
        //  fake_folder.set_server_override (this.override_delegate_resume1);

        //  GLib.assert_true (!fake_folder.sync_once ()); // The sync must fail because not all the file was downloaded
        //  GLib.assert_true (get_item (complete_spy, "A/a0").status == LibSync.SyncFileItem.Status.SOFT_ERROR);
        //  GLib.assert_true (get_item (complete_spy, "A/a0").error_string == "The file could not be downloaded completely.");
        //  GLib.assert_true (fake_folder.sync_engine.is_another_sync_needed ());

        //  // Now, we need to restart, this time, it should resume.
        //  string ranges;
        //  fake_folder.set_server_override (this.override_delegate_resume2);

        //  GLib.assert_true (fake_folder.sync_once ()); // now this succeeds
        //  GLib.assert_true (ranges == "bytes=" + STOP_AFTER.to_string () + "-");
        //  GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());
    }


    private GLib.InputStream override_delegate_resume1 (Soup.Operation operation, Soup.Request request, GLib.OutputStream device) {
        //  if (operation == Soup.GetOperation && request.url.path.has_suffix ("A/a0")) {
        //      return new BrokenFakeGetReply (fake_folder.remote_modifier (), operation, request, this);
        //  }
        //  return null;
    }


    private GLib.InputStream override_delegate_resume2 (Soup.Operation operation, Soup.Request request, GLib.OutputStream device) {
        //  if (operation == Soup.GetOperation && request.url.path.has_suffix ("A/a0")) {
        //      ranges = request.raw_header ("Range");
        //  }
        //  return null;
    }

} // class TestResume

} // namespace Testing
} // namespace Occ
