

//  #include <Gtk.Widget>
//  #include <GLib.WebEnginePage>
//  #include <GLib.WebEngineProfile>
//  #include <GLib.WebEngineUrlRequestInterceptor>
//  #include <GLib.WebEngineUrlRequestJob>
//  #includeVERSION >= 0x051200
//  #include <GLib.WebEngineUrlScheme>
//  #include <GLib.Web_engine_url_s
//  #include <GLib.Web_engine_v
//  #include <GLib.DesktopServices>
//  #include <GLib.Progres
//  #include <GLib.Locale>
//  #include <GLib.WebEngineCertificateError>
//  #include <Gtk.MessageBox>

namespace Occ {
namespace Ui {

public class WebView { //: Gtk.Widget {

    /***********************************************************
    ***********************************************************/
    private UiWebView instance;

    /***********************************************************
    ***********************************************************/
    private GLib.WebEngineView webview;
    private GLib.WebEngineProfile profile;
    private WebEnginePage page;

    /***********************************************************
    ***********************************************************/
    private WebViewPageUrlRequestInterceptor interceptor;
    private WebViewPageUrlSchemeHandler scheme_handler;

    internal signal void signal_url_catched (string user, string pass, string host);

    /***********************************************************
    ***********************************************************/
    public WebView (Gtk.Widget parent = new Gtk.Widget ()) {
        //  base ();
        //  this.instance;
        //  this.instance.up_ui (this);
        //  GLib.WebEngineUrlScheme.register_scheme (new GLib.WebEngineUrlScheme ("nc"));
        //  this.webview = new GLib.WebEngineView (this);
        //  this.profile = new GLib.WebEngineProfile (this);
        //  this.page = new WebEnginePage (this.profile);
        //  this.interceptor = new WebViewPageUrlRequestInterceptor (this);
        //  this.scheme_handler = new WebViewPageUrlSchemeHandler (this);

        //  string user_agent = Utility.user_agent_string ();
        //  this.profile.http_user_agent (user_agent);
        //  GLib.WebEngineProfile.default_profile ().http_user_agent (user_agent);
        //  this.profile.request_interceptor (this.interceptor);
        //  this.profile.install_url_scheme_handler ("nc", this.scheme_handler);


        //  /***********************************************************
        //  Set a proper accept langauge to the language of the client
        //  code from : http://code.qt.io/cgit/qt/qtbase.git/tree/src/network/access/qhttpnetworkconnection
        //  ***********************************************************/ {
        //      string system_locale = GLib.Locale.system ().name ().replace (char.from_latin1 ('_'),char.from_latin1 ('-'));
        //      string accept_language;
        //      if (system_locale == "C") {
        //          accept_language = "en,*";
        //      } else if (system_locale.has_prefix ("en-")) {
        //          accept_language = system_locale + ",*";
        //      } else {
        //          accept_language = system_locale + ",en,*";
        //      }
        //      this.profile.http_accept_language (accept_language);
        //  }

        //  this.webview.page (this.page);
        //  this.instance.vertical_layout.add_widget (this.webview);

        //  this.webview.load_progress.connect (
        //      this.instance.progress_bar.value
        //  );
        //  this.scheme_handler.signal_url_catched.connect (
        //      this.on_signal_url_catched
        //  );
    }


    /***********************************************************
    ***********************************************************/
    ~WebView () {
        //  /***********************************************************
        //  The Qt implmentation deletes children in the order they are added to the
        //  object tree, so in this case this.page is deleted after this.profile, which
        //  violates the assumption that this.profile should exist longer than
        //  this.page [1]. Here I delete this.page manually so that this.profile can be safely
        //  deleted later.

        //  [1] https://doc.qt.io/qt-5/qwebenginepage.html#GLib.WebEnginePage-1
        //  ***********************************************************/
        //  this.page = null;
    }


    /***********************************************************
    ***********************************************************/
    public void url (GLib.Uri url) {
        //  this.page.url (url);
    }

} // class WebView

} // namespace Ui
} // namespace Occ
