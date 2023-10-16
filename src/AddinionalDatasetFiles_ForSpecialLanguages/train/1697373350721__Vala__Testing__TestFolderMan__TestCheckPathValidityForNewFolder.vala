namespace Occ {
namespace Testing {

/***********************************************************
@class AbstractTestFolderMan

This software is in the public domain, furnished "as is",
without technical support, and with no warranty, express or
implied, as to its usefulness for any purpose.
***********************************************************/
public class TestCheckPathValidityForNewFolder : AbstractTestFolderMan {

    /***********************************************************
    ***********************************************************/
    private TestCheckPathValidityForNewFolder () {
        //  base ();

        //  GLib.TemporaryDir directory;
        //  LibSync.ConfigFile.set_configuration_directory (directory.path); // we don't want to pollute the user's config file
        //  GLib.assert_true (directory.is_valid);
        //  GLib.Dir dir2 = new GLib.Dir (directory.path);
        //  GLib.assert_true (dir2.mkpath ("sub/own_cloud1/folder/file"));
        //  GLib.assert_true (dir2.mkpath ("own_cloud2"));
        //  GLib.assert_true (dir2.mkpath ("sub/free"));
        //  GLib.assert_true (dir2.mkpath ("free2/sub")); {
        //      GLib.File file = new GLib.File (directory.path + "/sub/file.txt");
        //      file.open (GLib.File.WriteOnly);
        //      file.write ("hello");
        //  }
        //  string directory_path = dir2.canonical_path;

        //  GLib.assert_true (folder_manager == this.folder_manager);
        //  GLib.assert_true (folder_manager.add_folder (account_state, folder_definition (directory_path + "/sub/own_cloud1")));
        //  GLib.assert_true (folder_manager.add_folder (account_state, folder_definition (directory_path + "/own_cloud2")));

        //  var folder_list = folder_manager.map ();

        //  //  foreach (var folder in folder_list) {
        //  //      GLib.assert_true (!folder.is_sync_running ());
        //  //  }

        //  // those should be allowed
        //  // string FolderManager.check_path_validity_for_new_folder (string path, GLib.Uri server_url, bool for_new_directory)

        //  GLib.assert_true (folder_manager.check_path_validity_for_new_folder (directory_path + "/sub/free") == "");
        //  GLib.assert_true (folder_manager.check_path_validity_for_new_folder (directory_path + "/free2/") == "");
        //  // Not an existing directory . Ok
        //  GLib.assert_true (folder_manager.check_path_validity_for_new_folder (directory_path + "/sub/bliblablu") == "");
        //  GLib.assert_true (folder_manager.check_path_validity_for_new_folder (directory_path + "/sub/free/bliblablu") == "");
        //  // GLib.assert_true (folder_manager.check_path_validity_for_new_folder (directory_path + "/sub/bliblablu/some/more") == "");

        //  // A file . Error
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/sub/file.txt") == null);

        //  // There are folders configured in those folders, url needs to be taken into account : . ERROR
        //  GLib.Uri url2 = new GLib.Uri (url);
        //  string user = account.credentials ().user ();
        //  url2.set_user_name (user);
        //  //  url  ??? mangled line?
        //  // The following both fail because they refer to the same account (user and url)
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/sub/own_cloud1", url2) == null);
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/own_cloud2/", url2) == null);

        //  // Now it will work because the account is different
        //  GLib.Uri url3 = new GLib.Uri ("http://anotherexample.org");
        //  url3.set_user_name ("dummy");
        //  GLib.assert_true (folder_manager.check_path_validity_for_new_folder (directory_path + "/sub/own_cloud1", url3) == "");
        //  GLib.assert_true (folder_manager.check_path_validity_for_new_folder (directory_path + "/own_cloud2/", url3) == "");

        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path) == null);
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/sub/own_cloud1/folder") == null);
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/sub/own_cloud1/folder/file") == null);

        //  // make a bunch of links
        //  GLib.assert_true (GLib.File.link (directory_path + "/sub/free", directory_path + "/link1"));
        //  GLib.assert_true (GLib.File.link (directory_path + "/sub", directory_path + "/link2"));
        //  GLib.assert_true (GLib.File.link (directory_path + "/sub/own_cloud1", directory_path + "/link3"));
        //  GLib.assert_true (GLib.File.link (directory_path + "/sub/own_cloud1/folder", directory_path + "/link4"));

        //  // Ok
        //  GLib.assert_true (folder_manager.check_path_validity_for_new_folder (directory_path + "/link1") == null);
        //  GLib.assert_true (folder_manager.check_path_validity_for_new_folder (directory_path + "/link2/free") == null);

        //  // Not Ok
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/link2") == null);

        //  // link 3 points to an existing sync folder. To make it fail, the account must be the same
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/link3", url2) == null);
        //  // while with a different account, this is fine
        //  GLib.assert_true (folder_manager.check_path_validity_for_new_folder (directory_path + "/link3", url3) == "");

        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/link4") == null);
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/link3/folder") == null);

        //  // test some non existing sub path (error)
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/sub/own_cloud1/some/sub/path") == null);
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/own_cloud2/blublu") == null);
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/sub/own_cloud1/folder/g/h") == null);
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/link3/folder/neu_folder") == null);

        //  // Subfolder of links
        //  GLib.assert_true (folder_manager.check_path_validity_for_new_folder (directory_path + "/link1/subfolder") == null);
        //  GLib.assert_true (folder_manager.check_path_validity_for_new_folder (directory_path + "/link2/free/subfolder") == null);

        //  // Should not have the rights
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder ("/") == null);
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder ("/usr/bin/somefolder") == null);

        //  // Invalid paths
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder ("") == null);

        //  // REMOVE own_cloud2 from the filesystem, but keep a folder sync'ed to it.
        //  new GLib.Dir (directory_path + "/own_cloud2/").remove_recursively ();
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/own_cloud2/blublu") == null);
        //  GLib.assert_true (!folder_manager.check_path_validity_for_new_folder (directory_path + "/own_cloud2/sub/subsub/sub") == null);
    }

} // class TestCheckPathValidityForNewFolder

} // namespace Testing
} // namespace Occ
