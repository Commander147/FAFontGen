//
//  main.m
//  FontGen
//
//  Created by Joseph Afework on 2/14/14.
//  Copyright (c) 2014 Cirruspath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
#import "FontGenerator.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Blue
        
        // insert code here...
        NSLog(@"Hello, World!: %@",[[NSBundle mainBundle] bundlePath]);
        FontGenerator *fontGen = [[FontGenerator alloc] init];
        [fontGen generateFAImage:FAGithub withColor:[NSColor whiteColor]];
        
        NSArray *params = [[NSProcessInfo processInfo] arguments];
        for(NSString *string in params){
             NSLog(@"%@", string);
        }
        
    }
    return 0;
}
