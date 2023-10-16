
//  #include <QtCore>
//  #include <GLib.JsonDocument>
//  #include <Json.Object>

namespace Occ {
namespace Ui {

public class ServerNotificationHandler { //: GLib.Object {

    private const string NOTIFICATIONS_PATH = "ocs/v2.php/apps/notifications/api/v2/notifications";
    private const string PROPERTY_ACCOUNT_STATE = "oc_account_state";
    const int SUCCESS_STATUS_CODE = 200;
    const int NOT_MODIFIED_STATUS_CODE = 304;

    /***********************************************************
    ***********************************************************/
    private LibSync.JsonApiJob notification_job;
    private AccountState account_state;


    internal signal void signal_new_notification_list (GLib.List<Activity> list);


    /***********************************************************
    ***********************************************************/
    public ServerNotificationHandler (AccountState account_state) {
        //  base ();
        //  this.account_state = account_state;
    }



    /***********************************************************
    ***********************************************************/
    public void on_signal_fetch_notifications () {
        //  // check connectivity and credentials
        //  if (! (this.account_state != null && this.account_state.is_connected && this.account_state.account != null && this.account_state.account.credentials () != null && this.account_state.account.credentials ().ready ())) {
        //      delete_later ();
        //      return;
        //  }
        //  // check if the account has notifications enabled. If the capabilities are
        //  // not yet valid, its assumed that notifications are available.
        //  if (this.account_state.account.capabilities.is_valid) {
        //      if (!this.account_state.account.capabilities.notifications_available ()) {
        //          GLib.info ("LibSync.Account" + this.account_state.account.display_name + "does not have notifications enabled.");
        //          delete_later ();
        //          return;
        //      }
        //  }

        //  // if the previous notification job has on_signal_finished, on_signal_start next.
        //  this.notification_job = new LibSync.JsonApiJob (this.account_state.account, NOTIFICATIONS_PATH, this);
        //  this.notification_job.signal_json_received.connect (
        //      this.on_signal_notifications_received
        //  );
        //  this.notification_job.signal_etag_response_header_received.connect (
        //      this.on_signal_etag_response_header_received
        //  );
        //  this.notification_job.signal_allow_desktop_notifications_changed.connect (
        //      this.on_signal_allow_desktop_notifications_changed
        //  );
        //  this.notification_job.property (PROPERTY_ACCOUNT_STATE, GLib.Variant.from_value<AccountState> (this.account_state));
        //  this.notification_job.add_raw_header ("If-None-Match", this.account_state.notifications_etag_response_header ());
        //  this.notification_job.on_signal_start ();
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_notifications_received (GLib.JsonDocument json, int status_code) {
        //  if (status_code != SUCCESS_STATUS_CODE && status_code != NOT_MODIFIED_STATUS_CODE) {
        //      GLib.warning ("Notifications failed with status code " + status_code.to_string ());
        //      delete_later ();
        //      return;
        //  }

        //  if (status_code == NOT_MODIFIED_STATUS_CODE) {
        //      GLib.warning ("Status code " + status_code.to_string () + " Not Modified - No new notifications.");
        //      delete_later ();
        //      return;
        //  }

        //  var notifies = json.object ().value ("ocs").to_object ().value ("data").to_array ();

        //  var account_state = (AccountState)sender ().property (PROPERTY_ACCOUNT_STATE);

        //  GLib.List<Activity> list;

        //  foreach (var element in notifies) {
        //      Activity a;
        //      var json = element.to_object ();
        //      a.type = Activity.Type.NOTIFICATION;
        //      a.acc_name = account_state.account.display_name;
        //      a.id = json.value ("notification_id").to_int ();

        //      // Need to know, specially for remote_share
        //      a.object_type = json.value ("object_type").to_string ();
        //      a.status = 0;

        //      a.subject = json.value ("subject").to_string ();
        //      a.message = json.value ("message").to_string ();
        //      a.icon = json.value ("icon").to_string ();

        //      GLib.Uri link = new GLib.Uri (json.value ("link").to_string ());
        //      if (!link == "") {
        //          if (link.host () == "") {
        //              link.scheme (account_state.account.url.scheme ());
        //              link.host (account_state.account.url.host ());
        //          }
        //          if (link.port () == -1) {
        //              link.port (account_state.account.url.port ());
        //          }
        //      }
        //      a.link = link;
        //      a.date_time = GLib.DateTime.from_string (json.value ("datetime").to_string (), GLib.ISODate);

        //      var actions = json.value ("actions").to_array ();
        //      foreach (var action in actions) {
        //          var action_json = action.to_object ();
        //          ActivityLink activity_link;
        //          activity_link.label = GLib.Uri.from_percent_encoding (action_json.value ("label").to_string ().to_utf8 ());
        //          activity_link.link = action_json.value ("link").to_string ();
        //          activity_link.verb = action_json.value ("type").to_string ().to_utf8 ();
        //          activity_link.primary = action_json.value ("primary").to_bool ();

        //          a.links.append (activity_link);
        //      }

        //      // Add another action to dismiss notification on server
        //      // https://github.com/owncloud/notifications/blob/master/docs/ocs-endpoint-v1.md#deleting-a-notification-for-a-user
        //      ActivityLink activity_link;
        //      activity_link.label = _("Dismiss");
        //      activity_link.link = Utility.concat_url_path (account_state.account.url, NOTIFICATIONS_PATH + "/" + string.number (a.id)).to_string ();
        //      activity_link.verb = "DELETE";
        //      activity_link.primary = false;
        //      a.links.append (activity_link);

        //      list.append (a);
        //  }
        //  signal_new_notification_list (list);

        //  delete_later ();
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_etag_response_header_received (string value, int status_code) {
        //  if (status_code == SUCCESS_STATUS_CODE) {
        //      GLib.warning ("New Notification ETag Response Header received " + value.to_string ());
        //      var account = ((AccountState) sender ()).property (PROPERTY_ACCOUNT_STATE);
        //      account.notifications_etag_response_header (value);
        //  }
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_allow_desktop_notifications_changed (bool is_allowed) {
        //  var account_state = (AccountState)sender ().property (PROPERTY_ACCOUNT_STATE);
        //  if (account_state != null) {
        //     account_state.are_desktop_notifications_allowed (is_allowed);
        //  }
    }

} // class ServerNotificationHandler

} // namespace Ui
} // namespace Occ
