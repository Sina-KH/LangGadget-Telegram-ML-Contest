/***********************************************************
@author Camila Ayres <hello@camila.codes>

@copyright GPLv3 or Later
***********************************************************/

//  #include <GLib.JsonDocument>
//  #include <Json.Object>
//  #include <Soup.Request>
//  #include <GLib.OutputStream>
//  #include <Soup.Context>

namespace Occ {
namespace Ui {

public class RemoteWipe { //: GLib.Object {

    //  /***********************************************************
    //  ***********************************************************/
    //  private LibSync.Account account;
    //  private string app_password;
    //  private bool account_removed;
    //  private Soup.Context network_manager;
    //  private GLib.InputStream network_reply_check;
    //  private GLib.InputStream network_reply_success;

    //  /***********************************************************
    //  ***********************************************************/
    //  //  private friend class .Test_remote_wipe;

    //  /***********************************************************
    //  ***********************************************************/
    //  public RemoteWipe (LibSync.Account account) {
        //  base ();
        //  this.account = account;
        //  this.app_password = "";
        //  this.account_removed = false;
        //  this.network_manager = null;
        //  this.network_reply_check = null;
        //  this.network_reply_success = null;
        //  AccountManager.instance.signal_account_removed.connect (
        //      this.on_signal_account_removed
        //  );
        //  this.signal_authorized.connect (
        //      FolderManager.instance.on_signal_wipe_folder_for_account
        //  );
        //  FolderManager.instance.signal_wipe_done.connect (
        //      this.on_signal_notify_server_success_job
        //  );
        //  this.account.app_password_retrieved.connect (
        //      this.on_signal_start_check_job_with_app_password
        //  );
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  private void on_signal_account_removed (AccountState state) {
        //  this.account_removed = true;
    //  }


    //  /***********************************************************
    //  Notify if wipe was requested
    //  ***********************************************************/
    //  internal signal void signal_authorized (AccountState state);


    //  /***********************************************************
    //  Notify if user only needs to log in again
    //  ***********************************************************/
    //  internal signal void ask_user_credentials ();


    //  /***********************************************************
    //  Once receives a 401 or 403 status response it will do a
    //  fetch to <server>/index.php/core/wipe/check
    //  ***********************************************************/
    //  public void on_signal_start_check_job_with_app_password (string password) {
        //  if (password == "") {
        //      return;
        //  }

        //  this.app_password = password;
        //  GLib.Uri request_url = Utility.concat_url_path (
        //      this.account.url.to_string (),
        //      "/index.php/core/wipe/check"
        //  );
        //  Soup.Request request;
        //  request.header (
        //      Soup.Request.ContentTypeHeader,
        //      "application/x-www-form-urlencoded"
        //  );
        //  request.url (request_url);
        //  request.ssl_configuration (this.account.or_create_ssl_config ());
        //  var request_body = new GLib.OutputStream ();
        //  GLib.UrlQuery arguments = new GLib.UrlQuery ("token=%1".printf (this.app_password));
        //  request_body.data (arguments.query (GLib.Uri.FullyEncoded).to_latin1 ());
        //  this.network_reply_check = this.network_manager.post (request, request_body);
        //  this.network_manager.ssl_errors.connect ( // (GLib.InputStream reply, GLib.List<GLib.SslError> error_list),
        //      this.account.on_signal_handle_ssl_errors // (GLib.InputStream reply, GLib.List<GLib.SslError> error_list)
        //  );
        //  this.network_reply_check.signal_finished.connect (
        //      this.on_signal_check_job_slot
        //  );
    //  }


    //  /***********************************************************
    //  If wipe is requested, delete account and data, if not
    //  continue by asking the user to log in again
    //  ***********************************************************/
    //  private void on_signal_check_job_slot () {
        //  var json_data = this.network_reply_check.read_all ();
        //  Json.ParserError json_parse_error;
        //  Json.Object json = GLib.JsonDocument.from_json (json_data, json_parse_error).object ();
        //  bool wipe = false;

        //  // check for errors
        //  if (this.network_reply_check.error != GLib.InputStream.NoError ||
        //          json_parse_error.error != Json.ParserError.NoError) {
        //      string error_reason;
        //      string error_from_json = json["error"].to_string ();
        //      if (!error_from_json == "") {
        //          GLib.warning ("Error returned from the server : <em>%1<em>"
        //              .printf (error_from_json.to_html_escaped ()));
        //      } else if (this.network_reply_check.error != GLib.InputStream.NoError) {
        //          GLib.warning (
        //              "There was an error accessing the 'token' endpoint: <br><em>%1</em>"
        //                  .printf (this.network_reply_check.error_string.to_html_escaped ())
        //              );
        //      } else if (json_parse_error.error != Json.ParserError.NoError) {
        //          GLib.warning (
        //              "Could not parse the JSON returned from the server: <br><em>%1</em>"
        //                  .printf (json_parse_error.error_string)
        //              );
        //      } else {
        //          GLib.warning ("The reply from the server did not contain all expected fields");
        //      }

        //  // check for wipe request
        //  } else if (!json.value ("wipe").is_undefined ()) {
        //      wipe = json["wipe"].to_bool ();
        //  }

        //  var manager = AccountManager.instance;
        //  var account_state = manager.account (this.account.display_name);

        //  if (wipe) {
        //      /* IMPORTANT - remove later - FIXME MS@2019-12-07 -.
        //      TODO: For "Log out" & "Remove account" : Remove client CA certificates and KEY!

        //            Disabled as long as selecting another cert is not supported by the UI.

        //            Being able to specify a new certificate is important anyway : expiry etc.

        //            We introduce this dirty hack here, to allow deleting them upon Remote Wipe.
        //       */
        //      this.account.remote_wipe_requested_HACK ();
        //      // <-- FIXME MS@2019-12-07

        //      // delete account
        //      manager.delete_account (account_state);
        //      manager.save ();

        //      // delete data
        //      signal_authorized (account_state);

        //  } else {
        //      // ask user for his credentials again
        //      account_state.handle_invalid_credentials ();
        //  }

        //  this.network_reply_check.delete_later ();
    //  }


    //  /***********************************************************
    //  Once the client has wiped all the required data a POST to
    //  <server>/index.php/core/wipe/on_signal_success
    //  ***********************************************************/
    //  private void on_signal_notify_server_success_job (AccountState account_state, bool value) {
        //  if (this.account_removed && data_wiped && this.account == account_state.account) {
        //      GLib.Uri request_url = Utility.concat_url_path (
        //          this.account.url.to_string (),
        //          "/index.php/core/wipe/on_signal_success");
        //      Soup.Request request;
        //      request.header (
        //          Soup.Request.ContentTypeHeader,
        //          "application/x-www-form-urlencoded");
        //      request.url (request_url);
        //      request.ssl_configuration (this.account.or_create_ssl_config ());
        //      var request_body = new GLib.OutputStream ();
        //      GLib.UrlQuery arguments = new GLib.UrlQuery ("token=%1".printf (this.app_password));
        //      request_body.data (arguments.query (GLib.Uri.FullyEncoded).to_latin1 ());
        //      this.network_reply_success = this.network_manager.post (request, request_body);
        //      this.network_reply_success.on_signal_finished.connect (
        //          this.on_signal_notify_server_success_job_slot
        //      );
        //  }
    //  }


    //  private void on_signal_notify_server_success_job_slot () {
        //  var json_data = this.network_reply_success.read_all ();
        //  Json.ParserError json_parse_error;
        //  Json.Object json = GLib.JsonDocument.from_json (json_data, json_parse_error).object ();
        //  if (this.network_reply_success.error != GLib.InputStream.NoError ||
        //          json_parse_error.error != Json.ParserError.NoError) {
        //      string error_reason;
        //      string error_from_json = json["error"].to_string ();
        //      if (!error_from_json == "") {
        //          GLib.warning ("Error returned from the server: <em>%1</em>"
        //              .printf (error_from_json.to_html_escaped ()));
        //      } else if (this.network_reply_success.error != GLib.InputStream.NoError) {
        //          GLib.warning ("There was an error accessing the 'on_signal_success' endpoint: <br><em>%1</em>"
        //              .printf (this.network_reply_success.error_string.to_html_escaped ()));
        //      } else if (json_parse_error.error != Json.ParserError.NoError) {
        //          GLib.warning ("Could not parse the JSON returned from the server: <br><em>%1</em>"
        //              .printf (json_parse_error.error_string));
        //      } else {
        //          GLib.warning ("The reply from the server did not contain all expected fields.");
        //      }
        //  }

        //  this.network_reply_success.delete_later ();
    //  }

} // class RemoteWipe

} // namespace Ui
} // namespace Occ
