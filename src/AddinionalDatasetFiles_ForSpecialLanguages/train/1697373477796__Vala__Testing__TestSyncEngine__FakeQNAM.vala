/***********************************************************
This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/

namespace Occ {
namespace Testing {

public class FakeQNAM : Soup {

    /***********************************************************
    ***********************************************************/
    private FileInfo remote_root_file_info;

    /***********************************************************
    ***********************************************************/
    private FileInfo upload_file_info;

    /***********************************************************
    Maps a path to an HTTP error
    ***********************************************************/
    public GLib.HashTable<string, int> error_paths { public get; private set;

    /***********************************************************
    Monitor requests and optionally provide custom replies
    ***********************************************************/
    private OverrideDelegate override_value;

    /***********************************************************
    ***********************************************************/
    public delegate GLib.InputStream OverrideDelegate (Operation value1, Soup.Request value2, GLib.OutputStream value3);

    /***********************************************************
    ***********************************************************/
    public FakeQNAM (FileInfo initial_root_file_info) {
        //  this.remote_root_file_info = std.move (initial_root_file_info);
        //  set_cookie_jar (new CookieJar ());
    }


    /***********************************************************
    ***********************************************************/
    public FileInfo current_remote_state () {
        //  return this.remote_root_file_info;
    }


    /***********************************************************
    ***********************************************************/
    public FileInfo upload_state () {
        //  return this.upload_file_info;
    }

    delegate Json.Object ReplyFunction (GLib.HashTable<string, string> map);

    /***********************************************************
    ***********************************************************/
    public Json.Object for_each_reply_part (
        //  GLib.OutputStream outgoing_data,
        //  string content_type,
        //  ReplyFunction reply_function) {
        //  var full_reply = new Json.Object ();
        //  var put_payload = outgoing_data.peek (outgoing_data.bytes_available ());
        //  outgoing_data.reset ();
        //  string string_put_payload = put_payload;
        //  int boundary_position = "multipart/related; boundary=".length;
        //  string boundary_value = "--" + content_type.mid (boundary_position, content_type.length - boundary_position - 1) + "\r\n";
        //  var string_put_payload_reference = string_put_payload.left (string_put_payload.size () - 2 - boundary_value.size ());
        //  var all_parts = string_put_payload_reference.split (boundary_value, GLib.SkipEmptyParts);
        //  foreach (var one_part in all_parts) {
        //      var header_end_position = one_part.index_of ("\r\n\r\n");
        //      var one_part_header_part = one_part.left (header_end_position);
        //      var one_part_header = one_part_header_part.split ("\r\n");
        //      GLib.HashTable<string, string> all_headers;
        //      foreach (var one_header in one_part_header) {
        //          var header_parts = one_header.split (":");
        //          all_headers[header_parts.at (0)] = header_parts.at (1);
        //      }
        //      var reply = reply_function (all_headers);
        //      if (reply.contains ("error") && reply.contains ("etag")) {
        //          full_reply.insert (all_headers["X-File-Path"], reply);
        //      }
        //  }

        //  return full_reply;
    }


    /***********************************************************
    ***********************************************************/
    public GLib.InputStream override_reply_with_error (string filename, Operation operation, Soup.Request new_request) {
        //  GLib.InputStream reply = null;

        //  GLib.assert_true (!filename == null);
        //  if (this.error_paths.contains (filename)) {
        //      reply = new FakeErrorReply (operation, new_request, this, this.error_paths[filename]);
        //  }

        //  return reply;
    }


    /***********************************************************
    ***********************************************************/
    protected override GLib.InputStream create_request (
        //  Operation operation,
        //  Soup.Request request,
        //  GLib.OutputStream outgoing_data = null) {
        //  GLib.InputStream reply = null;
        //  var new_request = request;
        //  new_request.set_raw_header ("X-Request-ID", Soup.ClientContext.generate_request_identifier ());
        //  var content_type = request.header (Soup.Request.ContentTypeHeader).to_string ();
        //  if (this.override_value) {
        //      var reply_override = this.override_value (operation, new_request, outgoing_data);
        //      if (reply_override) {
        //          reply = reply_override;
        //      }
        //  }
        //  if (!reply) {
        //      reply = override_reply_with_error (get_file_path_from_url (new_request.url), operation, new_request);
        //  }
        //  if (!reply) {
        //      bool is_upload = new_request.url.path.has_prefix (s_upload_url.path);
        //      FileInfo info = is_upload ? this.upload_file_info : this.remote_root_file_info;

        //      var verb = new_request.attribute (Soup.Request.CustomVerbAttribute);
        //      if (verb == "PROPFIND") {
        //          // Ignore outgoing_data always returning somethign good enough, works for now.
        //          reply = new FakePropfindReply (info, operation, new_request, this);
        //      } else if (verb == "GET" || operation == Soup.GetOperation) {
        //          reply = new FakeGetReply (info, operation, new_request, this);
        //      } else if (verb == "PUT" || operation == Soup.PutOperation) {
        //          reply = new FakePutReply (info, operation, new_request, outgoing_data.read_all (), this);
        //      } else if (verb == "MKCOL") {
        //          reply = new FakeMkcolReply (info, operation, new_request, this);
        //      } else if (verb == "DELETE" || operation == Soup.DeleteOperation) {
        //          reply = new FakeDeleteReply (info, operation, new_request, this);
        //      } else if (verb == "MOVE" && !is_upload) {
        //          reply = new FakeMoveReply (info, operation, new_request, this);
        //      } else if (verb == "MOVE" && is_upload) {
        //          reply = new FakeChunkMoveReply ( info, this.remote_root_file_info, operation, new_request, this);
        //      } else if (verb == "POST" || operation == Soup.PostOperation) {
        //          if (content_type.has_prefix ("multipart/related; boundary=")) {
        //              reply = new FakePutMultiFileReply (info, operation, new_request, content_type, outgoing_data.read_all (), this);
        //          }
        //      } else {
        //          GLib.debug (verb + outgoing_data);
        //          Q_UNREACHABLE ();
        //      }
        //  }
        //  HttpLogger.log_request (reply, operation, outgoing_data);
        //  return reply;
    }

} // class FakeQNAM

} // namespace Testing
} // namespace Occ
