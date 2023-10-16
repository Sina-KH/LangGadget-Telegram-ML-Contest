/***********************************************************
This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/

namespace Occ {
namespace Testing {

public class TestPercentEncoding : AbstractTestChunkingNg {

    /***********************************************************
    ***********************************************************/
    private TestPercentEncoding () {
        //  FakeFolder fake_folder = new FakeFolder (FileInfo.A12_B12_C12_S12 ());
        //  fake_folder.sync_engine.account.set_capabilities ({ { "dav", new GLib.HashMap ({ "chunking", "1.0" }) } });
        //  int size = 5 * 1000 * 1000;
        //  set_chunk_size (fake_folder.sync_engine, 1 * 1000 * 1000);

        //  fake_folder.local_modifier.insert ("A/file % \u20ac", size);
        //  GLib.assert_true (fake_folder.sync_once ());
        //  GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());

        //  // Only the second upload contains an "If" header
        //  fake_folder.local_modifier.append_byte ("A/file % \u20ac");
        //  GLib.assert_true (fake_folder.sync_once ());
        //  GLib.assert_true (fake_folder.current_local_state () == fake_folder.current_remote_state ());
    }

} // class TestPercentEncoding

} // namespace Testing
} // namespace Occ
