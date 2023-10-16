/***********************************************************
@author Dominik Schmidt <dev@dominik-schmidt.de>
@author Klaas Freitag <freitag@owncloud.com>
@author Roeland Jago Douma <roeland@famdouma.nl>

@copyright GPLv3 or Later
***********************************************************/

namespace Occ {
namespace Ui {

public class SocketApiJobV2 { //: GLib.Object {

    private SocketListener socket_listener;
    private const string command;
    private string job_id;
    private Json.Object arguments;

    internal signal void signal_finished ();

    public SocketApiJobV2 (
        SocketListener socket_listener,
        string command,
        Json.Object arguments
    ) {
        //  this.socket_listener = socket_listener;
        //  this.command = command;
        //  this.job_id = arguments["identifier"].to_string ();
        //  this.arguments = arguments["arguments"].to_object ());
        //  //  GLib.assert_true (!this.job_id == "")
    }


    /***********************************************************
    ***********************************************************/
    public void on_signal_success (
        Json.Object response
    ) {
        //  do_finish (response);
    }


    /***********************************************************
    ***********************************************************/
    public void failure (
        string error
    ) {
        //  do_finish ({
        //      {
        //          "error", error
        //      }
        //  });
    }


    /***********************************************************
    ***********************************************************/
    public Json.Object arguments () {
        //  return this.arguments;
    }


    /***********************************************************
    ***********************************************************/
    public string command () {
        //  return this.command;
    }


    /***********************************************************
    ***********************************************************/
    private void do_finish (
        Json.Object object
    ) {
        //  this.socket_listener.on_signal_send_message (this.command + "this.RESULT:" + GLib.JsonDocument ({
        //      {
        //          "identifier", this.job_id
        //      },
        //      {
        //          "arguments", object
        //      }
        //  }).to_json (GLib.JsonDocument.Compact));
        //  signal_finished ();
    }

} // class SocketApiJobV2

} // namespace Ui
} // namespace Occ
