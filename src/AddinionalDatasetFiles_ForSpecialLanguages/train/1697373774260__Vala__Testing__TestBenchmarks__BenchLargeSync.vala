/***********************************************************
This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/

//  #include <syncengine.h>

namespace Occ {
namespace Testing {

public class BenchLargeSync { //: GLib.Object {

    int number_of_directories = 0;
    int number_of_files = 0;

    private BenchLargeSync (int argc, char *argv) {
        //  GLib.Application app = new GLib.Application (argc, argv);
        //  FakeFolder fake_folder = new FakeFolder (FileInfo.A12_B12_C12_S12 ());
        //  //  add_a_bunch_of_files<10, 8, 4> (0, "", fake_folder.local_modifier);

        //  GLib.debug ("NUMFILES " + number_of_files.to_string ());
        //  GLib.debug ("NUMDIRS " + number_of_directories.to_string ());
        //  GLib.Timer timer;
        //  timer.start ();
        //  bool result1 = fake_folder.sync_once ();
        //  GLib.debug ("FIRST SYNC: " + result1 + timer.restart ());
        //  bool result2 = fake_folder.sync_once ();
        //  GLib.debug ("SECOND SYNC: " + result2 + timer.restart ());
        //  GLib.assert_true (result1 && result2);
    }


    private void add_a_bunch_of_files (int files_per_directory, int directories_per_directory, int max_depth, int depth, string path, AbstractFileModifier file_info) {
        //  for (int file_number = 1; file_number <= files_per_directory; ++file_number) {
        //      string name = "file" + file_number.to_string ();
        //      file_info.insert (path == "" ? name : path + "/" + name);
        //      number_of_files++;
        //  }
        //  if (depth >= max_depth)
        //      return;
        //  for (int directory_number = 1; directory_number <= directories_per_directory; ++directory_number) {
        //      string name = "directory" + directory_number.to_string ();
        //      string sub_path = path == "" ? name : path + "/" + name;
        //      file_info.mkdir (sub_path);
        //      number_of_directories++;
        //      add_a_bunch_of_files (files_per_directory, directories_per_directory, max_depth, depth + 1, sub_path, file_info);
        //  }
    }


} // public class BenchLargeSync
} // namespace Testing
} // namespace Occ
