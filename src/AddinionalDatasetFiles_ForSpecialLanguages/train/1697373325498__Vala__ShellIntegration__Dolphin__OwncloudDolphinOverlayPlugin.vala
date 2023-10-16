/***********************************************************
@author 2014 by Olivier Goffart <ogoffart@woboq.com

<GPLv2-or-later-Boilerplate>
***********************************************************/

//  #include <KOverlayIconPlugin>
//  #include <KPluginFactory>
//  #include <QtNetwork/GLib.LocalSocket>
//  #include <KIOCore/kfileitem.h>
//  #include <GLib.Dir>

public class OwncloudDolphinPlugin : KOverlayIconPlugin {

    //  Q_PLUGIN_METADATA (IID "com.owncloud.ovarlayiconplugin" FILE "ownclouddolphinoverlayplugin.json")

    GLib.HashTable<string, string> status_map;

    /***********************************************************
    ***********************************************************/
    public OwncloudDolphinPlugin () {
        //  var helper = OwncloudDolphinPluginHelper.instance;
        //  helper.signal_command_received.connect (
        //      this.on_signal_command_received
        //  );
    }


    /***********************************************************
    ***********************************************************/
    public override GLib.List<string> getOverlays (GLib.Uri url) {
        //  var helper = OwncloudDolphinPluginHelper.instance;
        //  if (!helper.is_connected) {
        //      return { };
        //  }
        //  if (!url.isLocalFile ()) {
        //      return { };
        //  }
        //  GLib.Dir local_path = new GLib.Dir (url.to_local_file ());
        //  string local_file = local_path.canonical_path.toUtf8 ();

        //  helper.send_command ("RETRIEVE_FILE_STATUS:" + local_file + "\n");

        //  GLib.HashTable<string, string>.iterator it = status_map.find (local_file);
        //  if (it != status_map.const_end ()) {
        //      return  overlaysForString (it);
        //  }
        //  return { };
    }


    /***********************************************************
    ***********************************************************/
    private GLib.List<string> overlaysForString (string status) {
        //  GLib.List<string> r;
        //  if (status.startsWith ("NOP"))
        //      return r;

        //  if (status.startsWith ("OK"))
        //      r += "vcs-normal";
        //  if (status.startsWith ("SYNC") || status.startsWith ("NEW"))
        //      r += "vcs-update-required";
        //  if (status.startsWith ("IGNORE") || status.startsWith ("WARN"))
        //      r += "vcs-locally-modified-unstaged";
        //  if (status.startsWith ("ERROR"))
        //      r += "vcs-conflicting";

        //  if (status.contains ("+SWM"))
        //      r += "document-share";

        //  return r;
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_command_received (string line) {

        //  GLib.List<string> tokens = line.split (':');
        //  if (tokens.length < 3)
        //      return;
        //  if (tokens[0] != "STATUS" && tokens[0] != "BROADCAST")
        //      return;
        //  if (tokens[2].isEmpty ())
        //      return;

        //  // We can't use tokens[2] because the filename might contain ':'
        //  int secondColon = line.indexOf (":", line.indexOf (":") + 1);
        //  string name = line.mid (secondColon + 1);
        //  string status = status_map[name]; // reference to the item in the hash
        //  if (status == tokens[1])
        //      return;
        //  status = tokens[1];

        //  signal_overlays_changed (GLib.Uri.fromLocalFile (string.fromUtf8 (name)), overlaysForString (status));
    }
}
