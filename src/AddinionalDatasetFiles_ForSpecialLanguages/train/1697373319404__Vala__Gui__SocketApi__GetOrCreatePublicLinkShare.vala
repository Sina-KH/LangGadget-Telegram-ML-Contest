/***********************************************************
@author Dominik Schmidt <dev@dominik-schmidt.de>
@author Klaas Freitag <freitag@owncloud.com>
@author Roeland Jago Douma <roeland@famdouma.nl>

@copyright GPLv3 or Later
***********************************************************/

namespace Occ {
namespace Ui {

/***********************************************************
Don't pull the share manager into socketapi unittests
#ifndef OWNCLOUD_TEST
***********************************************************/
public class GetOrCreatePublicLinkShare { //: GLib.Object {

    /***********************************************************
    ***********************************************************/
    private LibSync.Account account;
    private ShareManager share_manager;
    private string local_file;


    internal signal void signal_finished (string link);
    internal signal void signal_error (string message);

    /***********************************************************
    ***********************************************************/
    public GetOrCreatePublicLinkShare (
        LibSync.Account account,
        string local_file
    ) {
        //  base ();
        //  this.account = account;
        //  this.share_manager = account;
        //  this.local_file = local_file;
        //  this.share_manager.signal_shares_fetched.connect (
        //      this.on_signal_shares_fetched
        //  );
        //  this.share_manager.signal_link_share_created.connect (
        //      this.on_signal_link_share_created
        //  );
        //  this.share_manager.signal_link_share_requires_password.connect (
        //      this.on_signal_link_share_requires_password
        //  );
        //  this.share_manager.signal_server_error.connect (
        //      this.on_signal_server_error
        //  );
    }


    /***********************************************************
    ***********************************************************/
    public void run () {
        //  GLib.debug ("Fetching shares";
        //  this.share_manager.fetch_shares (this.local_file);
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_shares_fetched (GLib.List<Share> shares) {
        //  var share_name = SocketApi._("Context menu share");

        //  // If there already is a context menu share, reuse it
        //  foreach (var share in shares) {
        //      var link_share = (LinkShare)share;
        //      if (!link_share) {
        //          continue;
        //      }

        //      if (link_share.name () == share_name) {
        //          GLib.debug ("Found existing share, reusing";
        //          return on_signal_success (link_share.share_link ().to_string ());
        //      }
        //  }

        //  // otherwise create a new one
        //  GLib.debug ("Creating new share";
        //  this.share_manager.signal_create_link_share (this.local_file, share_name, "");
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_link_share_created (unowned LinkShare share) {
        //  GLib.debug ("New share created";
        //  on_signal_success (share.share_link ().to_string ());
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_password_required () {
        //  bool ok = false;
        //  string password = GLib.InputDialog.text (null,
        //                                           _("Password for share required"),
        //                                           _("Please enter a password for your link share:"),
        //                                           Gtk.LineEdit.Normal,
        //                                           "",
        //                                           ok);

        //  if (!ok) {
        //      // The dialog was canceled so no need to do anything
        //      return;
        //  }

        //  // Try to create the link share again with the newly entered password
        //  this.share_manager.signal_create_link_share (this.local_file, "", password);
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_link_share_requires_password (string message) {
        //  GLib.info ("Could not create link share:" + message;
        //  signal_error (message);
        //  delete_later ();
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_server_error (int code, string message) {
        //  GLib.warning ("Share fetch/create error" + code + message;
        //  Gtk.MessageBox.warning (
        //      null,
        //      _("Sharing error"),
        //      _("Could not retrieve or create the public link share. Error:\n\n%1").printf (message),
        //      Gtk.MessageBox.Ok,
        //      Gtk.MessageBox.NoButton);
        //  signal_error (message);
        //  delete_later ();
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_success (string link) {
        //  signal_done (link);
        //  delete_later ();
    }

} // class GetOrCreatePublicLinkShare

} // namespace Ui
} // namespace Occ
