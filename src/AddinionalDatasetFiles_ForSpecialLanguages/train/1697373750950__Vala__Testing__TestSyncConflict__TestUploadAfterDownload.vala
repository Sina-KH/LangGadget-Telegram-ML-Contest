/***********************************************************
This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/

namespace Occ {
namespace Testing {

public class TestUploadAfterDownload : AbstractTestSyncConflict {

    /***********************************************************
    ***********************************************************/
    private TestUploadAfterDownload () {
        //  FakeFolder fake_folder = new FakeFolder (FileInfo.A12_B12_C12_S12 ());
        //  fake_folder.sync_engine.account.set_capabilities ({ { "upload_conflict_files", true } });
        //  GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());

        //  GLib.HashTable<string, string> conflict_map;
        //  fake_folder.set_server_override (this.override_delegate_upload_after_download);

        //  fake_folder.local_modifier.set_contents ("A/a1", 'L');
        //  fake_folder.remote_modifier ().set_contents ("A/a1", 'R');
        //  fake_folder.local_modifier.append_byte ("A/a2");
        //  fake_folder.remote_modifier ().append_byte ("A/a2");
        //  fake_folder.remote_modifier ().append_byte ("A/a2");
        //  GLib.assert_true (fake_folder.sync_once ());
        //  var local = fake_folder.current_local_state ();
        //  var remote = fake_folder.current_remote_state ();
        //  GLib.assert_true (local == remote);

        //  var a1FileId = fake_folder.remote_modifier ().find ("A/a1").file_identifier;
        //  var a2FileId = fake_folder.remote_modifier ().find ("A/a2").file_identifier;
        //  GLib.assert_true (conflict_map.contains (a1FileId));
        //  GLib.assert_true (conflict_map.contains (a2FileId));
        //  GLib.assert_true (conflict_map.size () == 2);
        //  GLib.assert_true (Utility.conflict_file_base_name_from_pattern (conflict_map[a1FileId]) == "A/a1");

        //  // Check that the conflict file contains the username
        //  GLib.assert_true (conflict_map[a1FileId].contains (" (conflicted copy %1 ".printf (fake_folder.sync_engine.account.dav_display_name ())));

        //  GLib.assert_true (remote.find (conflict_map[a1FileId]).content_char == 'L');
        //  GLib.assert_true (remote.find ("A/a1").content_char == 'R');

        //  GLib.assert_true (remote.find (conflict_map[a2FileId]).size == 5);
        //  GLib.assert_true (remote.find ("A/a2").size == 6);
    }


    private GLib.InputStream override_delegate_upload_after_download (Soup.Operation operation, Soup.Request request, GLib.OutputStream device) {
        //  if (operation == Soup.PutOperation) {
        //      if (request.raw_header ("OC-Conflict") == "1") {
        //          var base_file_id = request.raw_header ("OC-ConflictBaseFileId");
        //          var components = request.url.to_string ().split ("/");
        //          string conflict_file = components.mid (components.size () - 2).join ("/");
        //          conflict_map[base_file_id] = conflict_file;
        //          GLib.assert_true (!base_file_id == "");
        //          GLib.assert_true (request.raw_header ("OC-ConflictInitialBasePath") == Utility.conflict_file_base_name_from_pattern (conflict_file));
        //      }
        //  }
        //  return null;
    }

} // class TestUploadAfterDownload

} // namespace Testing
} // namespace Occ
