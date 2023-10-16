/***********************************************************
@author Klaas Freitag <freitag@kde.org>

@copyright GPLv3 or Later
***********************************************************/

//  #include <GLib.AbstractItemModel>
//  #include <GLib.Timer>
//  #include <GLib.Pointer>

namespace Occ {
namespace Ui {

/***********************************************************
@brief The FolderStatusModel class
@ingroup gui
***********************************************************/
public class FolderStatusModel { //: GLib.AbstractItemModel {

    /***********************************************************
    ***********************************************************/
    public class SubFolderInfo {

        //  class Progress {

        //      string progress_string;
        //      string overall_sync_string;
        //      int warning_count = 0;
        //      int overall_percent = 0;

        //      bool is_null ()
        //      {
        //          return this.progress_string == "" && this.warning_count == 0 && this.overall_sync_string = "";
        //      }
        //  }

        //  Progress progress;

        //  FolderConnection folder_connection;

        //  /***********************************************************
        //  FolderConnection name to be displayed in the UI
        //  ***********************************************************/
        //  string name;

        //  /***********************************************************
        //  Sub-folder_connection path that should always point to a local
        //  filesystem's folder_connection
        //  ***********************************************************/
        //  string path;

        //  /***********************************************************
        //  Mangled name that needs to be used when making fetch
        //  requests and should not be used for displaying in the UI
        //  ***********************************************************/
        //  string e2e_mangled_name;

        //  /***********************************************************
        //  ***********************************************************/
        //  GLib.List<int> path_index;

        //  /***********************************************************
        //  ***********************************************************/
        //  GLib.List<SubFolderInfo> subs;

        //  /***********************************************************
        //  ***********************************************************/
        //  int64 size = 0;

        //  /***********************************************************
        //  ***********************************************************/
        //  bool is_external = false;

        //  /***********************************************************
        //  ***********************************************************/
        //  bool is_encrypted = false;

        //  /***********************************************************
        //  If we did the LSCOL for this folder_connection already
        //  ***********************************************************/
        //  bool fetched = false;

        //  /***********************************************************
        //  Currently running LibSync.LscolJob
        //  ***********************************************************/
        //  LibSync.LscolJob fetching_job;

        //  /***********************************************************
        //  If the last fetching job ended in an error
        //  ***********************************************************/
        //  bool has_error = false;

        //  /***********************************************************
        //  ***********************************************************/
        //  string last_error_string;

        //  /***********************************************************
        //  Whether a "fetching in progress" label is shown.
        //  ***********************************************************/
        //  bool fetching_label = false;

        //  /***********************************************************
        //  Undecided folders are the big folders that the user has not
        //  accepted yet
        //  ***********************************************************/
        //  bool is_undecided = false;

        //  /***********************************************************
        //  The file identifier for this folder_connection on the server
        //  ***********************************************************/
        //  string file_id;

        //  /***********************************************************
        //  ***********************************************************/
        //  GLib.CheckState checked = GLib.Checked;

        //  /***********************************************************
        //  Whether this has a ItemType.FETCH_LABEL subrow
        //  ***********************************************************/
        //  bool has_label () {
        //      return this.has_error || this.fetching_label;
        //  }

        //  /***********************************************************
        //  Reset all subfolders and fetch status
        //  ***********************************************************/
        //  void reset_subs (FolderStatusModel model, GLib.ModelIndex index) {
        //      this.fetched = false;
        //      if (this.fetching_job) {
        //          disconnect (this.fetching_job, null, model, null);
        //          this.fetching_job.delete_later ();
        //          this.fetching_job = "";
        //      }
        //      if (has_label ()) {
        //          model.begin_remove_rows (index, 0, 0);
        //          this.fetching_label = false;
        //          this.has_error = false;
        //          model.end_remove_rows ();
        //      } else if (!this.subs == "") {
        //          model.begin_remove_rows (index, 0, this.subs.length - 1);
        //          this.subs = "";
        //          model.end_remove_rows ();
        //      }
        //  }
    }


    /***********************************************************
    ***********************************************************/
    public const int FILE_ID_ROLE; // = GLib.USER_ROLE + 1;


    /***********************************************************
    ***********************************************************/
    public enum ItemType {
        ROOT_FOLDER,
        SUBFOLDER,
        ADD_BUTTON,
        FETCH_LABEL
    }


    private const string PROPERTY_PARENT_INDEX_C = "oc_parent_index";
    private const string PROPERTY_PERMISSION_MAP = "oc_permission_map";
    private const string PROPERTY_ENCRYPTION_MAP = "nc_encryption_map";


    /***********************************************************
    ***********************************************************/
    public GLib.List<SubFolderInfo?> folders;


    /***********************************************************
    ***********************************************************/
    public AccountState account_state {
        private get {
            return this.account_state;
        }
        //  public set {
        //      begin_reset_model ();
        //      this.dirty = false;
        //      this.folders == new GLib.List<SubFolderInfo> ();
        //      this.account_state = value;

        //      FolderManager.instance.signal_folder_sync_state_change.connect (
        //          this.on_signal_folder_sync_state_change // GLib.UniqueConnection
        //      );
        //      FolderManager.instance.signal_schedule_queue_changed.connect (
        //          this.on_signal_folder_schedule_queue_changed // GLib.UniqueConnection
        //      );

        //      var folders = FolderManager.instance.map ();
        //      foreach (var folder_connection in folders) {
        //          if (!this.account_state) {
        //              break;
        //          }
        //          if (folder_connection.account_state != this.account_state) {
        //              continue;
        //          }
        //          SubFolderInfo info;
        //          info.name = folder_connection.alias ();
        //          info.path = "/";
        //          info.folder_connection = folder_connection;
        //          info.checked = GLib.PartiallyChecked;
        //          this.folders + info;

        //          folder_connection.signal_progress_info.connect (
        //              this.on_signal_folder_progress_info // GLib.UniqueConnection
        //          );
        //          folder_connection.signal_new_big_folder_discovered.connect (
        //              this.on_signal_new_big_folder_discovered // GLib.UniqueConnection
        //          );
        //      }

        //      // Sort by header text
        //      std.sort (this.folders.begin (), this.folders.end (), sort_by_folder_header);

        //      // Set the root this.path_index after the sorting
        //      for (int i = 0; i < this.folders.length (); ++i) {
        //          this.folders[i].path_index + i;
        //      }

        //      end_reset_model ();
        //      signal_dirty_changed ();
        //  }
    }


    /***********************************************************
    If the selective sync checkboxes were changed
    ***********************************************************/
    private bool dirty = false;

    /***********************************************************
    Keeps track of items that are fetching data from the server.

    See on_signal_show_pending_fetch_progress ()
    ***********************************************************/
    private GLib.HashTable<GLib.PersistentModelIndex, GLib.Timer> fetching_items;


    internal signal void signal_dirty_changed ();


    /***********************************************************
    Tell the view that this item should be expanded because it
    has an undecided item
    ***********************************************************/
    internal signal void signal_suggest_expand (GLib.ModelIndex index);


    //  friend class SubFolderInfo;


    /***********************************************************
    ***********************************************************/
    public FolderStatusModel () {
        //  base ();
        //  this.account_state = null;
    }


    /***********************************************************
    ***********************************************************/
    public GLib.ItemFlags flags (GLib.ModelIndex index) {
        //  if (!this.account_state) {
        //      return {};
        //  }

        //  var info = info_for_index (index);
        //  var supports_selective_sync = info && info.folder_connection && info.folder_connection.supports_selective_sync;

        //  switch (classify (index)) {
        //  case ItemType.ADD_BUTTON: {
        //      GLib.ItemFlags ret;
        //      ret = GLib.ItemNeverHasChildren;
        //      if (!this.account_state.is_connected) {
        //          return ret;
        //      }
        //      return GLib.ItemIsEnabled | ret;
        //  }
        //  case ItemType.FETCH_LABEL:
        //      return GLib.ItemIsEnabled | GLib.ItemNeverHasChildren;
        //  case ItemType.ROOT_FOLDER:
        //      return GLib.ItemIsEnabled;
        //  case ItemType.SUBFOLDER:
        //      if (supports_selective_sync) {
        //          return GLib.ItemIsEnabled | GLib.ItemIsUserCheckable | GLib.ItemIsSelectable;
        //      } else {
        //          return GLib.ItemIsEnabled | GLib.ItemIsSelectable;
        //      }
        //  }
        //  return {};
    }


    /***********************************************************
    ***********************************************************/
    public GLib.Variant data_for_index_and_role (GLib.ModelIndex index, int role) {
        //  if (!index.is_valid) {
        //      return GLib.Variant ();
        //  }

        //  if (role == GLib.EditRole) {
        //      return GLib.Variant ();
        //  }

        //  switch (classify (index)) {
        //  case ItemType.ADD_BUTTON: {
        //      if (role == DataRole.ADD_BUTTON) {
        //          return GLib.Variant (true);
        //      } else if (role == GLib.ToolTipRole) {
        //          if (!this.account_state.is_connected) {
        //              return _("You need to be connected to add a folder_connection");
        //          }
        //          return _("Click this button to add a folder_connection to synchronize.");
        //      }
        //      return GLib.Variant ();
        //  }
        //  case ItemType.SUBFOLDER: {
        //      var x = ((SubFolderInfo)index.internal_pointer ()).subs.at (index.row ());
        //      var supports_selective_sync = x.folder_connection && x.folder_connection.supports_selective_sync;

        //      switch (role) {
        //      case GLib.Display_role:
        //          // : Example text: "File.txt (23KB)"
        //          return x.size < 0 ? x.name : _("%1 (%2)").printf (x.name, Utility.octets_to_string (x.size));
        //      case GLib.ToolTipRole:
        //          return "<qt>" + Utility.escape (x.size < 0 ? x.name : _("%1 (%2)").printf (x.name, Utility.octets_to_string (x.size))) + "</qt>";
        //      case GLib.CheckStateRole:
        //          if (supports_selective_sync) {
        //              return x.checked;
        //          } else {
        //              return GLib.Variant ();
        //          }
        //      case GLib.Decoration_role: {
        //          if (x.is_encrypted) {
        //              return new Gtk.IconInfo (":/client/theme/lock-https.svg");
        //          } else if (x.size > 0 && is_any_ancestor_encrypted (index)) {
        //              return new Gtk.IconInfo (":/client/theme/lock-broken.svg");
        //          }
        //          return GLib.FileIconProvider ().icon (x.is_external ? GLib.FileIconProvider.Network { //: GLib.FileIconProvider.FolderConnection);
        //      }
        //      case GLib.Foreground_role:
        //          if (x.is_undecided) {
        //              return Gdk.RGBA (GLib.red);
        //          }
        //          break;
        //      case FILE_ID_ROLE:
        //          return x.file_id;
        //      case DataRole.FOLDER_PATH_ROLE: {
        //          var folder_connection = x.folder_connection;
        //          if (!folder_connection) {
        //              return GLib.Variant ();
        //          }
        //          return GLib.Variant (folder_connection.path + x.path);
        //      }
        //      }
        //  }
        //      return GLib.Variant ();
        //  case ItemType.FETCH_LABEL: {
        //      var x = (SubFolderInfo)index.internal_pointer ();
        //      switch (role) {
        //      case GLib.Display_role:
        //          if (x.has_error) {
        //              return GLib.Variant (_("Error while loading the list of folders from the server.")
        //                  + "\n" + x.last_error_string);
        //          } else {
        //              return _("Fetching folder_connection list from server …");
        //          }
        //          break;
        //      default:
        //          return GLib.Variant ();
        //      }
        //  }
        //  case ItemType.ROOT_FOLDER:
        //      break;
        //  }
        //  SubFolderInfo folder_info = this.folders.at (index.row ());
        //  var folder_connection = folder_info.folder_connection;
        //  if (!folder_connection) {
        //      return GLib.Variant ();
        //  }
        //  SubFolderInfo.Progress progress = folder_info.progress;
        //  bool account_connected = this.account_state.is_connected;

        //  switch (role) {
        //  case DataRole.FOLDER_PATH_ROLE:
        //      return folder_connection.short_gui_local_path;
        //  case DataRole.FOLDER_SECOND_PATH_ROLE:
        //      return folder_connection.remote_path;
        //  case DataRole.FOLDER_CONFLICT_MESSAGE:
        //      return (folder_connection.sync_result.has_unresolved_conflicts)
        //          ? { (_("There are unresolved conflicts. Click for details.")) }
        //          : { };
        //  case DataRole.FOLDER_ERROR_MESSAGE:
        //      return folder_connection.sync_result.error_strings ();
        //  case DataRole.FOLDER_INFO_MESSAGE:
        //      return folder_connection.virtual_files_enabled () && folder_connection.vfs ().mode () != VfsMode.WindowsCfApi
        //          ? { (_("Virtual file support is enabled."))}
        //          : { };
        //  case DataRole.SYNC_RUNNING:
        //      return folder_connection.sync_result.status () == LibSync.SyncResult.Status.SYNC_RUNNING;
        //  case DataRole.SYNC_DATE:
        //      return folder_connection.sync_result.sync_time ();
        //  case DataRole.HEADER_ROLE:
        //      return folder_connection.short_gui_remote_path_or_app_name ();
        //  case DataRole.FOLDER_ALIAS_ROLE:
        //      return folder_connection.alias ();
        //  case DataRole.FOLDER_SYNC_PAUSED:
        //      return folder_connection.sync_paused;
        //  case DataRole.FOLDER_ACCOUNT_CONNECTED:
        //      return account_connected;
        //  case GLib.ToolTipRole: {
        //      string tool_tip;
        //      if (!progress == null) {
        //          return progress.progress_string;
        //      }
        //      if (account_connected) {
        //          tool_tip = LibSync.Theme.status_header_text (folder_connection.sync_result.status ());
        //      } else {
        //          tool_tip = _("Signed out");
        //      }
        //      tool_tip += "\n";
        //      tool_tip += folder_info.folder_connection.path;
        //      return tool_tip;
        //  }
        //  case DataRole.FOLDER_STATUS_ICON_ROLE:
        //      if (account_connected) {
        //          var theme = LibSync.Theme.instance;
        //          var status = folder_connection.sync_result.status ();
        //          if (folder_connection.sync_paused) {
        //              return theme.folder_disabled_icon;
        //          } else {
        //              if (status == LibSync.SyncResult.Status.SYNC_PREPARE || status == LibSync.SyncResult.Status.UNDEFINED) {
        //                  return theme.sync_state_icon (LibSync.SyncResult.Status.SYNC_RUNNING);
        //              } else {
        //                  // The "Problem" *result* just means some files weren't
        //                  // synced, so we show "Success" in these cases. But we
        //                  // do use the "Problem" *icon* for unresolved conflicts.
        //                  if (status == LibSync.SyncResult.Status.SUCCESS || status == LibSync.SyncResult.Status.PROBLEM) {
        //                      if (folder_connection.sync_result.has_unresolved_conflicts) {
        //                          return theme.sync_state_icon (LibSync.SyncResult.Status.PROBLEM);
        //                      } else {
        //                          return theme.sync_state_icon (LibSync.SyncResult.Status.SUCCESS);
        //                      }
        //                  } else {
        //                      return theme.sync_state_icon (status);
        //                  }
        //              }
        //          }
        //      } else {
        //          return LibSync.Theme.folder_offline_icon;
        //      }
        //  case DataRole.SYNC_PROGRESS_ITEM_STRING:
        //      return progress.progress_string;
        //  case DataRole.WARNING_COUNT:
        //      return progress.warning_count;
        //  case DataRole.SYNC_PROGRESS_OVERALL_PERCENT:
        //      return progress.overall_percent;
        //  case DataRole.SYNC_PROGRESS_OVERALL_STRING:
        //      return progress.overall_sync_string;
        //  case DataRole.FOLDER_SYNC_TEXT:
        //      if (folder_connection.virtual_files_enabled ()) {
        //          return _("Synchronizing Virtual_files with local folder_connection");
        //      } else {
        //          return _("Synchronizing with local folder_connection");
        //      }
        //  }
        //  return GLib.Variant ();
    }


    /***********************************************************
    ***********************************************************/
    public bool data_for_index_value_and_role (GLib.ModelIndex index, GLib.Variant value, int role = GLib.EditRole) {
        //  if (role == GLib.CheckStateRole) {
        //      var info = info_for_index (index);
        //      //  GLib.assert_true (info.folder_connection && info.folder_connection.supports_selective_sync);
        //      var checked = (GLib.CheckState)value.to_int ();

        //      if (info && info.checked != checked) {
        //          info.checked = checked;
        //          if (checked == GLib.Checked) {
        //              // If we are checked, check that we may need to check the parent as well if
        //              // all the siblings are also checked
        //              GLib.ModelIndex parent = index.parent ();
        //              var parent_info = info_for_index (parent);
        //              if (parent_info && parent_info.checked != GLib.Checked) {
        //                  bool has_unchecked = false;
        //                  foreach (var sub in parent_info.subs) {
        //                      if (sub.checked != GLib.Checked) {
        //                          has_unchecked = true;
        //                          break;
        //                      }
        //                  }
        //                  if (!has_unchecked) {
        //                      data_for_index_value_and_role (parent, GLib.Checked, GLib.CheckStateRole);
        //                  } else if (parent_info.checked == GLib.Unchecked) {
        //                      data_for_index_value_and_role (parent, GLib.PartiallyChecked, GLib.CheckStateRole);
        //                  }
        //              }
        //              // also check all the children
        //              for (int i = 0; i < info.subs.length; ++i) {
        //                  if (info.subs.at (i).checked != GLib.Checked) {
        //                      data_for_index_value_and_role (this.index (i, 0, index), GLib.Checked, GLib.CheckStateRole);
        //                  }
        //              }
        //          }

        //          if (checked == GLib.Unchecked) {
        //              GLib.ModelIndex parent = index.parent ();
        //              var parent_info = info_for_index (parent);
        //              if (parent_info && parent_info.checked == GLib.Checked) {
        //                  data_for_index_value_and_role (parent, GLib.PartiallyChecked, GLib.CheckStateRole);
        //              }

        //              // Uncheck all the children
        //              for (int i = 0; i < info.subs.length; ++i) {
        //                  if (info.subs.at (i).checked != GLib.Unchecked) {
        //                      data_for_index_value_and_role (this.index (i, 0, index), GLib.Unchecked, GLib.CheckStateRole);
        //                  }
        //              }
        //          }

        //          if (checked == GLib.PartiallyChecked) {
        //              GLib.ModelIndex parent = index.parent ();
        //              var parent_info = info_for_index (parent);
        //              if (parent_info && parent_info.checked != GLib.PartiallyChecked) {
        //                  data_for_index_value_and_role (parent, GLib.PartiallyChecked, GLib.CheckStateRole);
        //              }
        //          }
        //      }
        //      this.dirty = true;
        //      signal_dirty_changed ();
        //      signal_data_changed (index, index, GLib.List<int> () + role);
        //      return true;
        //  }
        //  return GLib.AbstractItemModel.data (index, value, role);
    }


    /***********************************************************
    ***********************************************************/
    public int column_count (GLib.ModelIndex parent = GLib.ModelIndex ()) {
        //  return 1;
    }


    /***********************************************************
    ***********************************************************/
    public int row_count (GLib.ModelIndex parent = GLib.ModelIndex ()) {
        //  if (!parent.is_valid) {
        //      if (LibSync.Theme.single_sync_folder && this.folders.length () != 0) {
        //          // "Add folder_connection" button not visible in the single_sync_folder configuration.
        //          return this.folders.length ();
        //      }
        //      return this.folders.length () + 1; // +1 for the "add folder_connection" button
        //  }
        //  var info = info_for_index (parent);
        //  if (!info) {
        //      return 0;
        //  }
        //  if (info.has_label ()) {
        //      return 1;
        //  }
        //  return info.subs.length;
    }


    /***********************************************************
    ***********************************************************/
    public GLib.ModelIndex index (int row, int column = 0, GLib.ModelIndex parent = GLib.ModelIndex ()) {
        //  if (!parent.is_valid) {
        //      return create_index (row, column /*, null*/);
        //  }
        //  switch (classify (parent)) {
        //  case ItemType.ADD_BUTTON:
        //  case ItemType.FETCH_LABEL:
        //      return {};
        //  case ItemType.ROOT_FOLDER:
        //      if (this.folders.length <= parent.row ()) {
        //          return {}; // should not happen
        //      }
        //      return create_index (row, column, (SubFolderInfo)this.folders[parent.row ()]);
        //  case ItemType.SUBFOLDER: {
        //      var pinfo = (SubFolderInfo)parent.internal_pointer ();
        //      if (pinfo.subs.length <= parent.row ()) {
        //          return {}; // should not happen
        //      }
        //      var info = pinfo.subs[parent.row ()];
        //      if (!info.has_label ()
        //          && info.subs.length <= row) {
        //          return {}; // should not happen
        //      }
        //      return create_index (row, column, info);
        //  }
        //  }
        //  return {};
    }


    /***********************************************************
    ***********************************************************/
    public GLib.ModelIndex parent (GLib.ModelIndex child) {
        //  if (!child.is_valid) {
        //      return {};
        //  }
        //  switch (classify (child)) {
        //  case ItemType.ROOT_FOLDER:
        //  case ItemType.ADD_BUTTON:
        //      return {};
        //  case ItemType.SUBFOLDER:
        //  case ItemType.FETCH_LABEL:
        //      break;
        //  }
        //  var path_index = ((SubFolderInfo)child.internal_pointer ()).path_index;
        //  int i = 1;
        //  //  GLib.assert_true (path_index.at (0) < this.folders.length);
        //  if (path_index.length == 1) {
        //      return create_index (path_index.at (0), 0 /*, null*/);
        //  }

        //  SubFolderInfo info = this.folders[path_index.at (0)];
        //  while (i < path_index.length - 1) {
        //      //  GLib.assert_true (path_index.at (i) < info.subs.length);
        //      info = info.subs.at (path_index.at (i));
        //      ++i;
        //  }
        //  return create_index (path_index.at (i), 0, (SubFolderInfo)info);
    }


    /***********************************************************
    ***********************************************************/
    public bool can_fetch_more (GLib.ModelIndex parent) {
        //  if (!this.account_state) {
        //      return false;
        //  }
        //  if (this.account_state.state != AccountState.State.CONNECTED) {
        //      return false;
        //  }
        //  var info = info_for_index (parent);
        //  if (!info || info.fetched || info.fetching_job) {
        //      return false;
        //  }
        //  if (info.has_error) {
        //      // Keep showing the error to the user, it will be hidden when the account reconnects
        //      return false;
        //  }
        //  return true;
    }


    /***********************************************************
    ***********************************************************/
    public void fetch_more (GLib.ModelIndex parent) {
        //  var info = info_for_index (parent);

        //  if (!info || info.fetched || info.fetching_job) {
        //      return;
        //  }
        //  info.reset_subs (this, parent);
        //  string path = info.folder_connection.remote_path_trailing_slash;

        //  // info.path always contains non-mangled name, so we need to use mangled when requesting nested folders for encrypted subfolders as required by LibSync.LscolJob
        //  string info_path = (info.is_encrypted && !info.e2e_mangled_name == "") ? info.e2e_mangled_name : info.path;

        //  if (info_path != "/") {
        //      path += info_path;
        //  }

        //  var lscol_job = new LibSync.LscolJob (this.account_state.account, path, this);
        //  info.fetching_job = lscol_job;
        //  var props = new GLib.List<string> ();
        //  props.append ("resourcetype");
        //  props.append ("http://owncloud.org/ns:size");
        //  props.append ("http://owncloud.org/ns:permissions");
        //  props.append ("http://owncloud.org/ns:fileid");
        //  if (this.account_state.account.capabilities.client_side_encryption_available) {
        //      props.append ("http://nextcloud.org/ns:is-encrypted");
        //  }
        //  lscol_job.properties (props);

        //  lscol_job.on_signal_timeout (60 * 1000);
        //  lscol_job.signal_directory_listing_subfolders.connect (
        //      this.on_signal_update_directories
        //  );
        //  lscol_job.signal_finished_with_error.connect (
        //      this.on_signal_lscol_finished_with_error
        //  );
        //  lscol_job.signal_directory_listing_iterated.connect (
        //      this.on_signal_gather_permissions
        //  );
        //  lscol_job.signal_directory_listing_iterated.connect (
        //      this.on_signal_gather_encryption_status
        //  );

        //  lscol_job.start ();

        //  GLib.PersistentModelIndex persistent_index = new GLib.PersistentModelIndex (parent);
        //  lscol_job.property (PROPERTY_PARENT_INDEX_C, GLib.Variant.from_value (persistent_index));

        //  // Show "fetching data..." hint after a while.
        //  this.fetching_items[persistent_index].on_signal_start ();
        //  GLib.Timeout.add (1000, this.on_signal_show_fetch_progress);
    }


    /***********************************************************
    ***********************************************************/
    public void reset_and_fetch (GLib.ModelIndex parent) {
        //  var info = info_for_index (parent);
        //  info.reset_subs (this, parent);
        //  fetch_more (parent);
    }


    /***********************************************************
    ***********************************************************/
    public bool has_children (GLib.ModelIndex parent = GLib.ModelIndex ()) {
        //  if (!parent.is_valid) {
        //      return true;
        //  }
        //  var info = info_for_index (parent);
        //  if (!info) {
        //      return false;
        //  }
        //  if (!info.fetched) {
        //      return true;
        //  }
        //  if (info.subs == "") {
        //      return false;
        //  }
        //  return true;
    }


    /***********************************************************
    ***********************************************************/
    public ItemType classify (GLib.ModelIndex index) {
        //  var sub = (SubFolderInfo) index.internal_pointer ();
        //  if (sub) {
        //      if (sub.has_label ()) {
        //          return ItemType.FETCH_LABEL;
        //      } else {
        //          return ItemType.SUBFOLDER;
        //      }
        //  }
        //  if (index.row () < this.folders.length) {
        //      return ItemType.ROOT_FOLDER;
        //  }
        //  return ItemType.ADD_BUTTON;
    }


    /***********************************************************
    ***********************************************************/
    public SubFolderInfo info_for_index (GLib.ModelIndex index) {
        //  if (!index.is_valid) {
        //      return null;
        //  }
        //  var parent_info = (SubFolderInfo) index.internal_pointer ();
        //  if (parent_info) {
        //      if (parent_info.has_label ()) {
        //          return null;
        //      }
        //      if (index.row () >= parent_info.subs.size ()) {
        //          return null;
        //      }
        //      return parent_info.subs[index.row ()];
        //  } else {
        //      if (index.row () >= this.folders.length) {
        //          // ItemType.ADD_BUTTON
        //          return null;
        //      }
        //      return (SubFolderInfo)this.folders[index.row ()];
        //  }
    }


    /***********************************************************
    ***********************************************************/
    public bool is_any_ancestor_encrypted (GLib.ModelIndex index) {
        //  var parent_index = parent (index);
        //  while (parent_index.is_valid) {
        //      var info = info_for_index (parent_index);
        //      if (info.is_encrypted) {
        //          return true;
        //      }
        //      parent_index = parent (parent_index);
        //  }

        //  return false;
    }


    /***********************************************************
    If the selective sync check boxes were changed
    ***********************************************************/
    public bool is_dirty {
        public get {
            return this.dirty;
        }
    }


    /***********************************************************
    Return a GLib.ModelIndex for the given path within the given
    folder. Note: this method returns an invalid index if the
    path was not fetched from the server before
    ***********************************************************/
    public GLib.ModelIndex index_for_path (FolderConnection folder_connection, string path) {

        //  int slash_pos = path.last_index_of ("/");
        //  if (slash_pos == -1) {
        //      // first level folder_connection
        //      for (int i = 0; i < this.folders.length (); ++i) {
        //          var info = this.folders.at (i);
        //          if (info.folder_connection == folder_connection) {
        //              if (path == "") { // the folder_connection object
        //                  return index (i, 0);
        //              }
        //              for (int j = 0; j < info.subs.size (); ++j) {
        //                  string sub_name = info.subs.at (j).name;
        //                  if (sub_name == path) {
        //                      return index (j, 0, index (i));
        //                  }
        //              }
        //              return {};
        //          }
        //      }
        //      return {};
        //  }

        //  var parent = index_for_path (folder_connection, path.left (slash_pos));
        //  if (!parent.is_valid) {
        //      return parent;
        //  }
        //  if (slash_pos == path.length - 1) {
        //      // The slash is the last part, we found our index
        //      return parent;
        //  }

        //  var parent_info = info_for_index (parent);
        //  if (!parent_info) {
        //      return {};
        //  }
        //  for (int i = 0; i < parent_info.subs.size (); ++i) {
        //      if (parent_info.subs.at (i).name == path.mid (slash_pos + 1)) {
        //          return index (i, 0, parent);
        //      }
        //  }

        //  return {};
    }


    /***********************************************************
    ***********************************************************/
    public void on_signal_update_folder_state (FolderConnection folder_connection) {
        //  for (int i = 0; i < this.folders.length (); ++i) {
        //      if (this.folders.at (i).folder_connection == folder_connection) {
        //          signal_data_changed (index (i), index (i));
        //      }
        //  }
    }


    /***********************************************************
    ***********************************************************/
    public void on_signal_apply_selective_sync () {
        //  foreach (var folder_info in this.folders) {
        //      if (!folder_info.fetched) {
        //          folder_info.folder_connection.journal_database.selective_sync_list (
        //              Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_UNDECIDEDLIST,
        //              { });
        //          continue;
        //      }
        //      FolderConnection folder_connection = folder_info.folder_connection;

        //      bool ok = false;
        //      var old_block_list = folder_connection.journal_database.selective_sync_list (Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_BLOCKLIST, ok);
        //      if (!ok) {
        //          GLib.warning ("Could not read selective sync list from database.");
        //          continue;
        //      }
        //      GLib.List<string> block_list = create_block_list (folder_info, old_block_list);
        //      folder_connection.journal_database.selective_sync_list (Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_BLOCKLIST, block_list);

        //      var block_list_set = block_list.to_set ();
        //      var old_block_list_set = old_block_list.to_set ();

        //      // The folders that were undecided or blocklisted and that are now checked should go on the allow list.
        //      // The user confirmed them already just now.
        //      GLib.List<string> to_add_to_allow_list = ( (old_block_list_set + folder_connection.journal_database.selective_sync_list (Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_UNDECIDEDLIST, ok).to_set ()) - block_list_set).values ();

        //      if (!to_add_to_allow_list == "") {
        //          var allow_list = folder_connection.journal_database.selective_sync_list (Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_ALLOWLIST, ok);
        //          if (ok) {
        //              allow_list += to_add_to_allow_list;
        //              folder_connection.journal_database.selective_sync_list (
        //                  Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_ALLOWLIST,
        //                  allow_list
        //              );
        //          }
        //      }
        //      // clear the undecided list
        //      folder_connection.journal_database.selective_sync_list (
        //          Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_UNDECIDEDLIST,
        //          { }
        //      );

        //      // do the sync if there were changes
        //      var changes = (old_block_list_set - block_list_set) + (block_list_set - old_block_list_set);
        //      if (!changes == "") {
        //          if (folder_connection.is_busy ()) {
        //              folder_connection.on_signal_terminate_sync ();
        //          }
        //          //  The part that changed should not be read from the DB on next sync because there might be new folders
        //          // (the ones that are no longer in the blocklist)
        //          foreach (var change in changes) {
        //              folder_connection.journal_database.schedule_path_for_remote_discovery (change);
        //              folder_connection.on_signal_schedule_path_for_local_discovery (change);
        //          }
        //          FolderManager.instance.schedule_folder (folder_connection);
        //      }
        //  }

        //  on_signal_reset_folders ();
    }


    /***********************************************************
    ***********************************************************/
    public void on_signal_reset_folders () {
        //  this.account_state = this.account_state;
    }


    /***********************************************************
    ***********************************************************/
    public void on_signal_sync_all_pending_big_folders () {
        //  for (int i = 0; i < this.folders.length; ++i) {
        //      if (!this.folders[i].fetched) {
        //          this.folders[i].folder_connection.journal_database.selective_sync_list (
        //              Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_UNDECIDEDLIST,
        //              { }
        //          );
        //          continue;
        //      }
        //      var folder_connection = this.folders.at (i).folder_connection;

        //      bool ok = false;
        //      var undecided_list = folder_connection.journal_database.selective_sync_list (
        //          Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_UNDECIDEDLIST,
        //          ok
        //      );
        //      if (!ok) {
        //          GLib.warning ("Could not read selective sync list from database.");
        //          return;
        //      }

        //      // If this folder_connection had no undecided entries, skip it.
        //      if (undecided_list == "") {
        //          continue;
        //      }

        //      // Remove all undecided folders from the blocklist
        //      var block_list = folder_connection.journal_database.selective_sync_list (Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_BLOCKLIST, ok);
        //      if (!ok) {
        //          GLib.warning ("Could not read selective sync list from database.");
        //          return;
        //      }
        //      foreach (var undecided_folder in undecided_list) {
        //          block_list.remove_all (undecided_folder);
        //      }
        //      folder_connection.journal_database.selective_sync_list (
        //          Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_BLOCKLIST,
        //          block_list
        //      );

        //      // Add all undecided folders to the allow list
        //      var allow_list = folder_connection.journal_database.selective_sync_list (
        //          Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_ALLOWLIST,
        //          ok
        //      );
        //      if (!ok) {
        //          GLib.warning ("Could not read selective sync list from database.");
        //          return;
        //      }
        //      allow_list += undecided_list;
        //      folder_connection.journal_database.selective_sync_list (
        //          Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_ALLOWLIST,
        //          allow_list
        //      );

        //      // Clear the undecided list
        //      folder_connection.journal_database.selective_sync_list (
        //          Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_UNDECIDEDLIST,
        //          { }
        //      );

        //      // Trigger a sync
        //      if (folder_connection.is_busy ()) {
        //          folder_connection.on_signal_terminate_sync ();
        //      }
        //      // The part that changed should not be read from the DB on next sync because there might be new folders
        //      // (the ones that are no longer in the blocklist)
        //      foreach (var it in undecided_list) {
        //          folder_connection.journal_database.schedule_path_for_remote_discovery (it);
        //          folder_connection.on_signal_schedule_path_for_local_discovery (it);
        //      }
        //      FolderManager.instance.schedule_folder (folder_connection);
        //  }

        //  on_signal_reset_folders ();
    }



    /***********************************************************
    ***********************************************************/
    public void on_signal_sync_no_pending_big_folders () {
        //  for (int i = 0; i < this.folders.length; ++i) {
        //      var folder_connection = this.folders.at (i).folder_connection;

        //      // clear the undecided list
        //      folder_connection.journal_database.selective_sync_list (
        //          Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_UNDECIDEDLIST,
        //          { }
        //      );
        //  }

        //  on_signal_reset_folders ();
    }



    /***********************************************************
    ***********************************************************/
    public void on_signal_folder_progress_info (LibSync.ProgressInfo progress) {
        //  var par = (Gtk.Widget)GLib.Object.parent ();
        //  if (!par.is_visible ()) {
        //      return; // for https://github.com/owncloud/client/issues/2648#issuecomment-71377909
        //  }

        //  var folder_connection = (FolderConnection)sender ();
        //  if (!folder_connection) {
        //      return;
        //  }

        //  int folder_index = -1;
        //  for (int i = 0; i < this.folders.length; ++i) {
        //      if (this.folders.at (i).folder_connection == folder_connection) {
        //          folder_index = i;
        //          break;
        //      }
        //  }
        //  if (folder_index < 0) {
        //      return;
        //  }

        //  var pi = this.folders[folder_index].progress;

        //  GLib.List<int> roles;
        //  roles += DataRole.SYNC_PROGRESS_ITEM_STRING
        //         + DataRole.WARNING_COUNT
        //         + GLib.ToolTipRole;

        //  if (progress.status () == LibSync.ProgressInfo.Status.DISCOVERY) {
        //      if (!progress.current_discovered_remote_folder == "") {
        //          pi.overall_sync_string = _("Checking for changes in remote \"%1\"").printf (progress.current_discovered_remote_folder);
        //          signal_data_changed (index (folder_index), index (folder_index), roles);
        //          return;
        //      } else if (!progress.current_discovered_local_folder == "") {
        //          pi.overall_sync_string = _("Checking for changes in local \"%1\"").printf (progress.current_discovered_local_folder);
        //          signal_data_changed (index (folder_index), index (folder_index), roles);
        //          return;
        //      }
        //  }

        //  if (progress.status () == LibSync.ProgressInfo.Status.RECONCILE) {
        //      pi.overall_sync_string = _("Reconciling changes");
        //      signal_data_changed (index (folder_index), index (folder_index), roles);
        //      return;
        //  }

        //  // Status is Starting, Propagation or Done

        //  if (!progress.last_completed_item == ""
        //      && Progress.is_warning_kind (progress.last_completed_item.status)) {
        //      pi.warning_count++;
        //  }

        //  // find the single item to display :  This is going to be the bigger item, or the last completed
        //  // item if no items are in progress.
        //  LibSync.SyncFileItem cur_item = progress.last_completed_item;
        //  int64 cur_item_progress = -1; // -1 means finished
        //  int64 bigger_item_size = 0;
        //  uint64 estimated_up_bandwidth = 0;
        //  uint64 estimated_down_bandwidth = 0;
        //  string all_filenames;
        //  foreach (LibSync.ProgressInfo.ProgressItem current_item in progress.current_items) {
        //      if (cur_item_progress == -1 || (LibSync.ProgressInfo.is_size_dependent (current_item.item)
        //                                      && bigger_item_size < current_item.item.size)) {
        //          cur_item_progress = current_item.progress.completed ();
        //          cur_item = current_item.item;
        //          bigger_item_size = current_item.item.size;
        //      }
        //      if (current_item.item.direction != LibSync.SyncFileItem.Direction.UP) {
        //          estimated_down_bandwidth += progress.file_progress (current_item.item).estimated_bandwidth;
        //      } else {
        //          estimated_up_bandwidth += progress.file_progress (current_item.item).estimated_bandwidth;
        //      }
        //      var filename = GLib.FileInfo (current_item.item.file).filename ();
        //      if (all_filenames.length > 0) {
        //          // : Build a list of file names
        //          all_filenames.append (", \"%1\"".printf (filename));
        //      } else {
        //          // : Argument is a file name
        //          all_filenames.append ("\"%1\"".printf (filename));
        //      }
        //  }
        //  if (cur_item_progress == -1) {
        //      cur_item_progress = cur_item.size;
        //  }

        //  string item_filename = cur_item.file;
        //  string kind_string = Progress.as_action_string (cur_item);

        //  string file_progress_string;
        //  if (LibSync.ProgressInfo.is_size_dependent (cur_item)) {
        //      string s1 = Utility.octets_to_string (cur_item_progress);
        //      string s2 = Utility.octets_to_string (cur_item.size);
        //      //  uint64 estimated_bw = progress.file_progress (cur_item).estimated_bandwidth;
        //      if (estimated_up_bandwidth || estimated_down_bandwidth) {
        //          /***********************************************************
        //          // : Example text: "uploading foobar.png (1MB of 2MB) time left 2 minutes at a rate of 24Kb/s"
        //          file_progress_string = _("%1 %2 (%3 of %4) %5 left at a rate of %6/s")
        //              .printf (kind_string, item_filename, s1, s2,
        //                  Utility.duration_to_descriptive_string (progress.file_progress (cur_item).estimated_eta),
        //                  Utility.octets_to_string (estimated_bw) );
        //          */
        //          // : Example text: "Syncing "foo.txt", "bar.txt""
        //          file_progress_string = _("Syncing %1").printf (all_filenames);
        //          if (estimated_down_bandwidth > 0) {
        //              file_progress_string.append (_(", "));
        //              // ifdefs : https://github.com/owncloud/client/issues/3095#issuecomment-128409294
        //              file_progress_string.append (_("\u2193 %1/s")
        //                                          .printf (Utility.octets_to_string (estimated_down_bandwidth)));
        //          }
        //          if (estimated_up_bandwidth > 0) {
        //              file_progress_string.append (_(", "));
        //              file_progress_string.append (_("\u2191 %1/s")
        //                                          .printf (Utility.octets_to_string (estimated_up_bandwidth)));
        //          }
        //      } else {
        //          // : Example text: "uploading foobar.png (2MB of 2MB)"
        //          file_progress_string = _("%1 %2 (%3 of %4)").printf (kind_string, item_filename, s1, s2);
        //      }
        //  } else if (!kind_string == "") {
        //      // : Example text: "uploading foobar.png"
        //      file_progress_string = _("%1 %2").printf (kind_string, item_filename);
        //  }
        //  pi.progress_string = file_progress_string;

        //  // overall progress
        //  int64 completed_size = progress.completed_size ();
        //  int64 completed_file = progress.completed_files ();
        //  int64 current_file = progress.current_file ();
        //  int64 total_size = int64.max (completed_size, progress.total_size ());
        //  int64 total_file_count = int64.max (current_file, progress.total_files ());
        //  string overall_sync_string;
        //  if (total_size > 0) {
        //      string s1 = Utility.octets_to_string (completed_size);
        //      string s2 = Utility.octets_to_string (total_size);

        //      if (progress.trust_eta ()) {
        //          // : Example text: "5 minutes left, 12 MB of 345 MB, file 6 of 7"
        //          overall_sync_string = _("%5 left, %1 of %2, file %3 of %4")
        //                                  .printf (s1, s2)
        //                                  .printf (current_file)
        //                                  .printf (total_file_count)
        //                                  .printf (Utility.duration_to_descriptive_string1 (progress.total_progress ().estimated_eta));

        //      } else {
        //          // : Example text: "12 MB of 345 MB, file 6 of 7"
        //          overall_sync_string = _("%1 of %2, file %3 of %4")
        //                                  .printf (s1, s2)
        //                                  .printf (current_file)
        //                                  .printf (total_file_count);
        //      }
        //  } else if (total_file_count > 0) {
        //      // Don't attempt to estimate the time left if there is no kb to transfer.
        //      overall_sync_string = _("file %1 of %2").printf (current_file).printf (total_file_count);
        //  }

        //  pi.overall_sync_string = overall_sync_string;

        //  int overall_percent = 0;
        //  if (total_file_count > 0) {
        //      // Add one "byte" for each file so the percentage is moving when deleting or renaming files
        //      overall_percent = q_round (double (completed_size + completed_file) / double (total_size + total_file_count) * 100.0);
        //  }
        //  pi.overall_percent = q_bound (0, overall_percent, 100);
        //  signal_data_changed (index (folder_index), index (folder_index), roles);
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_update_directories (LibSync.LscolJob lscol_job, GLib.List<string> list) {
        //  var lscol_job = (LibSync.LscolJob) sender ());
        //  //  GLib.assert_true (lscol_job);
        //  GLib.ModelIndex index = (GLib.PersistentModelIndex)lscol_job.property (PROPERTY_PARENT_INDEX_C);
        //  var parent_info = info_for_index (index);
        //  if (!parent_info) {
        //      return;
        //  }
        //  //  GLib.assert_true (parent_info.fetching_job == lscol_job);
        //  //  GLib.assert_true (parent_info.subs == "");

        //  if (parent_info.has_label ()) {
        //      begin_remove_rows (index, 0, 0);
        //      parent_info.has_error = false;
        //      parent_info.fetching_label = false;
        //      end_remove_rows ();
        //  }

        //  parent_info.last_error_string = "";
        //  parent_info.fetching_job = null;
        //  parent_info.fetched = true;

        //  GLib.Uri url = parent_info.folder_connection.remote_url ();
        //  string path_to_remove = url.path;
        //  if (!path_to_remove.has_suffix ("/")) {
        //      path_to_remove += "/";
        //  }
        //  GLib.List<string> selective_sync_block_list;
        //  bool ok1 = true;
        //  bool ok2 = true;
        //  if (parent_info.checked == GLib.PartiallyChecked) {
        //      selective_sync_block_list = parent_info.folder_connection.journal_database.selective_sync_list (Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_BLOCKLIST, ok1);
        //  }
        //  var selective_sync_undecided_list = parent_info.folder_connection.journal_database.selective_sync_list (Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_UNDECIDEDLIST, ok2);

        //  if (! (ok1 && ok2)) {
        //      GLib.warning ("Could not retrieve selective sync info from journal.");
        //      return;
        //  }

        //  GLib.List<string> selective_sync_undecided_set; // not GLib.List because it's not sorted
        //  foreach (string string_value in selective_sync_undecided_list) {
        //      if (string_value.has_prefix (parent_info.path) || parent_info.path == "/") {
        //          selective_sync_undecided_set.insert (string_value);
        //      }
        //  }
        //  var permission_map = lscol_job.property (PROPERTY_PERMISSION_MAP).to_map ();
        //  var encryption_map = lscol_job.property (PROPERTY_ENCRYPTION_MAP).to_map ();

        //  GLib.List<string> sorted_subfolders = list;
        //  if (!sorted_subfolders == "") {
        //      sorted_subfolders.remove_first (); // skip the parent item (first in the list)
        //  }
        //  Utility.sort_filenames (sorted_subfolders);

        //  int[] undecided_indexes = int[10]; // previously GLib.VarLengthArray

        //  GLib.List<SubFolderInfo> new_subs;
        //  new_subs.reserve (sorted_subfolders.size ());
        //  foreach (string path in sorted_subfolders) {
        //      var relative_path = path.mid (path_to_remove.size ());
        //      if (parent_info.folder_connection.is_file_excluded_relative (relative_path)) {
        //          continue;
        //      }

        //      SubFolderInfo new_info;
        //      new_info.folder_connection = parent_info.folder_connection;
        //      new_info.path_index = parent_info.path_index;
        //      new_info.path_index += new_subs.size ();
        //      new_info.is_external = permission_map.value (remove_trailing_slash (path)).to_string ().contains ("M");
        //      new_info.is_encrypted = encryption_map.value (remove_trailing_slash (path)).to_string () == "1";
        //      new_info.path = relative_path;

        //      Common.SyncJournalFileRecord record;
        //      parent_info.folder_connection.journal_database.file_record_by_e2e_mangled_name (remove_trailing_slash (relative_path), record);
        //      if (record.is_valid) {
        //          new_info.name = remove_trailing_slash (record.path).split ("/").last ();
        //          if (record.is_e2e_encrypted && !record.e2e_mangled_name == "") {
        //              // we must use local path for Settings Dialog's filesystem tree, otherwise open and create new folder_connection actions won't work
        //              // hence, we are storing this.e2e_mangled_name separately so it can be use later for LibSync.LscolJob
        //              new_info.e2e_mangled_name = relative_path;
        //              new_info.path = record.path;
        //          }
        //          if (!new_info.path.has_suffix ("/")) {
        //              new_info.path += "/";
        //          }
        //      } else {
        //          new_info.name = remove_trailing_slash (relative_path).split ("/").last ();
        //      }

        //      var folder_info = lscol_job.folder_infos.value (path);
        //      new_info.size = folder_info.size;
        //      new_info.file_id = folder_info.file_id;
        //      if (relative_path == "") {
        //          continue;
        //      }
        //      if (parent_info.checked == GLib.Unchecked) {
        //          new_info.checked = GLib.Unchecked;
        //      } else if (parent_info.checked == GLib.Checked) {
        //          new_info.checked = GLib.Checked;
        //      } else {
        //          foreach (string string_value in selective_sync_block_list) {
        //              if (string_value == relative_path || string_value == "/") {
        //                  new_info.checked = GLib.Unchecked;
        //                  break;
        //              } else if (string_value.has_prefix (relative_path)) {
        //                  new_info.checked = GLib.PartiallyChecked;
        //              }
        //          }
        //      }

        //      var it = selective_sync_undecided_set.lower_bound (relative_path);
        //      if (it != selective_sync_undecided_set.end ()) {
        //          if (it == relative_path) {
        //              new_info.is_undecided = true;
        //              selective_sync_undecided_set.erase (it);
        //          } else if ( (it).has_prefix (relative_path)) {
        //              undecided_indexes.append (new_info.path_index.last ());

        //              // Remove all the items from the selective_sync_undecided_set that starts with this path
        //              string relative_path_next = relative_path;
        //              relative_path_next[relative_path_next.length - 1].unicode ()++;
        //              var it2 = selective_sync_undecided_set.lower_bound (relative_path_next);
        //              selective_sync_undecided_set.erase (it, it2);
        //          }
        //      }
        //      new_subs.append (new_info);
        //  }

        //  if (!new_subs == "") {
        //      begin_insert_rows (index, 0, new_subs.size () - 1);
        //      parent_info.subs = std.move (new_subs);
        //      end_insert_rows ();
        //  }

        //  foreach (int undecided_index in undecided_indexes) {
        //      signal_suggest_expand (index (undecided_index, 0, index));
        //  }

        //  /* Try to remove the the undecided lists the items that are not on the server. */
        //  string iterator;
        //  foreach (string undecided in selective_sync_undecided_list) {
        //      if (selective_sync_undecided_set.count (undecided)) {
        //          selective_sync_undecided_set.remove (undecided);
        //      } else {
        //          iterator = undecided;
        //      }
        //  }
        //  if (iterator != selective_sync_undecided_list.end ()) {
        //      selective_sync_undecided_list.erase (it, selective_sync_undecided_list.end ());
        //      parent_info.folder_connection.journal_database.selective_sync_list (
        //          Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_UNDECIDEDLIST, selective_sync_undecided_list);
        //      signal_dirty_changed ();
        //  }
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_gather_permissions (string href, GLib.HashTable<string, string> map) {
        //  var it = map.find ("permissions");
        //  if (it == map.end ()) {
        //      return;
        //  }
        //  var abstract_network_job = sender ();
        //  var permission_map = abstract_network_job.property (PROPERTY_PERMISSION_MAP).to_map ();
        //  abstract_network_job.property (PROPERTY_PERMISSION_MAP, GLib.Variant ()); // avoid a detach of the map while it is modified
        //  //  GLib.assert_true (!href.has_suffix ("/"), "LscolXMLParser.parse should remove the trailing slash before calling us.");
        //  permission_map[href] = *it;
        //  abstract_network_job.property (PROPERTY_PERMISSION_MAP, permission_map);
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_gather_encryption_status (string href, GLib.HashTable<string, string> properties) {
        //  var it = properties.find ("is-encrypted");
        //  if (it == properties.end ()) {
        //      return;
        //  }
        //  var abstract_network_job = sender ();
        //  var encryption_map = abstract_network_job.property (PROPERTY_ENCRYPTION_MAP).to_map ();
        //  abstract_network_job.property (PROPERTY_ENCRYPTION_MAP, GLib.Variant ()); // avoid a detach of the map while it is modified
        //  //  GLib.assert_true (!href.has_suffix ("/"), "LscolXMLParser.parse should remove the trailing slash before calling us.");
        //  encryption_map[href] = *it;
        //  abstract_network_job.property (PROPERTY_ENCRYPTION_MAP, encryption_map);
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_lscol_finished_with_error (GLib.InputStream r) {
        //  var lscol_job = (LibSync.LscolJob)sender ();
        //  //  GLib.assert_true (lscol_job);
        //  GLib.ModelIndex index = (GLib.PersistentModelIndex)lscol_job.property (PROPERTY_PARENT_INDEX_C);
        //  if (!index.is_valid) {
        //      return;
        //  }
        //  var parent_info = info_for_index (index);
        //  if (parent_info) {
        //      GLib.debug () + r.error_string;
        //      parent_info.last_error_string = r.error_string;
        //      var error = r.error;

        //      parent_info.reset_subs (this, index);

        //      if (error == GLib.InputStream.ContentNotFoundError) {
        //          parent_info.fetched = true;
        //      } else {
        //          //  GLib.assert_true (!parent_info.has_label ());
        //          begin_insert_rows (index, 0, 0);
        //          parent_info.has_error = true;
        //          end_insert_rows ();
        //      }
        //  }
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_folder_sync_state_change (FolderConnection folder_connection) {
        //  int folder_index = -1;
        //  for (int i = 0; i < this.folders.length (); ++i) {
        //      if (this.folders.at (i).folder_connection == folder_connection) {
        //          folder_index = i;
        //          break;
        //      }
        //  }
        //  if (folder_index < 0) {
        //      return;
        //  }

        //  var pi = this.folders[folder_index].progress;

        //  LibSync.SyncResult.Status state = folder_connection.sync_result.status ();
        //  if (!folder_connection.can_sync () || state == LibSync.SyncResult.Status.PROBLEM || state == LibSync.SyncResult.Status.SUCCESS || state == LibSync.SyncResult.Status.ERROR) {
        //      // Reset progress info.
        //      pi = SubFolderInfo.Progress ();
        //  } else if (state == LibSync.SyncResult.Status.NOT_YET_STARTED) {
        //      FolderManager folder_man = FolderManager.instance;
        //      int position = folder_man.schedule_queue ().index_of (folder_connection);
        //      foreach (var other in folder_man.map ()) {
        //          if (other != folder_connection && other.is_sync_running ()) {
        //              position += 1;
        //          }
        //      }
        //      string message;
        //      if (position <= 0) {
        //          message = _("Waiting …");
        //      } else {
        //          message = _("Waiting for %n other folder_connection (s) …", "", position);
        //      }
        //      pi = SubFolderInfo.Progress ();
        //      pi.overall_sync_string = message;
        //  } else if (state == LibSync.SyncResult.Status.SYNC_PREPARE) {
        //      pi = SubFolderInfo.Progress ();
        //      pi.overall_sync_string = _("Preparing to sync …");
        //  }

        //  // update the icon etc. now
        //  on_signal_update_folder_state (folder_connection);

        //  if (folder_connection.sync_result.folder_structure_was_changed ()
        //      && (state == LibSync.SyncResult.Status.SUCCESS || state == LibSync.SyncResult.Status.PROBLEM)) {
        //      // There is a new or a removed folder_connection. reset all data
        //      reset_and_fetch (index (folder_index));
        //  }
    }


    /***********************************************************
    Update messages on waiting folders.
    ***********************************************************/
    private void on_signal_folder_schedule_queue_changed () {
        //  foreach (FolderConnection folder_connection in FolderManager.instance.map ()) {
        //      on_signal_folder_sync_state_change (folder_connection);
        //  }
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_new_big_folder_discovered () {
        //  var folder_connection = (FolderConnection)sender ();
        //  //  GLib.assert_true (folder_connection);

        //  int folder_index = -1;
        //  for (int i = 0; i < this.folders.length; ++i) {
        //      if (this.folders.at (i).folder_connection == folder_connection) {
        //          folder_index = i;
        //          break;
        //      }
        //  }
        //  if (folder_index < 0) {
        //      return;
        //  }

        //  reset_and_fetch (index (folder_index));

        //  signal_suggest_expand (index (folder_index));
        //  signal_dirty_changed ();
    }


    /***********************************************************
    "In progress" labels for fetching data from the server are
    only added after some time to avoid popping.
    ***********************************************************/
    private bool on_signal_show_fetch_progress () {
        //  var it = new GLib.MutableMapIterator<GLib.PersistentModelIndex, GLib.Timer> (this.fetching_items);
        //  while (it.has_next ()) {
        //      it.next ();
        //      if (it.value ().elapsed () > 800) {
        //          var index = it.key ();
        //          var info = info_for_index (index);
        //          if (info && info.fetching_job) {
        //              bool add = !info.has_label ();
        //              if (add) {
        //                  begin_insert_rows (index, 0, 0);
        //              }
        //              info.fetching_label = true;
        //              if (add) {
        //                  end_insert_rows ();
        //              }
        //          }
        //          it.remove ();
        //      }
        //  }
        //  return false; // only run once
    }


    /***********************************************************
    ***********************************************************/
    private GLib.List<string> create_block_list (
        FolderStatusModel.SubFolderInfo root,
        GLib.List<string> old_block_list
    ) {
        //  switch (root.checked) {
        //  case GLib.Unchecked:
        //      return { root.path };
        //  case GLib.Checked:
        //      return { };
        //  case GLib.PartiallyChecked:
        //      break;
        //  }

        //  GLib.List<string> result;
        //  if (root.fetched) {
        //      for (int i = 0; i < root.subs.length; ++i) {
        //          result += create_block_list (root.subs.at (i), old_block_list);
        //      }
        //  } else {
        //      // We did not load from the server so we re-use the one from the old block list
        //      string path = root.path;
        //      foreach (string it in old_block_list) {
        //          if (it.has_prefix (path)) {
        //              result += it;
        //          }
        //      }
        //  }
        //  return result;
    }


    private static string remove_trailing_slash (string s) {
        //  if (s.has_suffix ("/")) {
        //      return s.left (s.size () - 1);
        //  }
        //  return s;
    }


    private static bool sort_by_folder_header (FolderStatusModel.SubFolderInfo lhs, FolderStatusModel.SubFolderInfo rhs) {
        //  return string.compare (lhs.folder_connection.short_gui_remote_path_or_app_name (),
        //          rhs.folder_connection.short_gui_remote_path_or_app_name (),
        //          GLib.CaseInsensitive)
        //      < 0;
    }

} // class FolderStatusModel

} // namespace Ui
} // namespace Occ
