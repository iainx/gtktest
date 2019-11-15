//
//  AppDelegate.h
//  gtktest
//
//  Created by iain on 15/11/2019.
//  Copyright © 2019 iain. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;


@end

