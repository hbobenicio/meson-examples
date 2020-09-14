#include <iostream>

#include <gtk/gtk.h>

int main(int argc, char **argv) {
  gtk_init(&argc, &argv);
  
  std::cout << "Hello, Meson!\n";
  
  GtkWidget *win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
  gtk_window_set_title(GTK_WINDOW(win), "Hello Meson and Gtk");
  g_signal_connect(win, "destroy", G_CALLBACK(gtk_main_quit), nullptr);
  gtk_widget_show(win);
  gtk_main();
}
