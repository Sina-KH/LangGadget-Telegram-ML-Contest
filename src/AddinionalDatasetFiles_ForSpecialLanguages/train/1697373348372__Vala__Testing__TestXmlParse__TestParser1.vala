namespace Occ {
namespace Testing {

/***********************************************************
@class TestParser1

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestParser1 : AbstractTestXmlParse {

    /***********************************************************
    ***********************************************************/
    private TestParser1 () {
        //  string xml_string = "<?xml version='1.0' encoding='utf-8'?>"
        //      + "<d:multistatus xmlns:d=\"DAV:\" xmlns:s=\"http://sabredav.org/ns\" xmlns:oc=\"http://owncloud.org/ns\">"
        //      + "<d:response>"
        //      + "<d:href>/oc/remote.php/dav/sharefolder/</d:href>"
        //      + "<d:propstat>"
        //      + "<d:prop>"
        //      + "<oc:identifier>00004213ocobzus5kn6s</oc:identifier>"
        //      + "<oc:permissions>RDNVCK</oc:permissions>"
        //      + "<oc:size>121780</oc:size>"
        //      + "<d:getetag>\"5527beb0400b0\"</d:getetag>"
        //      + "<d:resourcetype>"
        //      + "<d:collection/>"
        //      + "</d:resourcetype>"
        //      + "<d:getlastmodified>Fri, 06 Feb 2015 13:49:55 GMT</d:getlastmodified>"
        //      + "</d:prop>"
        //      + "<d:status>HTTP/1.1 200 OK</d:status>"
        //      + "</d:propstat>"
        //      + "<d:propstat>"
        //      + "<d:prop>"
        //      + "<d:getcontentlength/>"
        //      + "<oc:downloadURL/>"
        //      + "<oc:dDC/>"
        //      + "</d:prop>"
        //      + "<d:status>HTTP/1.1 404 Not Found</d:status>"
        //      + "</d:propstat>"
        //      + "</d:response>"
        //      + "<d:response>"
        //      + "<d:href>/oc/remote.php/dav/sharefolder/quitte.pdf</d:href>"
        //      + "<d:propstat>"
        //      + "<d:prop>"
        //      + "<oc:identifier>00004215ocobzus5kn6s</oc:identifier>"
        //      + "<oc:permissions>RDNVW</oc:permissions>"
        //      + "<d:getetag>\"2fa2f0d9ed49ea0c3e409d49e652dea0\"</d:getetag>"
        //      + "<d:resourcetype/>"
        //      + "<d:getlastmodified>Fri, 06 Feb 2015 13:49:55 GMT</d:getlastmodified>"
        //      + "<d:getcontentlength>121780</d:getcontentlength>"
        //      + "</d:prop>"
        //      + "<d:status>HTTP/1.1 200 OK</d:status>"
        //      + "</d:propstat>"
        //      + "<d:propstat>"
        //      + "<d:prop>"
        //      + "<oc:downloadURL/>"
        //      + "<oc:dDC/>"
        //      + "</d:prop>"
        //      + "<d:status>HTTP/1.1 404 Not Found</d:status>"
        //      + "</d:propstat>"
        //      + "</d:response>"
        //      + "</d:multistatus>";

        //  LscolXMLParser lscol_xml_parser;

        //  lscol_xml_parser.signal_directory_listing_subfolders.connect (
        //      this.on_signal_directory_listing_sub_folders
        //  );
        //  lscol_xml_parser.signal_directory_listing_iterated.connect (
        //      this.on_signal_directory_listing_iterated
        //  );
        //  lscol_xml_parser.signal_finished_without_error.connect (
        //      this.on_signal_finished_successfully
        //  );

        //  GLib.HashTable <string, ExtraFolderInfo> sizes;
        //  GLib.assert_true (lscol_xml_parser.parse (xml_string, sizes, "/oc/remote.php/dav/sharefolder" ));

        //  GLib.assert_true (this.success);
        //  GLib.assert_true (sizes.size () == 1); // Quota info in the XML

        //  GLib.assert_true (this.items.contains ("/oc/remote.php/dav/sharefolder/quitte.pdf"));
        //  GLib.assert_true (this.items.contains ("/oc/remote.php/dav/sharefolder"));
        //  GLib.assert_true (this.items.size () == 2 );

        //  GLib.assert_true (this.subdirectories.contains ("/oc/remote.php/dav/sharefolder/"));
        //  GLib.assert_true (this.subdirectories.size () == 1);
    }

} // class TestParser1

} // namespace Testing
} // namespace Occ
