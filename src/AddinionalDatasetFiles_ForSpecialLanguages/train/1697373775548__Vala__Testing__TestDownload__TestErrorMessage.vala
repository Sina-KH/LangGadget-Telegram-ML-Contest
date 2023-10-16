namespace Occ {
namespace Testing {

/***********************************************************
@class TestErrorMessage

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestErrorMessage { //: GLib.Object {

    /***********************************************************
    This test's main goal is to test that the error string from
    the server is shown in the UI.
    ***********************************************************/
    private TestErrorMessage () {

        //  FakeFolder fake_folder = new FakeFolder (FileInfo.A12_B12_C12_S12 ());
        //  fake_folder.sync_engine.set_ignore_hidden_files (true);
        //  GLib.SignalSpy complete_spy = new GLib.SignalSpy (
        //      fake_folder.sync_engine,
        //      signal_item_completed (LibSync.SyncFileItem)
        //  );
        //  var size = 3500000;
        //  fake_folder.remote_modifier ().insert ("A/broken", size);

        //  string server_message = "The file was not downloaded because the tests wants so!";

        //  // First, download only the first 3 MB of the file
        //  fake_folder.set_server_override (this.override_delegate_error_message);

        //  bool timed_out = false;
        //  GLib.Timeout.add (
        //      10000,
        //      fake_folder.sync_engine,
        //      () => {
        //          timed_out = true;
        //          fake_folder.sync_engine.on_signal_abort ();
        //          return false; // only run once
        //      });
        //  GLib.assert_true (!fake_folder.sync_once ());  // Fail because A/broken
        //  GLib.assert_true (!timed_out);
        //  GLib.assert_true (get_item (complete_spy, "A/broken").status == LibSync.SyncFileItem.Status.NORMAL_ERROR);
        //  GLib.assert_true (get_item (complete_spy, "A/broken").error_string.contains (server_message));
    }


    private GLib.InputStream override_delegate_error_message (Soup.Operation operation, Soup.Request request, GLib.OutputStream device) {
        //  if (operation == Soup.GetOperation && request.url.path.has_suffix ("A/broken")) {
        //      return new FakeErrorReply (operation, request, this, 400,
        //          "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
        //          + "<d:error xmlns:d=\"DAV:\" xmlns:s=\"http://sabredav.org/ns\">\n"
        //          + "<s:exception>Sabre\\DAV\\Exception\\Forbidden</s:exception>\n"
        //          + "<s:message>" + server_message + "</s:message>\n"
        //          + "</d:error>");
        //  }
        //  return null;
    }

} // class TestErrorMessage

} // namespace Testing
} // namespace Occ
