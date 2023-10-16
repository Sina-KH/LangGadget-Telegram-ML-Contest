/***********************************************************
@author Klaas Freitag <freitag@kde.org>
@author Klaas Freitag <freitag@owncloud.com>
@author Krzesimir Nowak <krzesimir@endocode.com>

@copyright GPLv3 or Later
***********************************************************/

//  #include <GLib.AbstractButton>
//  #include <QtCore>
//  #include <GLib.Process>
//  #include <Gtk.MessageBox>
//  #include <GLib.DesktopServices>
//  #include <GLib.Application>
//  #include <Gtk.Widget>
//  #include <GLib.Process>
//  #include <GLib.Pointer>

    using Soup;

namespace Occ {
namespace Ui {

/***********************************************************
@brief The OwncloudSetupWizard class
@ingroup gui
***********************************************************/
public class OwncloudSetupWizard { //: GLib.Object {

    /***********************************************************
    ***********************************************************/
    static OwncloudSetupWizard setup_wizard = null;

    static string expected_path;

    /***********************************************************
    ***********************************************************/
    private OwncloudWizard oc_wizard;
    private string init_local_folder;
    private string remote_folder;


    /***********************************************************
    Overall dialog close signal
    ***********************************************************/
    internal signal void signal_own_cloud_wizard_done (int value);

    /***********************************************************
    ***********************************************************/
    private OwncloudSetupWizard () {
        //  base ();
        //  this.oc_wizard = new OwncloudWizard ();
        //  this.remote_folder;

        //  this.oc_wizard.signal_determine_auth_type.connect (
        //      this.on_signal_check_server
        //  );
        //  this.oc_wizard.signal_connect_to_ocs_url.connect (
        //      this.on_signal_connect_to_oc_url
        //  );
        //  this.oc_wizard.signal_create_local_and_remote_folders.connect (
        //      this.on_signal_create_local_and_remote_folders
        //  );
        //  /* signal_basic_setup_finished might be called from a reply from the network.
        //     on_signal_assistant_finished might destroy the temporary Soup.Context.
        //     Therefore GLib.QueuedConnection is required */
        //  this.oc_wizard.signal_basic_setup_finished.connect (
        //      this.on_signal_assistant_finished // GLib.QueuedConnection
        //  );
        //  this.oc_wizard.on_signal_finished.connect (
        //      this.delete_later
        //  );
        //  this.oc_wizard.skip_folder_configuration.connect (
        //      this.on_signal_skip_folder_configuration
        //  );
    }


    /***********************************************************
    ***********************************************************/
    ~OwncloudSetupWizard () {
        //  this.oc_wizard.delete_later ();
    }


    public delegate void WizardDoneDelegate ();


    /***********************************************************
    Run the wizard
    ***********************************************************/
    public static void run_wizard (GLib.Object object, WizardDoneDelegate wizard_done_delegate, Gtk.Widget parent = new Gtk.Widget ()) {
        //  if (setup_wizard != null) {
        //      bring_wizard_to_front_if_visible ();
        //      return;
        //  }

        //  setup_wizard = new OwncloudSetupWizard (parent);
        //  setup_wizard.signal_own_cloud_wizard_done.connect (
        //      object.wizard_done_delegate
        //  );
        //  FolderManager.instance.sync_enabled = false;
        //  setup_wizard.start_wizard ();
    }


    /***********************************************************
    ***********************************************************/
    public static bool bring_wizard_to_front_if_visible () {
        //  if (setup_wizard == null) {
        //      return false;
        //  }

        //  OwncloudGui.raise_dialog (setup_wizard.oc_wizard);
        //  return true;
    }


    /***********************************************************
    Also checks if an installation is valid and determines auth
    type in a second step
    ***********************************************************/
    private void on_signal_check_server (string url_string) {
        //  string fixed_url = url_string;
        //  GLib.Uri url = GLib.Uri.from_user_input (fixed_url);
        //  // from_user_input defaults to http, not http if no scheme is specified
        //  if (!fixed_url.has_prefix ("http://") && !fixed_url.has_prefix ("https://")) {
        //      url.scheme ("https");
        //  }
        //  LibSync.Account account = this.oc_wizard.account;
        //  account.url (url);

        //  // Reset the proxy which might had been determined previously in ConnectionValidator.on_signal_check_server_and_auth ()
        //  // when there was a previous account.
        //  account.network_access_manager.proxy (Soup.NetworkProxy (Soup.NetworkProxy.NoProxy));

        //  // And also reset the GLib.TlsConfiguration, for the same reason (#6832)
        //  // Here the client certificate is added, if any. Later it'll be in LibSync.HttpCredentials
        //  account.ssl_configuration (GLib.TlsConfiguration ());
        //  var ssl_configuration = account.or_create_ssl_config (); // let LibSync.Account set defaults
        //  if (this.oc_wizard.client_ssl_certificate != null) {
        //      ssl_configuration.local_certificate (this.oc_wizard.client_ssl_certificate);
        //      ssl_configuration.private_key (this.oc_wizard.client_ssl_key);
        //  }
        //  // Be sure to merge the CAs
        //  var ca = ssl_configuration.system_ca_certificates ();
        //  ca.append (this.oc_wizard.client_ssl_ca_certificates);
        //  ssl_configuration.ca_certificates (ca);
        //  account.ssl_configuration (ssl_configuration);

        //  // Make sure TCP connections get re-established
        //  account.network_access_manager.clear_access_cache ();

        //  // Lookup system proxy in a thread https://github.com/owncloud/client/issues/2993
        //  if (LibSync.ClientProxy.is_using_system_default ()) {
        //      GLib.debug ("Trying to look up system proxy.");
        //      LibSync.ClientProxy.lookup_system_proxy_async (account.url,
        //          this, SLOT (on_signal_system_proxy_lookup_done (Soup.NetworkProxy)));
        //  } else {
        //      // We want to reset the Soup.Session proxy so that the global proxy settings are used (via LibSync.ClientProxy settings)
        //      account.network_access_manager.proxy (Soup.NetworkProxy (Soup.NetworkProxy.DefaultProxy));
        //      // use a queued invocation so we're as asynchronous as with the other code path
        //      GLib.Object.invoke_method (this, "on_signal_find_server", GLib.QueuedConnection);
        //  }
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_find_server () {
        //  LibSync.Account account = this.oc_wizard.account;

        //  // Set fake credentials before we check what credential it actually is.
        //  account.credentials (CredentialsFactory.create ("dummy"));

        //  // Determining the actual server URL can be a multi-stage process
        //  // 1. Check url/status.php with LibSync.CheckServerJob
        //  //    If that works we're done. In that case we don't check the
        //  //    url directly for redirects, see #5954.
        //  // 2. Check the url for permanent redirects (like url shorteners)
        //  // 3. Check redirected-url/status.php with LibSync.CheckServerJob

        //  // Step 1: Check url/status.php
        //  var check_server_job = new LibSync.CheckServerJob (account, this);
        //  check_server_job.ignore_credential_failure (true);
        //  check_server_job.signal_instance_found.connect (
        //      this.on_signal_found_server
        //  );
        //  check_server_job.signal_instance_not_found.connect (
        //      this.on_signal_find_server_behind_redirect
        //  );
        //  check_server_job.timeout.connect (
        //      this.on_signal_no_server_found_timeout
        //  );
        //  check_server_job.on_signal_timeout ( (account.url.scheme () == "https") ? 30 * 1000 : 10 * 1000);
        //  check_server_job.on_signal_start ();

        //  // Step 2 and 3 are in on_signal_find_server_behind_redirect ()
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_find_server_behind_redirect () {
        //  LibSync.Account account = this.oc_wizard.account;

        //  // Step 2: Resolve any permanent redirect chains on the base url
        //  var redirect_check_job = account.send_request ("GET", account.url);

        //  // Use a significantly reduced timeout for this redirect check:
        //  // the 5-minute default is inappropriate.
        //  redirect_check_job.on_signal_timeout (int64.min (2000ll, redirect_check_job.timeout_msec ()));

        //  // Grab the chain of permanent redirects and adjust the account url
        //  // accordingly
        //  var permanent_redirects = std.make_shared<int> (0);
        //  redirect_check_job.redirected.connect (
        //      this.on_redirect_check_job
        //  );

        //  // Step 3: When done, on_signal_start checking status.php.
        //  redirect_check_job.signal_finished.connect (
        //      this.on_redirect_check_job_finished
        //  );
    }


    private void on_redirect_check_job (int permanent_redirects, LibSync.Account account, GLib.InputStream reply, GLib.Uri target_url, int count) {
        //  int http_code = reply.attribute (Soup.Request.HttpStatusCodeAttribute).to_int ();
        //  if (count == *permanent_redirects && (http_code == 301 || http_code == 308)) {
        //      GLib.info (account.url + " was redirected to " + target_url);
        //      account.url (target_url);
        //      *permanent_redirects += 1;
        //  }
    }


    private void on_redirect_check_job_finished (LibSync.Account account) {
        //  var check_server_job = new LibSync.CheckServerJob (account, this);
        //  check_server_job.ignore_credential_failure (true);
        //  check_server_job.signal_instance_found.connect (
        //      this.on_signal_found_server
        //  );
        //  check_server_job.signal_instance_not_found.connect (
        //      this.on_signal_no_server_found
        //  );
        //  check_server_job.timeout.connect (
        //      this.on_signal_no_server_found_timeout
        //  );
        //  check_server_job.on_signal_timeout ( (account.url.scheme () == "https") ? 30 * 1000 : 10 * 1000);
        //  check_server_job.on_signal_start ();
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_found_server (GLib.Uri url, Json.Object info) {
        //  var server_version = LibSync.CheckServerJob.version (info);

        //  this.oc_wizard.on_signal_append_to_configuration_log (_("<font color=\"green\">Successfully connected to %1 : %2 version %3 (%4)</font><br/><br/>")
        //                                          .printf (Utility.escape (url.to_string ()),
        //                                              Utility.escape (LibSync.Theme.app_name_gui),
        //                                              Utility.escape (LibSync.CheckServerJob.version_string (info)),
        //                                              Utility.escape (server_version)),
        //                                          OwncloudWizard.LogType.LOG_HTML);

        //  // Note with newer servers we get the version actually only later in capabilities
        //  // https://github.com/owncloud/core/pull/27473/files
        //  this.oc_wizard.account.server_version (server_version);

        //  if (url != this.oc_wizard.account.url) {
        //      // We might be redirected, update the account
        //      this.oc_wizard.account.url (url);
        //      GLib.info (" was redirected to" + url.to_string ());
        //  }

        //  on_signal_determine_auth_type ();
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_no_server_found (GLib.InputStream reply) {
        //  var check_server_job = (LibSync.CheckServerJob)sender ();

        //  // Do this early because reply might be deleted in message box event loop
        //  string message;
        //  if (!this.oc_wizard.account.url.is_valid) {
        //      message = _("Invalid URL");
        //  } else {
        //      message = _("Failed to connect to %1 at %2:<br/>%3")
        //                .printf (Utility.escape (LibSync.Theme.app_name_gui),
        //                    Utility.escape (this.oc_wizard.account.url.to_string ()),
        //                    Utility.escape (check_server_job.error_string));
        //  }
        //  bool is_downgrade_advised = check_downgrade_advised (reply);

        //  // Displays message inside wizard and possibly also another message box
        //  this.oc_wizard.on_signal_display_error (message, is_downgrade_advised);

        //  // Allow the credentials dialog to pop up again for the same URL.
        //  // Maybe the user just clicked 'Cancel' by accident or changed his mind.
        //  this.oc_wizard.account.reset_rejected_certificates ();
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_no_server_found_timeout (GLib.Uri url) {
        //  this.oc_wizard.on_signal_display_error (
        //      _("Timeout while trying to connect to %1 at %2.")
        //          .printf (Utility.escape (LibSync.Theme.app_name_gui), Utility.escape (url.to_string ())),
        //              false);
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_determine_auth_type () {
        //  var determine_auth_type_job = new DetermineAuthTypeJob (this.oc_wizard.account, this);
        //  determine_auth_type_job.auth_type.connect (
        //      this.oc_wizard.on_signal_auth_type
        //  );
        //  determine_auth_type_job.on_signal_start ();
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_connect_to_oc_url (string url) {
        //  GLib.info ("Connect to url: " + url);
        //  this.oc_wizard.account.credentials = this.oc_wizard.credentials;

        //  var fetch_user_name_job = new LibSync.JsonApiJob (this.oc_wizard.account.shared_from_this (), "/ocs/v1.php/cloud/user");
        //  fetch_user_name_job.signal_json_received.connect (
        //      this.on_fetch_user_name_job_json_received
        //  );
        //  fetch_user_name_job.on_signal_start ();
    }


    /***********************************************************
    ***********************************************************/
    private void on_fetch_user_name_job_json_received (string url, GLib.JsonDocument json, int status_code) {
        //  if (status_code != 100) {
        //      GLib.warning ("Could not fetch username.");
        //  }

        //  sender ().delete_later ();

        //  var obj_data = json.object ().value ("ocs").to_object ().value ("data").to_object ();
        //  var user_id = obj_data.value ("identifier").to_string ("");
        //  var display_name = obj_data.value ("display-name").to_string ("");
        //  this.oc_wizard.account.dav_user (user_id);
        //  this.oc_wizard.account.dav_display_name (display_name);

        //  this.oc_wizard.field ("OcsUrl", url);
        //  this.oc_wizard.on_signal_append_to_configuration_log (
        //      _("Trying to connect to %1 at %2 …")
        //          .printf (LibSync.Theme.app_name_gui)
        //          .printf (url),
        //          OwncloudWizard.LogType.LOG_PLAIN
        //  );

        //  test_owncloud_connect ();
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_create_local_and_remote_folders (string local_folder, string remote_folder) {
        //  GLib.info ("Setup local sync folder for new o_c connection " + local_folder);
        //  GLib.Dir file_info = new GLib.Dir (local_folder);

        //  bool next_step = true;
        //  if (file_info.exists ()) {
        //      FileSystem.folder_minimum_permissions (local_folder);
        //      Utility.setup_fav_link (local_folder);
        //      // there is an existing local folder. If its non empty, it can only be synced if the
        //      // own_cloud is newly created.
        //      this.oc_wizard.on_signal_append_to_configuration_log (
        //          _("Local sync folder %1 already exists, setting it up for sync.<br/><br/>")
        //              .printf (Utility.escape (local_folder)),
        //              OwncloudWizard.LogType.LOG_PLAIN
        //          );
        //  } else {
        //      string res = _("Creating local sync folder %1 …").printf (local_folder);
        //      if (file_info.mkpath (local_folder)) {
        //          FileSystem.folder_minimum_permissions (local_folder);
        //          Utility.setup_fav_link (local_folder);
        //          res += _("OK");
        //      } else {
        //          res += _("failed.");
        //          GLib.warning ("Failed to create " + file_info.path);
        //          this.oc_wizard.on_signal_display_error (_("Could not create local folder %1").printf (Utility.escape (local_folder)), false);
        //          next_step = false;
        //      }
        //      this.oc_wizard.on_signal_append_to_configuration_log (res, OwncloudWizard.LogType.LOG_PLAIN);
        //  }
        //  if (next_step) {
        //      /***********************************************************
        //      BEGIN - Sanitize URL paths to eliminate double-slashes

        //              Purpose : Don't rely on unsafe paths, be extra careful.

        //              Example: https://cloud.example.com/remote.php/dav//

        //      ***********************************************************/
        //      GLib.info ("Sanitize got URL path:" + this.oc_wizard.account.url.to_string () + "/" + this.oc_wizard.account.dav_path + remote_folder);

        //      string new_dav_path = this.oc_wizard.account.dav_path,
        //              new_remote_folder = remote_folder;

        //      while (new_dav_path.has_prefix ("/")) {
        //          new_dav_path.remove (0, 1);
        //      }
        //      while (new_dav_path.has_suffix ("/")) {
        //          new_dav_path.chop (1);
        //      }

        //      while (new_remote_folder.has_prefix ("/")) {
        //          new_remote_folder.remove (0, 1);
        //      }
        //      while (new_remote_folder.has_suffix ("/")) {
        //          new_remote_folder.chop (1);
        //      }

        //      string new_url_path = new_dav_path + "/" + new_remote_folder;

        //      GLib.info ("Sanitized to URL path:" + this.oc_wizard.account.url.to_string () + "/" + new_url_path);
        //      /***********************************************************
        //      END - Sanitize URL paths to eliminate double-slashes
        //      ***********************************************************/

        //      var entity_exists_job = new EntityExistsJob (this.oc_wizard.account, new_url_path, this);
        //      entity_exists_job.exists.connect (
        //          this.on_signal_remote_folder_exists
        //      );
        //      entity_exists_job.on_signal_start ();
        //  } else {
        //      finalize_setup (false);
        //  }
    }


    /***********************************************************
    TODO move into EntityExistsJob once we decide if/how to
    return gui strings from jobs
    ***********************************************************/
    private void on_signal_remote_folder_exists (GLib.InputStream reply) {
        //  var entity_exists_job = (EntityExistsJob)sender ();
        //  bool ok = true;
        //  string error;
        //  GLib.InputStream.NetworkError error_id = reply.error;

        //  if (error_id == GLib.InputStream.NoError) {
        //      GLib.info ("Remote folder found, all cool!");
        //  } else if (error_id == GLib.InputStream.ContentNotFoundError) {
        //      if (this.remote_folder == "") {
        //          error = _("No remote folder specified!");
        //          ok = false;
        //      } else {
        //          create_remote_folder ();
        //      }
        //  } else {
        //      error = _("Error: %1").printf (entity_exists_job.error_string);
        //      ok = false;
        //  }

        //  if (!ok) {
        //      this.oc_wizard.on_signal_display_error (Utility.escape (error), false);
        //  }

        //  finalize_setup (ok);
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_create_remote_folder_finished (GLib.InputStream reply) {
        //  var error = reply.error;
        //  GLib.debug ("** webdav mkdir request finished " + error);
        //  //    disconnect (own_cloud_info.instance, SIGNAL (webdav_col_created (GLib.InputStream.NetworkError)),
        //  //               this, SLOT (on_signal_create_remote_folder_finished (GLib.InputStream.NetworkError)));

        //  bool on_signal_success = true;
        //  if (error == 202) {
        //      this.oc_wizard.on_signal_append_to_configuration_log (_("The remote folder %1 already exists. Connecting it for syncing.").printf (this.remote_folder), OwncloudWizard.LogType.LOG_PLAIN);
        //  } else if (error > 202 && error < 300) {
        //      this.oc_wizard.on_signal_display_error (_("The folder creation resulted in HTTP error code %1").printf ((int)error), false);
        //      this.oc_wizard.on_signal_append_to_configuration_log (_("The folder creation resulted in HTTP error code %1").printf ((int)error), OwncloudWizard.LogType.LOG_PLAIN);
        //  } else if (error == GLib.InputStream.OperationCanceledError) {
        //      this.oc_wizard.on_signal_display_error (
        //          _("The remote folder creation failed because the provided credentials "
        //          + "are wrong!"
        //          + "<br/>Please go back and check your credentials.</p>"
        //          ),
        //          false
        //      );
        //      this.oc_wizard.on_signal_append_to_configuration_log (
        //          _("<p><font color=\"red\">Remote folder creation failed probably because the provided credentials are wrong.</font>"
        //          + "<br/>Please go back and check your credentials.</p>"),
        //          OwncloudWizard.LogType.LOG_HTML
        //      );
        //      this.remote_folder = "";
        //      on_signal_success = false;
        //  } else {
        //      this.oc_wizard.on_signal_append_to_configuration_log (_("Remote folder %1 creation failed with error <tt>%2</tt>.").printf (Utility.escape (this.remote_folder)).printf (error), OwncloudWizard.LogType.LOG_PLAIN);
        //      this.oc_wizard.on_signal_display_error (_("Remote folder %1 creation failed with error <tt>%2</tt>.").printf (Utility.escape (this.remote_folder)).printf (error), false);
        //      this.remote_folder = "";
        //      on_signal_success = false;
        //  }

        //  finalize_setup (on_signal_success);
    }


    /***********************************************************
    Method executed when the user end has finished the basic
    setup.
    ***********************************************************/
    private void on_signal_assistant_finished (int result) {
        //  FolderManager folder_man = FolderManager.instance;

        //  if (result == Gtk.Dialog.Rejected) {
        //      GLib.info ("Rejected the new config, use the old!");

        //  } else if (result == Gtk.Dialog.Accepted) {
        //      // This may or may not wipe all folder definitions, depending
        //      // on whether a new account is activated or the existing one
        //      // is changed.
        //      var account = apply_account_changes ();

        //      string local_folder = FolderDefinition.prepare_local_path (this.oc_wizard.local_folder ());

        //      bool start_from_scratch = this.oc_wizard.field ("OCSync_from_scratch").to_bool ();
        //      if (!start_from_scratch || ensure_start_from_scratch (local_folder)) {
        //          GLib.info ("Adding folder definition for " + local_folder + this.remote_folder);
        //          FolderDefinition folder_definition;
        //          folder_definition.local_path = local_folder;
        //          folder_definition.target_path = FolderDefinition.prepare_target_path (this.remote_folder);
        //          folder_definition.ignore_hidden_files = folder_man.ignore_hidden_files;
        //          if (this.oc_wizard.use_virtual_file_sync ()) {
        //              folder_definition.virtual_files_mode = this.best_available_vfs_mode;
        //          }
        //          if (folder_man.navigation_pane_helper.show_in_explorer_navigation_pane) {
        //              folder_definition.navigation_pane_clsid = GLib.Uuid.create_uuid ();
        //          }
        //          var f = folder_man.add_folder (account, folder_definition);
        //          if (f) {
        //              if (folder_definition.virtual_files_mode != Common.AbstractVfs.Off && this.oc_wizard.use_virtual_file_sync ()) {
        //                  f.root_pin_state (Common.ItemAvailability.ONLINE_ONLY);
        //              }
        //              f.journal_database.selective_sync_list (Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_BLOCKLIST,
        //                  this.oc_wizard.selective_sync_blocklist ());
        //              if (!this.oc_wizard.is_confirm_big_folder_checked ()) {
        //                  // The user already accepted the selective sync dialog. everything is in the allow list
        //                  f.journal_database.selective_sync_list (Common.SyncJournalDb.SelectiveSyncListType.SELECTIVE_SYNC_ALLOWLIST,
        //                      { } + "/");
        //              }
        //          }
        //          this.oc_wizard.on_signal_append_to_configuration_log (
        //              _("<font color=\"green\"><b>Local sync folder %1 successfully created!</b></font>").printf (local_folder),
        //              OwncloudWizard.LogType.LOG_HTML
        //          );
        //      }
        //  }

        //  // notify others.
        //  this.oc_wizard.on_signal_done (GLib.Wizard.Accepted);
        //  signal_own_cloud_wizard_done (result);
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_skip_folder_configuration () {
        //  apply_account_changes ();

        //  disconnect (this.oc_wizard, OwncloudWizard.signal_basic_setup_finished,
        //      this, OwncloudSetupWizard.on_signal_assistant_finished);
        //  this.oc_wizard.close ();
        //  signal_own_cloud_wizard_done (Gtk.Dialog.Accepted);
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_system_proxy_lookup_done (Soup.NetworkProxy proxy) {
        //  if (proxy.type () != Soup.NetworkProxy.NoProxy) {
        //      GLib.info ("Setting Soup.Session proxy to be system proxy " + LibSync.ClientProxy.print_q_network_proxy (proxy));
        //  } else {
        //      GLib.info ("No system proxy set by OS.");
        //  }
        //  LibSync.Account account = this.oc_wizard.account;
        //  account.network_access_manager.proxy (proxy);

        //  on_signal_find_server ();
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_auth_error () {
        //  string error_msg;

        //  var propfind_job = (PropfindJob)sender ();
        //  if (!propfind_job) {
        //      GLib.warning ("Cannot check for authed redirects. This slot should be invoked from PropfindJob!");
        //      return;
        //  }
        //  GLib.InputStream reply = propfind_job.input_stream;

        //  // If there were redirects on the authed* requests, also store
        //  // the updated server URL, similar to redirects on status.php.
        //  GLib.Uri redirect_url = reply.attribute (Soup.Request.RedirectionTargetAttribute).to_url ();
        //  if (!redirect_url == "") {
        //      GLib.info ("Authed request was redirected to " + redirect_url.to_string ());

        //      // strip the expected path
        //      string path = redirect_url.path;
        //      OwncloudSetupWizard.expected_path = "/" + this.oc_wizard.account.dav_path;
        //      if (path.has_suffix (OwncloudSetupWizard.expected_path)) {
        //          path.chop (OwncloudSetupWizard.expected_path.size ());
        //          redirect_url.path (path);

        //          GLib.info ("Setting account url to " + redirect_url.to_string ());
        //          this.oc_wizard.account.url (redirect_url);
        //          test_owncloud_connect ();
        //          return;
        //      }
        //      error_msg = _("The authenticated request to the server was redirected to "
        //                  + "\"%1\". The URL is bad, the server is misconfigured.")
        //                     .printf (Utility.escape (redirect_url.to_string ()));

        //      // A 404 is actually a on_signal_success : we were authorized to know that the folder does
        //      // not exist. It will be created later...
        //  } else if (reply.error == GLib.InputStream.ContentNotFoundError) {
        //      this.oc_wizard.on_signal_successful_step ();
        //      return;

        //      // Provide messages for other errors, such as invalid credentials.
        //  } else if (reply.error != GLib.InputStream.NoError) {
        //      if (!this.oc_wizard.account.credentials ().still_valid (reply)) {
        //          error_msg = _("Access forbidden by server. To verify that you have proper access, "
        //                      + "<a href=\"%1\">click here</a> to access the service with your browser.")
        //                         .printf (Utility.escape (this.oc_wizard.account.url.to_string ()));
        //      } else {
        //          error_msg = propfind_job.error_string_parsing_body ();
        //      }

        //      // Something else went wrong, maybe the response was 200 but with invalid data.
        //  } else {
        //      error_msg = _("There was an invalid response to an authenticated WebDAV request");
        //  }

        //  // bring wizard to top
        //  this.oc_wizard.bring_to_top ();
        //  if (this.oc_wizard.current_id () == WizardCommon.Pages.PAGE_OAUTH_CREDS || this.oc_wizard.current_id () == WizardCommon.Pages.PAGE_FLOW2AUTH_CREDS) {
        //      this.oc_wizard.back ();
        //  }
        //  this.oc_wizard.on_signal_display_error (error_msg, this.oc_wizard.current_id () == WizardCommon.Pages.PAGE_SERVER_SETUP && check_downgrade_advised (reply));
    }


    /***********************************************************
    ***********************************************************/
    private void start_wizard () {
        //  LibSync.Account account = AccountManager.create_account ();
        //  account.credentials (CredentialsFactory.create ("dummy"));
        //  account.url (LibSync.Theme.override_server_url);
        //  this.oc_wizard.account = account;
        //  this.oc_wizard.oc_url = account.url.to_string ();

        //  this.remote_folder = LibSync.Theme.default_server_folder;
        //  // remote_folder may be empty, which means /
        //  string local_folder = LibSync.Theme.default_client_folder;

        //  // if its a relative path, prepend with users home directory, otherwise use as absolute path

        //  if (!new GLib.Dir (local_folder).is_absolute ()) {
        //      local_folder = GLib.Dir.home_path + "/" + local_folder;
        //  }

        //  this.oc_wizard.property ("local_folder", local_folder);

        //  // remember the local folder to compare later if it changed, but clean first
        //  string lf = GLib.Dir.from_native_separators (local_folder);
        //  if (!lf.has_suffix ("/")) {
        //      lf.append ("/");
        //  }

        //  this.init_local_folder = lf;

        //  this.oc_wizard.on_signal_remote_folder (this.remote_folder);

    //  #ifdef WITH_PROVIDERS
        //  var start_page = WizardCommon.Pages.PAGE_WELCOME;
    //  #else // WITH_PROVIDERS
        //  var start_page = WizardCommon.Pages.PAGE_SERVER_SETUP;
    //  #endif // WITH_PROVIDERS
        //  this.oc_wizard.start_id (start_page);

        //  this.oc_wizard.restart ();

        //  this.oc_wizard.open ();
        //  this.oc_wizard.raise ();
    }


    /***********************************************************
    ***********************************************************/
    private test_owncloud_connect () {
        //  LibSync.Account account = this.oc_wizard.account;

        //  var propfind_job = new PropfindJob (account, "/", this);
        //  propfind_job.ignore_credential_failure (true);
        //  // There is custom redirect handling in the error handler,
        //  // so don't automatically follow redirects.
        //  propfind_job.follow_redirects (false);
        //  propfind_job.properties (new GLib.List<string> ("getlastmodified"));
        //  propfind_job.result.connect (
        //      this.oc_wizard.on_signal_successful_step
        //  );
        //  propfind_job.signal_finished_with_error.connect (
        //      this.on_signal_auth_error
        //  );
        //  propfind_job.on_signal_start ();
    }


    /***********************************************************
    ***********************************************************/
    private void create_remote_folder () {
        //  this.oc_wizard.on_signal_append_to_configuration_log (
        //      _("Creating folder on Nextcloud: %1")
        //          .printf (this.remote_folder),
        //      OwncloudWizard.LogType.LOG_PLAIN
        //  );

        //  var mkcol_job = new MkColJob (this.oc_wizard.account, this.remote_folder, this);
        //  mkcol_job.signal_finished_with_error.connect (
        //      this.on_signal_create_remote_folder_finished
        //  );
        //  mkcol_job.signal_finished_without_error.connect (
        //      this.on_signal_mkcol_job_finished_without_error
        //  );
        //  mkcol_job.on_signal_start ();
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_mkcol_job_finished_without_error () {
        //  this.oc_wizard.on_signal_append_to_configuration_log (
        //      _("Remote folder %1 created successfully.").printf (this.remote_folder),
        //      OwncloudWizard.LogType.LOG_PLAIN
        //  );
        //  finalize_setup (true);
    }


    /***********************************************************
    ***********************************************************/
    private void finalize_setup (bool on_signal_success) {
        //  string local_folder = this.oc_wizard.property ("local_folder").to_string ();
        //  if (on_signal_success) {
        //      if (! (local_folder == "" || this.remote_folder == "")) {
        //          this.oc_wizard.on_signal_append_to_configuration_log (
        //              _("A sync connection from %1 to remote directory %2 was set up.")
        //                  .printf (local_folder, this.remote_folder),
        //              OwncloudWizard.LogType.LOG_PLAIN
        //          );
        //      }
        //      this.oc_wizard.on_signal_append_to_configuration_log (" ", OwncloudWizard.LogType.LOG_PLAIN);
        //      this.oc_wizard.on_signal_append_to_configuration_log (
        //          "<p><font color=\"green\"><b>"
        //          + _("Successfully connected to %1!")
        //              .printf (LibSync.Theme.app_name_gui)
        //          + "</b></font></p>",
        //          OwncloudWizard.LogType.LOG_HTML);
        //      this.oc_wizard.on_signal_successful_step ();
        //  } else {
        //      // ### this is not quite true, pass in the real problem as optional parameter
        //      this.oc_wizard.on_signal_append_to_configuration_log (
        //          "<p><font color=\"red\">"
        //          + _("Connection to %1 could not be established. Please check again.")
        //              .printf (LibSync.Theme.app_name_gui)
        //          + "</font></p>",
        //          OwncloudWizard.LogType.LOG_HTML);
        //  }
    }


    /***********************************************************
    ***********************************************************/
    private bool ensure_start_from_scratch (string local_folder) {
        //  // first try to rename (backup) the current local directory.
        //  bool rename_ok = false;
        //  while (!rename_ok) {
        //      rename_ok = FolderManager.instance.start_from_scratch (local_folder);
        //      if (!rename_ok) {
        //          Gtk.MessageBox.StandardButton but = Gtk.MessageBox.question (
        //              null,
        //              _("FolderConnection rename failed"),
        //              _("Cannot remove and back up the folder because the folder or a file in it is open in another program."
        //              + " Please close the folder or file and hit retry or cancel the setup."),
        //              Gtk.MessageBox.Retry | Gtk.MessageBox.Abort, Gtk.MessageBox.Retry);
        //          if (but == Gtk.MessageBox.Abort) {
        //              break;
        //          }
        //      }
        //  }
        //  return rename_ok;
    }


    /***********************************************************
    ***********************************************************/
    private AccountState apply_account_changes () {
        //  LibSync.Account new_account = this.oc_wizard.account;

        //  // Detach the account that is going to be saved from the
        //  // wizard to ensure it doesn't accidentally get modified
        //  // later (such as from running clean_up such as
        //  // AbstractCredentialsWizardPage.clean_up_page ())
        //  this.oc_wizard.account = AccountManager.create_account ();

        //  var manager = AccountManager.instance;

        //  var new_state = manager.add_account (new_account);
        //  manager.save ();
        //  return new_state;
    }


    /***********************************************************
    ***********************************************************/
    private bool check_downgrade_advised (GLib.InputStream reply) {
        //  if (reply.url.scheme () != "https") {
        //      return false;
        //  }

        //  switch (reply.error) {
        //  case GLib.InputStream.NoError:
        //  case GLib.InputStream.ContentNotFoundError:
        //  case GLib.InputStream.AuthenticationRequiredError:
        //  case GLib.InputStream.Host_not_found_error:
        //      return false;
        //  default:
        //      break;
        //  }

        //  // Adhere to HSTS, even though we do not parse it properly
        //  if (reply.has_raw_header ("Strict-Transport-Security")) {
        //      return false;
        //  }
        //  return true;
    }

} // class OwncloudSetupWizard

} // namespace Ui
} // namespace Occ
    