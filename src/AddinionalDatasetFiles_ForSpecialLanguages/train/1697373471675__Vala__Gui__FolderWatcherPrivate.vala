/***********************************************************
@author Klaas Freitag <freitag@owncloud.com>

@copyright GPLv3 or Later
***********************************************************/

//  #include <sys/inotify.h>
//  #include <cerrno>
//  #include <GLib.VarLengthArray>
//  #include <GLib.SocketNotifier>
//  #include <GLib.Dir>

namespace Occ {
namespace Ui {

/***********************************************************
@brief Linux (inotify) API implementation of FolderWatcher
@ingroup gui
***********************************************************/
public class FolderWatcherPrivate { //: GLib.Object {

    /***********************************************************
    On linux the watcher is ready when the ctor finished.
    ***********************************************************/
    public bool ready = true;

    /***********************************************************
    ***********************************************************/
    private FolderWatcher parent;

    /***********************************************************
    ***********************************************************/
    private string folder;
    private GLib.HashTable<int, string> watch_to_path;
    private GLib.HashTable<string, int> path_to_watch;
    private GLib.SocketNotifier socket_notifier;
    private int fd;

    /***********************************************************
    ***********************************************************/
    public FolderWatcherPrivate (FolderWatcher p, string path) {
        //  base ();
        //  this.parent = p;
        //  this.folder = path;
        //  this.fd = inotify_init ();
        //  if (this.fd != -1) {
        //      this.socket_notifier = new GLib.SocketNotifier (this.fd, GLib.SocketNotifier.Read);
        //      this.socket_notifier.activated.connect (
        //          this.on_signal_received_notification
        //      );
        //  } else {
        //      GLib.warning ("notify_init () failed: " + strerror (errno));
        //  }

        //  GLib.Object.invoke_method (this, "on_signal_add_folder_recursive", Q_ARG (string, path));
    }


    /***********************************************************
    ***********************************************************/
    public int test_watch_count () {
        //  return this.path_to_watch.size ();
    }


    /***********************************************************
    ***********************************************************/
    protected void on_signal_received_notification (int fd) {
        //  int len = 0;
        //  INotifyEvent event = null;
        //  size_t i = 0;
        //  int error = 0;
        //  char[] buffer = char[2048]; // previously GLib.VarLengthArray<char, 2048>

        //  len = read (fd, buffer, buffer.size ());
        //  error = errno;
        //  /***********************************************************
        //  From inotify documentation:
        //  The behavior when the buffer given to read (2) is too
        //  small to return information about the next event
        //  depends on the kernel version : in kernels  before 2.6.21,
        //  read (2) returns 0; since kernel 2.6.21, read (2) fails with
        //  the error EINVAL.
        //  */
        //  while (len < 0 && error == EINVAL) {
        //      // double the buffer size
        //      buffer.resize (buffer.size () * 2);

        //      /* and try again ... */
        //      len = read (fd, buffer, buffer.size ());
        //      error = errno;
        //  }

        //  // iterate events in buffer
        //  uint32 ulen = len;
        //  for (i = 0; i + sizeof (INotifyEvent) < ulen; i += sizeof (INotifyEvent) + (event != null ? event.len : 0)) {
        //      // cast an INotifyEvent
        //      event = (INotifyEvent)buffer[i];
        //      if (event == null) {
        //          GLib.debug ("NULL event");
        //          continue;
        //      }

        //      // Fire event for the path that was changed.
        //      if (event.len == 0 || event.wd <= -1) {
        //          continue;
        //      }
        //      string filename = event.name;
        //      // Filter out journal changes - redundant with filtering in
        //      // FolderWatcher.path_is_ignored.
        //      if (filename.has_prefix (".sync_")
        //          || filename.has_prefix (".csync_journal.db")
        //          || filename.has_prefix (".sync_")) {
        //          continue;
        //      }
        //      string p = this.watch_to_path[event.wd] + "/" + filename;
        //      this.parent.on_signal_change_detected (p);

        //      if ( (event.mask & (IN_MOVED_TO | IN_CREATE))
        //          && new GLib.FileInfo (p).is_dir ()
        //          && !this.parent.path_is_ignored (p)) {
        //          on_signal_add_folder_recursive (p);
        //      }
        //      if (event.mask & (IN_MOVED_FROM | IN_DELETE)) {
        //          remove_folders_below (p);
        //      }
        //  }
    }


    /***********************************************************
    ***********************************************************/
    protected void on_signal_add_folder_recursive (string path) {
        //  if (this.path_to_watch.contains (path)) {
        //      return;
        //  }
        //  int subdirectories = 0;
        //  GLib.debug (" (+) Watcher: " + path);

        //  GLib.Dir in_path = new GLib.Dir (path);
        //  inotify_register_path (in_path.absolute_path);

        //  GLib.List<string> all_subfolders;
        //  if (!find_folders_below (new GLib.Dir (path), all_subfolders)) {
        //      GLib.warning ("Could not traverse all subfolders.");
        //  }
        //  var subfolders_it = new GLib.StringListIterator (all_subfolders);
        //  while (subfolders_it.has_next ()) {
        //      string subfolder = subfolders_it.next ();
        //      GLib.Dir folder = new GLib.Dir (subfolder);
        //      if (folder.exists () && !this.path_to_watch.contains (folder.absolute_path)) {
        //          subdirectories++;
        //          if (this.parent.path_is_ignored (subfolder)) {
        //              GLib.debug ("* Not adding " + folder.path);
        //              continue;
        //          }
        //          inotify_register_path (folder.absolute_path);
        //      } else {
        //          GLib.debug ("    `. discarded: " + folder.path);
        //      }
        //  }

        //  if (subdirectories > 0) {
        //      GLib.debug ("    `. and " + subdirectories.to_string () + " subdirectories");
        //  }
    }


    /***********************************************************
    Attention: result list passed by reference!
    ***********************************************************/
    protected bool find_folders_below (GLib.Dir directory, GLib.List<string> full_list) {
        //  bool ok = true;
        //  if (! (directory.exists () && directory.is_readable ())) {
        //      GLib.debug ("Non existing path coming in: " + directory.absolute_path);
        //      ok = false;
        //  } else {
        //      GLib.List<string> name_filter;
        //      name_filter += "*";
        //      GLib.Dir.Filters filter = GLib.Dir.Dirs | GLib.Dir.NoDotAndDotDot | GLib.Dir.No_sym_links | GLib.Dir.Hidden;
        //      GLib.List<string> pathes = directory.entry_list (name_filter, filter);

        //      // FIXME: need to iterate through GLib.List<string>
        //      //  GLib.List<string>.ConstIterator ConstIterator;
        //      //  for (ConstIterator = pathes.const_begin (); ConstIterator != pathes.const_end ();
        //      //       ++ConstIterator) {
        //      //      const string full_path (directory.path + "/" + (ConstIterator));
        //      //      full_list.append (full_path);
        //      //      ok = find_folders_below (GLib.Dir (full_path), full_list);
        //      //  }
        //  }

        //  return ok;
    }


    /***********************************************************
    ***********************************************************/
    protected void inotify_register_path (string path) {
        //  if (path == "") {
        //      return;
        //  }
        //  int wd = inotify_add_watch (this.fd, path.to_utf8 ().const_data (),
        //      IN_CLOSE_WRITE | IN_ATTRIB | IN_MOVE | IN_CREATE | IN_DELETE | IN_DELETE_SELF | IN_MOVE_SELF | IN_UNMOUNT | IN_ONLYDIR);
        //  if (wd > -1) {
        //      this.watch_to_path.insert (wd, path);
        //      this.path_to_watch.insert (path, wd);
        //  } else {
        //      // If we're running out of memory or inotify watches, become
        //      // unreliable.
        //      if (this.parent.is_reliable && (errno == ENOMEM || errno == ENOSPC)) {
        //          this.parent.is_reliable = false;
        //          this.parent.signal_became_unreliable (
        //              _("This problem usually happens when the inotify watches are exhausted. "
        //               + "Check the FAQ for details."));
        //      }
        //  }
    }


    /***********************************************************
    ***********************************************************/
    protected void remove_folders_below (string path) {
        //  var it = this.path_to_watch.find (path);
        //  if (it == this.path_to_watch.end ()) {
        //      return;
        //  }
        //  string path_slash = path + "/";

        //  // Remove the entry and all subentries
        //  while (it != this.path_to_watch.end ()) {
        //      var it_path = it.key ();
        //      if (!it_path.has_prefix (path)) {
        //          break;
        //      }
        //      if (it_path != path && !it_path.has_prefix (path_slash)) {
        //          // order is 'foo', 'foo bar', 'foo/bar'
        //          ++it;
        //          continue;
        //      }

        //      var wid = it.value ();
        //      inotify_rm_watch (this.fd, wid);
        //      this.watch_to_path.remove (wid);
        //      it = this.path_to_watch.erase (it);
        //      GLib.debug ("Removed watch for " + it_path);
        //  }
    }

} // class FolderWatcherPrivate

} // namespace Ui
} // namespace Occ
