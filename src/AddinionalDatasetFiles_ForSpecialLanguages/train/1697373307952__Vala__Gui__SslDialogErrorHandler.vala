/***********************************************************
@author Klaas Freitag <freitag@kde.org>

@copyright GPLv3 or Later
***********************************************************/

namespace Occ {
namespace Ui {

/***********************************************************
@brief The SslDialogErrorHandler class
@ingroup gui
***********************************************************/
public class SslDialogErrorHandler : LibSync.AbstractSslErrorHandler {

    //  /***********************************************************
    //  ***********************************************************/
    //  public override bool handle_errors (GLib.List<GLib.SslError> errors, GLib.TlsConfiguration conf, GLib.List<GLib.TlsCertificate> certificates, LibSync.Account account) {
        //  //  (void)conf;
        //  if (!certificates) {
        //      GLib.critical ("Certs parameter required but is NULL!");
        //      return false;
        //  }

        //  SslErrorDialog dialog = new SslErrorDialog (account);
        //  // whether the failing certificates have previously been accepted
        //  if (dialog.check_failing_certificates_known (errors)) {
        //      *certificates = dialog.unknown_certificates ();
        //      return true;
        //  }
        //  // whether the user accepted the certificates
        //  if (dialog.exec () == Gtk.Dialog.Accepted) {
        //      if (dialog.trust_connection ()) {
        //          *certificates = dialog.unknown_certificates ();
        //          return true;
        //      }
        //  }
        //  return false;
    //  }

} // class SslDialogErrorHandler

} // namespace Ui
} // namespace Occ
