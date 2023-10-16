namespace Occ {
namespace Testing {

/***********************************************************
@class TestUnicodeExec

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestUnicodeExec : AbstractTestOwnSql {

    /***********************************************************
    ***********************************************************/
    private TestUnicodeExec () {
        //  base ();

        //  string sql = "INSERT INTO addresses (identifier, name, address, entered) VALUES "
        //                   + " (?1, ?2, ?3, ?4);";
        //  SqlQuery query = new SqlQuery (this.database);
        //  query.prepare (sql);
        //  query.bind_value (1, 3);
        //  query.bind_value (2, "пятницы");
        //  query.bind_value (3, "проспект");
        //  query.bind_value (4, 1403002224);
        //  GLib.assert_true (query.exec ());
    }

} // class TestUnicodeExec

} // namespace Testing
} // namespace Occ
