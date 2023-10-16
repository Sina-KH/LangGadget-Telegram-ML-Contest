/***********************************************************
@author Roeland Jago Douma <roeland@owncloud.com>

@copyright GPLv3 or Later
***********************************************************/

namespace Occ {
namespace Ui {

public class ShareeModel { //: GLib.Object {

    /***********************************************************
    FIXME: make it a GLib.List<Sharee> when Sharee can be compared
    ***********************************************************/
    public class ShareeSet : GLib.List<Sharee> { }

    /***********************************************************
    ***********************************************************/
    public enum LookupMode {
        LOCAL_SEARCH = 0,
        GLOBAL_SEARCH = 1
    }


    /***********************************************************
    ***********************************************************/
    public class FindShareeHelper {
        Sharee sharee;

        bool operator (Sharee s2) {
            //  return s2.to_string () == sharee.to_string () && s2.display_name == sharee.to_string ();
        }
    }

    /***********************************************************
    ***********************************************************/
    private LibSync.Account account;
    private string search;
    private string type;

    /***********************************************************
    ***********************************************************/
    private GLib.List<Sharee> sharees;
    private GLib.List<Sharee> sharee_blocklist;

    internal signal void signal_sharees_ready ();
    internal signal void signal_display_error_message (int code, string value);

    /***********************************************************
    ***********************************************************/
    public ShareeModel (LibSync.Account account, string type) {
        //  base ();
        //  this.account = account;
        //  this.type = type;
    }


    /***********************************************************
    ***********************************************************/
    public void fetch (string search, ShareeSet blocklist, LookupMode lookup_mode) {
        //  this.search = search;
        //  this.sharee_blocklist = blocklist;
        //  var ocs_sharee_job = new OcsShareeJob (this.account);
        //  ocs_sharee_job.signal_sharee_job_finished.connect (
        //      this.on_signal_sharees_fetched
        //  );
        //  ocs_sharee_job.signal_error.connect (
        //      this.signal_display_error_message
        //  );
        //  ocs_sharee_job.sharees (
        //      this.search, this.type, 1, 50,
        //      lookup_mode == LookupMode.GLOBAL_SEARCH
        //  );
    }


    /***********************************************************
    ***********************************************************/
    public override int row_count (GLib.ModelIndex parent = GLib.ModelIndex ()) {
        //  return this.sharees.length ();
    }


    /***********************************************************
    ***********************************************************/
    public string current_search () {
        //  return this.search;
    }


    /***********************************************************
    ***********************************************************/
    private void on_signal_sharees_fetched (GLib.JsonDocument reply) {
        //  GLib.List<Sharee> new_sharees;
        //  {
        //      GLib.List<string> sharee_types {"users", "groups", "emails", "remotes", "circles", "rooms"};

        //      var append_sharees = [this, sharee_types] (Json.Object data, GLib.List<Sharee>& out) {
        //          for (var sharee_type : sharee_types) {
        //              var category = data.value (sharee_type).to_array ();
        //              for (var sharee : category) {
        //                  out.append (parse_sharee (sharee.to_object ()));
        //              }
        //          }
        //      }

        //      append_sharees (reply.object ().value ("ocs").to_object ().value ("data").to_object (), new_sharees);
        //      append_sharees (reply.object ().value ("ocs").to_object ().value ("data").to_object ().value ("exact").to_object (), new_sharees);
        //  }

        //  // Filter sharees that we have already shared with
        //  GLib.List<Sharee> filtered_sharees;
        //  foreach (var sharee, new_sharees) {
        //      bool found = false;
        //      foreach (var blocklist_sharee, this.sharee_blocklist) {
        //          if (sharee.type () == blocklist_sharee.type () && sharee.share_with () == blocklist_sharee.share_with ()) {
        //              found = true;
        //              break;
        //          }
        //      }

        //      if (found == false) {
        //          filtered_sharees.append (sharee);
        //      }
        //  }

        //  new_sharees (filtered_sharees);
        //  signal_sharees_ready ();
    }


    /***********************************************************
    Set the new sharee

    Do that while preserving the model index so the selection stays
    ***********************************************************/
    private void new_sharees (GLib.List<Sharee> new_sharees) {
        //  layout_about_to_be_changed ();
        //  var persistent = persistent_index_list ();
        //  GLib.List<Sharee> old_persistant_sharee;
        //  old_persistant_sharee.reserve (persistent.size ());

        //  std.transform (persistent.begin (), persistent.end (), std.back_inserter (old_persistant_sharee),
        //      sharee_from_model_index);

        //  this.sharees = new_sharees;

        //  GLib.Model_index_list new_persistant;
        //  new_persistant.reserve (persistent.size ());
        //  foreach (unowned Sharee sharee, old_persistant_sharee) {
        //      FindShareeHelper helper = {
        //          sharee
        //      }
        //      var it = std.find_if (this.sharees.const_begin (), this.sharees.const_end (), helper);
        //      if (it == this.sharees.const_end ()) {
        //          new_persistant + GLib.ModelIndex ();
        //      } else {
        //          new_persistant + index (std.distance (this.sharees.const_begin (), it));
        //      }
        //  }

        //  change_persistent_index_list (persistent, new_persistant);
        //  layout_changed ();
    }


    /***********************************************************
    ***********************************************************/
    private unowned Sharee parse_sharee (Json.Object data) {
        //  string display_name = data.value ("label").to_string ();
        //  string share_with = data.value ("value").to_object ().value ("share_with").to_string ();
        //  Sharee.Type parsed_type = (Sharee.Type)data.value ("value").to_object ().value ("share_type").to_int ();
        //  string additional_info = data.value ("value").to_object ().value ("share_with_additional_info").to_string ();
        //  if (!additional_info == "") {
        //      display_name = _("%1 (%2)", "sharee (share_with_additional_info)").printf (display_name, additional_info);
        //  }

        //  return unowned Sharee (new Sharee (share_with, display_name, parsed_type));
    }


    /***********************************************************
    ***********************************************************/
    private GLib.Variant data (GLib.ModelIndex index, int role) {
        //  if (index.row () < 0 || index.row () > this.sharees.size ()) {
        //      return GLib.Variant ();
        //  }

        //  var sharee = this.sharees.at (index.row ());
        //  if (role == GLib.Display_role) {
        //      return sharee.to_string ();

        //  } else if (role == GLib.EditRole) {
        //      // This role is used by the completer - it should match
        //      // the full name and the user name and thus we include both
        //      // in the output here. But we need to take care this string
        //      // doesn't leak to the user.
        //      return sharee.display_name + " (" + sharee.share_with () + ")";

        //  } else if (role == GLib.USER_ROLE) {
        //      return GLib.Variant.from_value (sharee);
        //  }

        //  return GLib.Variant ();
    }


    /***********************************************************
    ***********************************************************/
    internal unowned Sharee sharee (int at) {
        //  if (at < 0 || at > this.sharees.length ()) {
        //      return new unowned Sharee (null);
        //  }

        //  return this.sharees.nth_data (at);
    }


    /***********************************************************
    Helper function for new_sharees (could be a lambda when we can use them)
    ***********************************************************/
    private static unowned Sharee sharee_from_model_index (GLib.ModelIndex index) {
        //  return index.data (GLib.USER_ROLE).value<Sharee> ();
    }

} // class ShareeModel

} // namespace Ui
} // namespace Occ
