//
//  PPAppDelegate.h
//  The Purple PocketBook
//
//  Created by Alicia MacBook Pro on 1/13/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "MCManager.h"


@class RSStateManager;

@interface PPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (nonatomic, strong) MCManager *mcManager;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
