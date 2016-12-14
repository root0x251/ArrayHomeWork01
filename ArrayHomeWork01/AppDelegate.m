//
//  AppDelegate.m
//  ArrayHomeWork01
//
//  Created by Slava on 14.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Human.h"
#import "Cyclist.h"
#import "Runner.h"
#import "Swimmer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Cyclist *personOnCycle = [[Cyclist alloc]init];
    Runner *personWhoRun = [[Runner alloc]init];
    Swimmer *personWhoSwim = [[Swimmer alloc]init];
    
    personOnCycle.name = @"Rick";
    personOnCycle.height = 165.3f;
    personOnCycle.weight = 54.3f;
    personOnCycle.sex = @"male";
    
    personWhoRun.name = @"Kelvin";
    personWhoRun.height = 194.344f;
    personWhoRun.weight = 76.4f;
    personWhoRun.sex = @"male";
    
    personWhoSwim.name = @"Mary";
    personWhoSwim.height = 184.3f;
    personWhoSwim.weight = 49.9f;
    personWhoSwim.sex = @"female";
    
    NSArray *array = @[personOnCycle, personWhoRun, personWhoSwim];
    for (Human *string in array) {
        NSLog(@"Имя - %@", string.name);
        NSLog(@"Рост-%.2f", string.height);
        NSLog(@"Вес-%.2f", string.weight);
        NSLog(@"Пол-%@", string.sex);
        //метод передвижения
        [string motion];
    }
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
