/***********************************************************
@author 2018 by J-P Nurmi <jpnurmi@gmail.com>

@copyright GPLv3 or Later
***********************************************************/

//  #include <GLib.Application>
//  #include <GLib.MouseEvent>
//  #include <GLib.Painter>
//  #include <GLib.Style>
//  #include <GLib.Style_hints>
//  const int HASQT5_11 (GLib.T_VERSION >= GLib.T_VERSION_CHECK (5,11,0))
//  #include <Gtk.Widget>
//  #include <GLib.Timer>
//  #include <GLib.Pointer>
//  #include <GLib.VariantAnimation>

namespace Occ {
namespace Ui {

/***********************************************************
@brief The SlideShow class
@ingroup gui
***********************************************************/
public class SlideShow { //: Gtk.Widget {

    //  const int SPACING = 6;
    //  const int SLIDE_DURATION = 1000;
    //  const int SLIDE_DISTANCE = 400;

    //  /***********************************************************
    //  ***********************************************************/
    //  private bool reverse = false;

    //  int interval {
        //  public get {
        //      return this.interval;
        //  }
        //  public set {
        //      if (this.interval == value) {
        //          return;
        //      }

        //      this.interval = value;
        //      maybe_restart_timer ();
        //  }
    //  }

    //  int current_slide {
        //  public get {
        //      return this.current_slide;
        //  }
        //  public set {
        //      if (this.current_slide == value) {
        //          return;
        //      }

        //      if (this.animation == null) {
        //          this.animation = new GLib.VariantAnimation (this);
        //          this.animation.duration (SLIDE_DURATION);
        //          this.animation.easing_curve (GLib.Easing_curve.Out_cubic);
        //          this.animation.start_value ((double)this.current_slide);
        //          this.animation.value_changed.connect (
        //              this.update
        //          );
        //      }
        //      this.animation.end_value ((double)value);
        //      this.animation.on_signal_start (GLib.AbstractAnimation.DeleteWhenStopped);

        //      this.reverse = value < this.current_slide;
        //      this.current_slide = value;
        //      maybe_restart_timer ();
        //      update ();
        //      signal_current_slide_changed (value);
        //  }
    //  }

    //  private GLib.Point press_point;
    //  private GLib.Timer timer;
    //  private GLib.List<string> labels;
    //  private GLib.List<Gdk.Pixbuf> pixmaps;
    //  private GLib.VariantAnimation animation = null;

    //  internal signal void signal_clicked ();
    //  internal signal void signal_current_slide_changed (int index);

    //  /***********************************************************
    //  ***********************************************************/
    //  public SlideShow (Gtk.Widget parent = new Gtk.Widget ()) {
        //  base ();
        //  this.current_slide = 0;
        //  this.interval = 3500;
        //  this.size_policy (GLib.SizePolicy.Minimum, GLib.SizePolicy.Minimum);
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void add_slide (Gdk.Pixbuf pixmap, string label) {
        //  this.labels.append (label);
        //  this.pixmaps.append (pixmap);
        //  update_geometry ();
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public bool is_active () {
        //  return this.timer.is_active ();
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void draw_slide (GLib.Painter painter, int index) {
        //  string label = this.labels.value (index);
        //  GLib.Rect label_rect = this.style.item_text_rect (font_options (), rect (), GLib.Align_bottom | GLib.AlignHCenter, is_enabled (), label);
        //  this.style.draw_item_text (painter, label_rect, GLib.AlignCenter, palette (), is_enabled (), label, Gtk.Palette.Window_text);

        //  Gdk.Pixbuf pixmap = this.pixmaps.value (index);
        //  GLib.Rect pixmap_rect = this.style.item_pixmap_rect (GLib.Rect (0, 0, width (), label_rect.top () - SPACING), GLib.AlignCenter, pixmap);
        //  this.style.draw_item_pixmap (painter, pixmap_rect, GLib.AlignCenter, pixmap);
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public Gdk.Rectangle size_hint () {
        //  Cairo.FontOptions font_options = font_options ();
        //  Gdk.Rectangle label_size = Gdk.Rectangle (0, font_options.height ());
        //  foreach (string label in this.labels) {
        //      label_size.width = int.max (font_options.horizontal_advance (label), label_size.width);
        //  }
        //  Gdk.Rectangle pixmap_size;
        //  foreach (Gdk.Pixbuf pixmap in this.pixmaps) {
        //      pixmap_size.width = int.max (pixmap.width, pixmap_size.width);
        //      pixmap_size.height = int.max (pixmap.height, pixmap_size.height);
        //  }
        //  return Gdk.Rectangle (
        //      std.max (label_size.width (), pixmap_size.width ()),
        //      label_size.height () + SPACING + pixmap_size.height ()
        //  );
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void on_signal_start_show (int interval) {
        //  if (interval > 0)
        //      this.interval = interval;
        //  this.timer.on_signal_start (this.interval, this);
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void on_signal_stop_show () {
        //  this.timer.stop ();
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void on_signal_next_slide () {
        //  current_slide = (this.current_slide + 1) % this.labels.length ();
        //  this.reverse = false;
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void on_signal_prev_slide () {
        //  this.current_slide = (this.current_slide > 0 ? this.current_slide : this.labels.length ()) - 1;
        //  this.reverse = true;
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  public void reset () {
        //  on_signal_stop_show ();
        //  this.pixmaps = new GLib.List<Gdk.Pixbuf> ();
        //  this.labels = new GLib.List<string> ();
        //  update_geometry ();
        //  update ();
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  protected void mouse_press_event (GLib.MouseEvent event) {
        //  this.press_point = event.position ();
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  protected void mouse_release_event (GLib.MouseEvent event) {
        //  if (this.animation == null && GLib.Line_f (this.press_point, event.position ()).length < GLib.Application.style_hints ().start_drag_distance ()) {
        //      signal_clicked ();
        //  }
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  protected void paint_event (GLib.PaintEvent event) {
        //  GLib.Painter painter = new GLib.Painter (this);

        //  if (this.animation != null) {
        //      int from = this.animation.start_value ().to_int ();
        //      int to = this.animation.end_value ().to_int ();
        //      double progress = this.animation.easing_curve ().value_for_progress (this.animation.current_time () / (double)this.animation.duration ());

        //      painter.save ();
        //      painter.opacity (1.0 - progress);
        //      painter.translate (progress * (this.reverse ? SLIDE_DISTANCE : -SLIDE_DISTANCE), 0);
        //      draw_slide (painter, from);

        //      painter.restore ();
        //      painter.opacity (progress);
        //      painter.translate ( (1.0 - progress) * (this.reverse ? -SLIDE_DISTANCE : SLIDE_DISTANCE), 0);
        //      draw_slide (painter, to);
        //  } else {
        //      draw_slide (painter, this.current_slide);
        //  }
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  protected void timer_event (GLib.TimerEvent event) {
        //  if (event.timer_id () == this.timer.timer_id ())
        //      on_signal_next_slide ();
    //  }


    //  /***********************************************************
    //  ***********************************************************/
    //  private void maybe_restart_timer () {
        //  if (!is_active ())
        //      return;

        //  on_signal_start_show ();
    //  }

} // class SlideShow

} // namespace Ui
} // namespace Occ
