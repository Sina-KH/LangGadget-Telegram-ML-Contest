namespace Occ {
namespace Testing {

/***********************************************************
@class AbstractTestClientSideEncryption

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public abstract class AbstractTestClientSideEncryption { //: GLib.Object {

    protected static string convert_to_old_storage_format (string data) {
        //  return data.split ("|").join ("fA==");
    }


    protected static HashResult hash_from_string (string data) {
        //  GLib.CryptographicHash hash = new GLib.CryptographicHash (GLib.ChecksumType.SHA1);
        //  hash.add_data (data);
        //  return hash.result ();
    }

} // class AbstractTestClientSideEncryption

} // namespace Testing
} // namespace Occ
