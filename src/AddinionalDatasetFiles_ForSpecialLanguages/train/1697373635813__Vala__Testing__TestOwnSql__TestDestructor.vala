namespace Occ {
namespace Testing {

/***********************************************************
@class TestDestructor

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestDestructor : AbstractTestOwnSql {

    /***********************************************************
    This test makes sure that the destructor of SqlQuery works
    even if the Sqlite.Database has already been destroyed.
    ***********************************************************/
    private TestDestructor () {
        //  base ();

        //  Sqlite.Database database;
        //  SqlQuery query_1 = new SqlQuery (this.database);
        //  SqlQuery query_2 = new SqlQuery (this.database);
        //  query_2.prepare ("SELECT * FROM addresses");
        //  SqlQuery query_3 = new SqlQuery ("SELECT * FROM addresses", this.database);
        //  SqlQuery query_4;
        //  database.reset ();
    }

} // class TestDestructor

} // namespace Testing
} // namespace Occ
