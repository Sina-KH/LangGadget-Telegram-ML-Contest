namespace Occ {
namespace Testing {

/***********************************************************
libcsync -- a library to sync a directory with another

@author 2015-2013 by Klaas Freitag <freitag@owncloud.co

This library is free software; you can redistribute it and/o
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later vers

This library is distributed in the hope that it wi
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
***********************************************************/
public class CheckVioExt { //: GLib.Object {

    const int WD_BUFFER_SIZE = 255;

    string csync_test_dir () {
        //  return new GLib.Dir.temporary_path + "/csync_test";
    }

    int oc_mkdir (string path) {
        //  return new GLib.Dir (path).mkpath (path) ? 0 : -1;
    }

    static char wd_buffer[WD_BUFFER_SIZE];

    class StateVar {
        //  string result;
        //  string ignored_dir;
    }


    /***********************************************************
    remove the complete test directory */
    static int wipe_testdir () {
        //  GLib.Dir temporary = new GLib.Dir (csync_test_dir ());
        //  if (temporary.exists ()) {
        //      return temporary.remove_recursively () ? 0 : 1;
        //  }
        //  return 0;
    }

    static int setup_testenv (void **state) {
        //  int rc = 0;

        //  rc = wipe_testdir ();
        //  GLib.assert_true (rc == 0);

        //  var directory = csync_test_dir ();
        //  rc = oc_mkdir (directory);
        //  GLib.assert_true (rc == 0);

        //  assert_non_null (getcwd (wd_buffer, WD_BUFFER_SIZE));

        //  rc = chdir (directory.to_local_8_bit ().const_data ());

        //  GLib.assert_true (rc == 0);

        //  /* --- initialize csync */
        //  var mystate = StateVar ();
        //  *state = mystate;
        //  return 0;
    }

    static void output (string text) {
        //  printf ("%s\n", text);
    }

    static int teardown (void **state) {
        //  int rc = -1;

        //  output ("================== Tearing down!\n");

        //  rc = chdir (wd_buffer);
        //  GLib.assert_true (rc == 0);

        //  rc = wipe_testdir ();
        //  GLib.assert_true (rc == 0);

        //  //  delete (StateVar) state;
        //  return 0;
    }


    /***********************************************************
    This function takes a relative path, prepends it with the csync_test_dir ()
    and creates each sub directory.
    ***********************************************************/
    static void create_dirs (string path) {
        //  int rc = -1;
        //  var mypath = "%1/%2".printf (csync_test_dir (), path);

        //  char p = mypath + csync_test_dir ().size () + 1; /* on_signal_start behind the offset */
        //  int i = 0;

        //  assert_non_null (path);

        //  while ( * (p+i) ) {
        //      if ( * (p+i) == "/" ) {
        //          p[i] = '\0';

        //          var mb_dir = mypath;
        //          rc = oc_mkdir (mb_dir);
        //          if (rc != null) {
        //              rc = errno;
        //          }
        //          GLib.assert_true (rc == 0);
        //          p[i] = "/";
        //      }
        //      i++;
        //  }
    }


    /***********************************************************
    This function uses the vio_opendir, vio_readdir and vio_closedir functions
    to traverse a file tree that was created before by the create_dir function.

    It appends a listing to the result member of the incoming class in state
    that can be compared later to what was expected in the calling functions.

    The int parameter count contains the number of seen files (not dirs) in the
    whole tree.
    ***********************************************************/
    static void traverse_dir (void **state, string directory, int count) {
        //  CSync.VioHandle directory_handle = null;
        //  Posix.DirEnt dirent;
        //  var sv = (StateVar*) *state;
        //  string subdir;
        //  string subdir_out;
        //  int rc = -1;
        //  bool is_dir = false;

        //  directory_handle = CSync.VioHandle.open_directory (directory);
        //  assert_non_null (directory_handle);

        //  Common.AbstractVfs vfs = null;
        //  while ( (dirent = CSync.VioHandle.read_directory (directory_handle, vfs)) ) {
        //      assert_non_null (dirent.get ());
        //      if (!dirent.original_path == "") {
        //          sv.ignored_dir = dirent.original_path;
        //          continue;
        //      }

        //      assert_false (dirent.path == "");

        //      if ( dirent.path == ".." || dirent.path == "." ) {
        //      continue;
        //      }

        //      is_dir = dirent.type == ItemType.DIRECTORY;

        //      subdir = directory + "/" + dirent.path;
        //      subdir_out = (is_dir ? "<DIR> ":"      ") + subdir;

        //      if ( is_dir ) {
        //          if ( sv.result == null ) {
        //          sv.result = subdir_out;
        //          } else {
        //          sv.result += subdir_out;
        //          }
        //      } else {
        //          *count = *count +1;
        //      }
        //      output (subdir_out.const_data ());
        //      if ( is_dir ) {
        //          traverse_dir (state, subdir, count);
        //      }
        //  }

        //  rc = CSync.VioHandle.close_directory (directory_handle);
        //  GLib.assert_true (rc == 0);

    }

    static void create_file (string path, string name, string content) {
        //  GLib.File file = GLib.File.new_for_path ("%1/%2%3".printf (csync_test_dir (), path, name));
        //  GLib.assert_true (1 == file.open (GLib.IODevice.WriteOnly | GLib.IODevice.NewOnly));
        //  file.write (content);
    }

    static void check_readdir_shorttree (void **state) {
        //  var sv = (StateVar*) *state;

        //  string t1 = "alibaba/und/die/vierzig/räuber/";
        //  create_dirs ( t1 );
        //  int file_count = 0;

        //  traverse_dir (state, csync_test_dir (), file_count);

        //  GLib.assert_true (sv.result.const_data () ==
        //      "<DIR> %1/alibaba"
        //      + "<DIR> %1/alibaba/und"
        //      + "<DIR> %1/alibaba/und/die"
        //      + "<DIR> %1/alibaba/und/die/vierzig"
        //      + "<DIR> %1/alibaba/und/die/vierzig/räuber"
        //      .printf (csync_test_dir ())
        //      .const_data ());
        //  GLib.assert_true (file_count == 0);
    }

    static void check_readdir_with_content (void **state) {
        //  var sv = (StateVar*) *state;
        //  int file_count = 0;

        //  string t1 = "warum/nur/40/Räuber/";
        //  create_dirs ( t1 );

        //  create_file ( t1, "Räuber Max.txt", "Der Max ist ein schlimmer finger");
        //  create_file ( t1, "пя́тница.txt", "Am Freitag tanzt der Ürk");

        //  traverse_dir (state, csync_test_dir (), file_count);

        //  GLib.assert_true (sv.result.const_data () ==
        //      "<DIR> %1/warum"
        //      + "<DIR> %1/warum/nur"
        //      + "<DIR> %1/warum/nur/40"
        //      + "<DIR> %1/warum/nur/40/Räuber"
        //          .printf (csync_test_dir ())
        //          .const_data ());
        //  /*                   "      %1/warum/nur/40/Räuber/Räuber Max.txt"
        //                      "      %1/warum/nur/40/Räuber/пя́тница.txt"; */
        //  GLib.assert_true (file_count == 2); /* Two files in the sub directory */
    }

    static void check_readdir_longtree (void **state) {
        //  var sv = (StateVar*) *state;

        //  /* Strange things here : Compilers only support strings with length of 4k max.
        //  * The expected result string is longer, so it needs to be split up in r1, r2 and r3
        //  */

        //  /* create the test tree */
        //  string t1 = "vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL/RUM/undnochmalallezusammen/VierZig/MannaufDesTotenManns/KISTE/ooooooooooooooooooooooooooohhhhhh/und/BESSER/ZWEI/Butteln/VOLL RUM/";
        //  create_dirs ( t1 );

        //  string r1 =
        //      ( "<DIR> %1/vierzig"
        //      + "<DIR> %1/vierzig/mann"
        //      + "<DIR> %1/vierzig/mann/auf"
        //      + "<DIR> %1/vierzig/mann/auf/des"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum").printf (csync_test_dir ());

        //  string r2 =
        //      ( "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH").printf (csync_test_dir ());

        //  string r3 =
        //      ( "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL/RUM"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL/RUM/undnochmalallezusammen"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL/RUM/undnochmalallezusammen/VierZig"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL/RUM/undnochmalallezusammen/VierZig/MannaufDesTotenManns"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL/RUM/undnochmalallezusammen/VierZig/MannaufDesTotenManns/KISTE"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL/RUM/undnochmalallezusammen/VierZig/MannaufDesTotenManns/KISTE/ooooooooooooooooooooooooooohhhhhh"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL/RUM/undnochmalallezusammen/VierZig/MannaufDesTotenManns/KISTE/ooooooooooooooooooooooooooohhhhhh/und"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL/RUM/undnochmalallezusammen/VierZig/MannaufDesTotenManns/KISTE/ooooooooooooooooooooooooooohhhhhh/und/BESSER"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL/RUM/undnochmalallezusammen/VierZig/MannaufDesTotenManns/KISTE/ooooooooooooooooooooooooooohhhhhh/und/BESSER/ZWEI"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL/RUM/undnochmalallezusammen/VierZig/MannaufDesTotenManns/KISTE/ooooooooooooooooooooooooooohhhhhh/und/BESSER/ZWEI/Butteln"
        //      + "<DIR> %1/vierzig/mann/auf/des/toten/Mann/kiste/ooooooooooooooooooooooh/and/ne/bottle/voll/rum/und/so/singen/wir/VIERZIG/MANN/AUF/DES/TOTEN/MANNS/KISTE/OOOOOOOOH/AND/NE/BOTTLE/VOLL/RUM/undnochmalallezusammen/VierZig/MannaufDesTotenManns/KISTE/ooooooooooooooooooooooooooohhhhhh/und/BESSER/ZWEI/Butteln/VOLL RUM").printf (csync_test_dir ());

        //  /* assemble the result string ... */
        //  string result = r1 + r2 + r3;
        //  int file_count = 0;
        //  traverse_dir (state, csync_test_dir (), file_count);
        //  GLib.assert_true (file_count == 0);
        //  /* and compare. */
        //  GLib.assert_string_equal (sv.result.const_data (), result.const_data ());
    }

    // https://github.com/owncloud/client/issues/3128 https://github.com/owncloud/client/issues/2777
    static void check_readdir_bigunicode (void **state) {
        //  var sv = (StateVar*) *state;
        //1 : ? ASCII : 239 - EF
        //2 : ? ASCII : 187 - BB
        //3 : ? ASCII : 191 - BF
        //4 : ASCII : 32    - 20

        //  string p = "%1/%2".printf (csync_test_dir (), "goodone/");
        //  int rc = oc_mkdir (p);
        //  GLib.assert_true (rc == 0);

        //  p = "%1/goodone/ugly\xEF\xBB\xBF\x32.txt".printf (csync_test_dir ()); // file with encoding error

        //  rc = oc_mkdir (p);

        //  GLib.assert_true (rc == 0);

        //  int file_count = 0;
        //  traverse_dir (state, csync_test_dir (), file_count);
        //  var expected_result = "<DIR> %1/goodone"
        //                          + "<DIR> %1/goodone/ugly\xEF\xBB\xBF\x32.txt"
        //                          .printf (csync_test_dir ());
        //  GLib.assert_string_equal (sv.result.const_data (), expected_result.const_data ());

        //  GLib.assert_true (file_count == 0);
    }

    CMUnitTest[] tests;

    int torture_run_tests () {
        //  tests = {
        //      cmocka_unit_test_setup_teardown (check_readdir_shorttree, setup_testenv, teardown),
        //      cmocka_unit_test_setup_teardown (check_readdir_with_content, setup_testenv, teardown),
        //      cmocka_unit_test_setup_teardown (check_readdir_longtree, setup_testenv, teardown),
        //      cmocka_unit_test_setup_teardown (check_readdir_bigunicode, setup_testenv, teardown),
        //  };

        //  return cmocka_run_group_tests (tests, null, null);
    }

} // class CheckVioExt
} // namespace Testing
} // namespace Occ
