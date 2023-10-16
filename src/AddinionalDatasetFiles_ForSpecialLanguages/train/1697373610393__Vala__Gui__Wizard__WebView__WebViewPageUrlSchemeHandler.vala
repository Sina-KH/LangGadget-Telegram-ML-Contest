

namespace Occ {
namespace Ui {

public class WebViewPageUrlSchemeHandler { //: GLib.WebEngineUrlSchemeHandler {

    internal signal void signal_url_catched (string user, string pass, string host);

    /***********************************************************
    ***********************************************************/
    public WebViewPageUrlSchemeHandler () {
        //  base ();
    }


    /***********************************************************
    ***********************************************************/
    public void request_started (GLib.WebEngineUrlRequestJob request) {
        //  GLib.Uri url = request.request_url ();

        //  string path = url.path.mid (1); // get undecoded path
        //  GLib.List<string> parts = path.split ("&");

        //  string server;
        //  string user;
        //  string password;

        //  foreach (string part in parts) {
        //      if (part.has_prefix ("server:")) {
        //          server = part.mid (7);
        //      } else if (part.has_prefix ("user:")) {
        //          user = part.mid (5);
        //      } else if (part.has_prefix ("password:")) {
        //          password = part.mid (9);
        //      }
        //  }

        //  GLib.debug ("Got raw user from request path: " + user);

        //  user = user.replace (char ('+'), char (' '));
        //  password = password.replace (char ('+'), char (' '));

        //  user = GLib.Uri.from_percent_encoding (user.to_utf8 ());
        //  password = GLib.Uri.from_percent_encoding (password.to_utf8 ());

        //  if (!server.has_prefix ("http://") && !server.has_prefix ("https://")) {
        //      server = "https://" + server;
        //  }
        //  GLib.info ("Got user: " + user + ", server: " + server);

        //  signal_url_caught (user, password, server);
    }

} // class WebViewPageUrlSchemeHandler

} // namespace Ui
} // namespace Occ
