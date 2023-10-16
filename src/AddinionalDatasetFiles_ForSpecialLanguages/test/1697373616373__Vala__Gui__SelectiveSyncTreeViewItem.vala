/***********************************************************
@author Olivier Goffart <ogoffart@woboq.com>

@copyright GPLv3 or Later
***********************************************************/

namespace Occ {
namespace Ui {

public class SelectiveSyncTreeViewItem { //: GLib.TreeWidgetItem {

    /***********************************************************
    ***********************************************************/
    public SelectiveSyncTreeViewItem (int type = GLib.TreeWidgetItem.Type) {
        //  base (type);
    }


    /***********************************************************
    ***********************************************************/
    public SelectiveSyncTreeViewItem.with_parent (GLib.TreeWidgetItem parent, int type = GLib.TreeWidgetItem.Type) {
        //  base (parent, type);
    }


    /***********************************************************
    ***********************************************************/
    public SelectiveSyncTreeViewItem.for_string_list (GLib.List<string> strings, int type = GLib.TreeWidgetItem.Type) {

    }


    /***********************************************************
    ***********************************************************/
    //  public TreeWidgetItem (view, type) {

    //  }


    /***********************************************************
    ***********************************************************/
    //  private bool operator< (GLib.TreeWidgetItem other) override {
        //  int column = tree_widget ().sort_column ();
        //  if (column == 1) {
        //      return data (1, GLib.USER_ROLE).to_long_long () < other.data (1, GLib.USER_ROLE).to_long_long ();
        //  }
        //  return GLib.TreeWidgetItem.operator< (other);
    //  }

} // class SelectiveSyncTreeViewItem

} // namespace Testing
} // namespace Occ
