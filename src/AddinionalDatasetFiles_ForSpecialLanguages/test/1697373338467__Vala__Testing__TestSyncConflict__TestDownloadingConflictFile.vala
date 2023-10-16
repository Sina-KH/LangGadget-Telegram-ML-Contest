/***********************************************************
This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/

namespace Occ {
namespace Testing {

public class TestDownloadingConflictFile : AbstractTestSyncConflict {

    /***********************************************************
    What happens if we download a conflict file? Is the metadata
    set up correctly?
    ***********************************************************/
    private TestDownloadingConflictFile () {
        //  FakeFolder fake_folder = new FakeFolder (FileInfo.A12_B12_C12_S12 ());
        //  fake_folder.sync_engine.account.set_capabilities ({ { "upload_conflict_files", true } });
        //  GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());

        //  // With no headers from the server
        //  fake_folder.remote_modifier ().insert ("A/a1 (conflicted copy 1234)");
        //  GLib.assert_true (fake_folder.sync_once ());
        //  GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());
        //  var conflict_record = fake_folder.sync_journal ().conflict_record ("A/a1 (conflicted copy 1234)");
        //  GLib.assert_true (conflict_record.is_valid);
        //  GLib.assert_true (conflict_record.base_file_id == fake_folder.remote_modifier ().find ("A/a1").file_identifier);
        //  GLib.assert_true (conflict_record.initial_base_path == "A/a1");

        //  // Now with server headers

        //  var a2FileId = fake_folder.remote_modifier ().find ("A/a2").file_identifier;
        //  fake_folder.set_server_override (this.override_delegate_downloading_conflict_file);

        //  fake_folder.remote_modifier ().insert ("A/really-a-conflict"); // doesn't look like a conflict, but headers say it is
        //  GLib.assert_true (fake_folder.sync_once ());
        //  GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());
        //  conflict_record = fake_folder.sync_journal ().conflict_record ("A/really-a-conflict");
        //  GLib.assert_true (conflict_record.is_valid);
        //  GLib.assert_true (conflict_record.base_file_id == a2FileId);
        //  GLib.assert_true (conflict_record.base_modtime == 1234);
        //  GLib.assert_true (conflict_record.base_etag == "etag");
        //  GLib.assert_true (conflict_record.initial_base_path == "A/original");
    }


    private GLib.InputStream override_delegate_downloading_conflict_file (Soup.Operation operation, Soup.Request request, GLib.OutputStream device) {
        //  if (operation == Soup.GetOperation) {
        //      var reply = new FakeGetReply (fake_folder.remote_modifier (), operation, request);
        //      reply.set_raw_header ("OC-Conflict", "1");
        //      reply.set_raw_header ("OC-ConflictBaseFileId", a2FileId);
        //      reply.set_raw_header ("OC-ConflictBaseMtime", "1234");
        //      reply.set_raw_header ("OC-ConflictBaseEtag", "etag");
        //      reply.set_raw_header ("OC-ConflictInitialBasePath", "A/original");
        //      return reply;
        //  }
        //  return null;
    }

} // class TestDownloadingConflictFile

} // namespace Testing
} // namespace Occ
