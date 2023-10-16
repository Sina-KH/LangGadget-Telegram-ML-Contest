/***********************************************************
@author Klaas Freitag <freitag@owncloud.com>

@copyright GPLv3 or Later
***********************************************************/

//  #include <GLib.OutputStream>
//  #include <GLib.Pair>

namespace Occ {
namespace Ui {

/***********************************************************
@brief The NotificationConfirmJob class
@ingroup gui

Class to call an action-link of a notification coming from
the server. All the communication logic is handled in this
public class.

***********************************************************/
public class NotificationConfirmJob : LibSync.AbstractNetworkJob {

    //  /***********************************************************
    //  ***********************************************************/
    //  private string verb;
    //  private GLib.Uri link;

    //  /***********************************************************
    //  Result of the OCS request

    //  @param reply the reply
    //  ***********************************************************/
    //  internal signal void signal_job_finished (string reply, int reply_code);

    //  /***********************************************************
    //  ***********************************************************/
    //  public NotificationConfirmJob (LibSync.Account account) {
        //  base (account, "");
        //  ignore_credential_failure (true);
    //  }


    //  /***********************************************************
    //  @brief Set the verb and link for the job

    //  @param verb currently supported GET PUT POST DELETE
    //  ***********************************************************/
    //  public void link_and_verb (GLib.Uri link, string verb) {
        //  this.link = link;
        //  this.verb = verb;
    //  }


    //  /***********************************************************
    //  @brief Start the OCS request
    //  ***********************************************************/
    //  public override void on_signal_start () {
        //  if (!this.link.is_valid) {
        //      GLib.warning ("Attempt to trigger invalid URL: " + this.link.to_string ());
        //      return;
        //  }
        //  Soup.Request req;
        //  req.raw_header ("Ocs-APIREQUEST", "true");
        //  req.raw_header ("Content-Type", "application/x-www-form-urlencoded");

        //  send_request (this.verb, this.link, req);

        //  LibSync.AbstractNetworkJob.on_signal_start ();
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  private override bool on_signal_finished () {
        //  int reply_code = 0;
        //  // FIXME: check for the reply code!
        //  string reply_str = this.reply.read_all ();

        //  if (reply_str.contains ("<?xml version=\"1.0\"?>")) {
        //      var rex_match = new GLib.Regex ("<statuscode> (\\d+)</statuscode>").match (reply_str);
        //      if (rex_match.has_match ()) {
        //          // this is a error message coming back from ocs.
        //          reply_code = rex_match.captured (1).to_int ();
        //      }
        //  }
        //  signal_job_finished (reply_str, reply_code);

        //  return true;
    //  }

} // class NotificationConfirmJob

} // namespace Ui
} // namespace Occ
