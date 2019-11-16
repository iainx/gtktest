//
//  ViewController.m
//  gtktest
//
//  Created by iain on 15/11/2019.
//  Copyright © 2019 iain. All rights reserved.
//

#import "ViewController.h"
#include <gtk/gtk.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

static void
button_clicked_cb (GtkButton *button, void *vc)
{
    NSLog (@"Clicked");
    
    GtkWidget *newWindow = gtk_window_new (GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW (newWindow), "GTK Window 2");
    GtkWidget *label = gtk_label_new("Hello world!");
    
    gtk_container_add(GTK_CONTAINER (newWindow), label);
    
    gtk_widget_show_all(newWindow);
    
}

- (IBAction)openGtkWindow:(id)sender {
    GtkWidget *window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title (GTK_WINDOW (window), "GTK Window 1");
    GtkWidget *button = gtk_button_new_with_label("Open GtkWindow");
    g_signal_connect(button, "clicked", G_CALLBACK(button_clicked_cb), NULL);
    gtk_container_add (GTK_CONTAINER (window), button);
    
    gtk_widget_grab_focus(window);
    gtk_widget_show_all (window);
}

@end
