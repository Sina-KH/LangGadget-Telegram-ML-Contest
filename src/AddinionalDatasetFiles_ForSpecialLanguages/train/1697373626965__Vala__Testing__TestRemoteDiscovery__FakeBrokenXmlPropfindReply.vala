namespace Occ {
namespace Testing {

/***********************************************************
@class FakeBrokenXmlPropfindReply

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class FakeBrokenXmlPropfindReply : FakePropfindReply {

    private FakeBrokenXmlPropfindReply (
        //  FileInfo remote_root_file_info, Soup.Operation operation,
        //  Soup.Request request
    ) {
        //  base (remote_root_file_info, operation, request);
        //  GLib.assert_true (payload.size () > 50);
        //  // turncate the XML
        //  payload.chop (20);
    }

} // class FakeBrokenXmlPropfindReply

} // namespace Testing
} // namespace Occ
