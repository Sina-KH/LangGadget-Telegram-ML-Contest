/***********************************************************
@author Julius Härtl <jus@bitgrid.net>

@copyright GPLv3 or Later
***********************************************************/

//  #include <cloudprovidersproviderexporter.h>

namespace Occ {
namespace Ui {

public class CloudProviderManager { //: GLib.Object {

    //  CloudProvidersProviderExporter provider_exporter;

    //  /***********************************************************
    //  ***********************************************************/
    //  private GLib.HashTable<string, CloudProviderWrapper> map;
    //  private uint32 folder_index;

    //  /***********************************************************
    //  ***********************************************************/
    //  public CloudProviderManager () {
        //  base ();
        //  this.folder_index = 0;
        //  g_bus_own_name (G_BUS_TYPE_SESSION, LIBCLOUDPROVIDERS_DBUS_BUS_NAME, G_BUS_NAME_OWNER_FLAGS_NONE, null, on_signal_name_acquired, null, this, null);
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void on_signal_name_acquired (GDBusConnection connection, gchar name, gpointer user_data) {
        //  //  Q_UNUSED (name);
        //  CloudProviderManager self;
        //  self = (CloudProviderManager)user_data;
        //  this.provider_exporter = cloud_providers_provider_exporter_new (connection, LIBCLOUDPROVIDERS_DBUS_BUS_NAME, LIBCLOUDPROVIDERS_DBUS_OBJECT_PATH);
        //  cloud_providers_provider_exporter_name (this.provider_exporter, APPLICATION_NAME);
        //  self.register_signals ();
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void on_signal_name_lost (GDBusConnection connection, gchar name, gpointer user_data) {
        //  //  Q_UNUSED (connection);
        //  //  Q_UNUSED (name);
        //  //  Q_UNUSED (user_data);
        //  GLib.Object.clear (this.provider_exporter);
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void register_signals () {
        //  FolderManager.instance.signal_folder_list_changed.connect (
        //      this.on_signal_folder_list_changed
        //  );
        //  on_signal_folder_list_changed (folder_manager.map ());
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void on_signal_folder_list_changed (FolderConnection.Map folder_map) {
        //  var iterator = new GLib.MapIterator<string, CloudProviderWrapper> (this.map);
        //  while (iterator.has_next ()) {
        //      iterator.next ();
        //      if (!folder_map.contains (iterator.key ())) {
        //          cloud_providers_provider_exporter_remove_account (this.provider_exporter, iterator.value ().account_exporter ());
        //          delete this.map.find (iterator.key ()).value ();
        //          this.map.remove (iterator.key ());
        //      }
        //  }

        //  FolderConnection.MapIterator iterator2 = new FolderConnection.MapIterator (folder_map);
        //  while (iterator2.has_next ()) {
        //      iterator2.next ();
        //      if (!this.map.contains (iterator2.key ())) {
        //          var cpo = new CloudProviderWrapper (this, iterator2.value (), this.folder_index++, this.provider_exporter);
        //          this.map.insert (iterator2.key (), cpo);
        //      }
        //  }
    //  }

} // class CloudProviderManager

} // namespace Ui
} // namespace Occ
