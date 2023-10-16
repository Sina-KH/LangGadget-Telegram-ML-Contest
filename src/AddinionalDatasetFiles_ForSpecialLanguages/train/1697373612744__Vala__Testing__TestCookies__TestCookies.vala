/***********************************************************
This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/

namespace Occ {
namespace Testing {

public class TestCookies { //: GLib.Object {

    /***********************************************************
    ***********************************************************/
    private TestCookies () {
        //  GLib.TemporaryDir temporary;
        //  string nonexisting_path = temporary.file_path ("some_nonexisting_directory/test.db");
        //  GLib.NetworkCookie cookie_a = new GLib.NetworkCookie ("foo", "bar");
        //  // tomorrow rounded
        //  cookie_a.set_expiration_date (GLib.DateTime.current_date_time_utc ().add_days (1).date ().start_of_day ());
        //  GLib.List<GLib.NetworkCookie> cookies = new GLib.List<GLib.NetworkCookie> ();
        //  cookies.append (cookie_a);
        //  cookies.append (GLib.NetworkCookie ("foo2", "bar"));
        //  Soup.CookieJar jar;
        //  jar.set_all_cookies (cookies);
        //  GLib.assert_true (cookies == jar.all_cookies ());
        //  GLib.assert_true (jar.save (temporary.file_path ("test.db")));
        //  // ensure we are able to create a cookie jar in a non exisitning folder (mkdir)
        //  GLib.assert_true (jar.save (nonexisting_path));

        //  CookieJar jar2;
        //  GLib.assert_true (jar2.restore (nonexisting_path));
        //  // here we should have  only cookie_a as the second one was a session cookie
        //  GLib.assert_true (new GLib.List<GLib.NetworkCookie> (cookie_a) == jar2.all_cookies ());

    }

} // class TestCookies

} // namespace Testing
} // namespace Occ
