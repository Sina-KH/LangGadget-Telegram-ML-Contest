namespace Occ {
namespace Testing {

/***********************************************************
@class TestDurationToDescriptiveString

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestDurationToDescriptiveString : AbstractTestUtility {

    /***********************************************************
    ***********************************************************/
    private TestDurationToDescriptiveString () {
        //  GLib.Locale.set_default (GLib.Locale ("C"));
        //  //  Note: in order for the plural to work we would need to load the english translation

        //  uint64 sec = 1000;
        //  uint64 hour = 3600 * sec;

        //  GLib.DateTime current = GLib.DateTime.current_date_time_utc ();

        //  GLib.assert_true (duration_to_descriptive_string2 (0) == "0 second (s)");
        //  GLib.assert_true (duration_to_descriptive_string2 (5) == "0 second (s)");
        //  GLib.assert_true (duration_to_descriptive_string2 (1000) == "1 second (s)");
        //  GLib.assert_true (duration_to_descriptive_string2 (1005) == "1 second (s)");
        //  GLib.assert_true (duration_to_descriptive_string2 (56123) == "56 second (s)");
        //  GLib.assert_true (duration_to_descriptive_string2 (90 * sec) == "1 minute (s) 30 second (s)");
        //  GLib.assert_true (duration_to_descriptive_string2 (3 * hour) == "3 hour (s)");
        //  GLib.assert_true (duration_to_descriptive_string2 (3 * hour + 20 * sec) == "3 hour (s)");
        //  GLib.assert_true (duration_to_descriptive_string2 (3 * hour + 70 * sec) == "3 hour (s) 1 minute (s)");
        //  GLib.assert_true (duration_to_descriptive_string2 (3 * hour + 100 * sec) == "3 hour (s) 2 minute (s)");
        //  GLib.assert_true (duration_to_descriptive_string2 (current.msecs_to (current.add_years (4).add_months (5).add_days (2).add_secs (23 * 60 * 60))) ==
        //      "4 year (s) 5 month (s)");
        //  GLib.assert_true (duration_to_descriptive_string2 (current.msecs_to (current.add_days (2).add_secs (23 * 60 * 60))) ==
        //      "2 day (s) 23 hour (s)");

        //  GLib.assert_true (duration_to_descriptive_string1 (0) == "0 second (s)");
        //  GLib.assert_true (duration_to_descriptive_string1 (5) == "0 second (s)");
        //  GLib.assert_true (duration_to_descriptive_string1 (1000) == "1 second (s)");
        //  GLib.assert_true (duration_to_descriptive_string1 (1005) == "1 second (s)");
        //  GLib.assert_true (duration_to_descriptive_string1 (56123) == "56 second (s)");
        //  GLib.assert_true (duration_to_descriptive_string1 (90 * sec) == "2 minute (s)");
        //  GLib.assert_true (duration_to_descriptive_string1 (3 * hour) == "3 hour (s)");
        //  GLib.assert_true (duration_to_descriptive_string1 (3 * hour + 20 * sec) == "3 hour (s)");
        //  GLib.assert_true (duration_to_descriptive_string1 (3 * hour + 70 * sec) == "3 hour (s)");
        //  GLib.assert_true (duration_to_descriptive_string1 (3 * hour + 100 * sec) == "3 hour (s)");
        //  GLib.assert_true (duration_to_descriptive_string1 (current.msecs_to (current.add_years (4).add_months (5).add_days (2).add_secs (23 * 60 * 60))) ==
        //      "4 year (s)");
        //  GLib.assert_true (duration_to_descriptive_string1 (current.msecs_to (current.add_days (2).add_secs (23 * 60 * 60))) ==
        //      "3 day (s)");

    }

} // class TestDurationToDescriptiveString

} // namespace Testing
} // namespace Occ
