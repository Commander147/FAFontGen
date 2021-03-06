//
//  FontGenerator.m
//  FontGen
//
//  Created by Joseph Afework on 2/14/14.
//  Copyright (c) 2014 Cirruspath. All rights reserved.
//

#import "FontGenerator.h"
#import <CoreGraphics/CoreGraphics.h>
#import <QuartzCore/QuartzCore.h>

#define kOutput @"file.png"

@interface FontGenerator ()
@property (nonatomic, strong) NSArray *fontCode;
@end

@implementation FontGenerator

-(id)init{
    self = [super init];
    if(self){
        self.fontCode = @[@"\uf000", @"\uf001", @"\uf002", @"\uf003", @"\uf004", @"\uf005", @"\uf006", @"\uf007", @"\uf008", @"\uf009", @"\uf00a", @"\uf00b", @"\uf00c", @"\uf00d", @"\uf00e", @"\uf010", @"\uf011", @"\uf012", @"\uf013", @"\uf014", @"\uf015", @"\uf016", @"\uf017", @"\uf018", @"\uf019", @"\uf01a", @"\uf01b", @"\uf01c", @"\uf01d", @"\uf01e", @"\uf021", @"\uf022", @"\uf023", @"\uf024", @"\uf025", @"\uf026", @"\uf027", @"\uf028", @"\uf029", @"\uf02a", @"\uf02b", @"\uf02c", @"\uf02d", @"\uf02e", @"\uf02f", @"\uf030", @"\uf031", @"\uf032", @"\uf033", @"\uf034", @"\uf035", @"\uf036", @"\uf037", @"\uf038", @"\uf039", @"\uf03a", @"\uf03b", @"\uf03c", @"\uf03d", @"\uf03e", @"\uf040", @"\uf041", @"\uf042", @"\uf043", @"\uf044", @"\uf045", @"\uf046", @"\uf047", @"\uf048", @"\uf049", @"\uf04a", @"\uf04b", @"\uf04c", @"\uf04d", @"\uf04e", @"\uf050", @"\uf051", @"\uf052", @"\uf053", @"\uf054", @"\uf055", @"\uf056", @"\uf057", @"\uf058", @"\uf059", @"\uf05a", @"\uf05b", @"\uf05c", @"\uf05d", @"\uf05e", @"\uf060", @"\uf061", @"\uf062", @"\uf063", @"\uf064", @"\uf065", @"\uf066", @"\uf067", @"\uf068", @"\uf069", @"\uf06a", @"\uf06b", @"\uf06c", @"\uf06d", @"\uf06e", @"\uf070", @"\uf071", @"\uf072", @"\uf073", @"\uf074", @"\uf075", @"\uf076", @"\uf077", @"\uf078", @"\uf079", @"\uf07a", @"\uf07b", @"\uf07c", @"\uf07d", @"\uf07e", @"\uf080", @"\uf081", @"\uf082", @"\uf083", @"\uf084", @"\uf085", @"\uf086", @"\uf087", @"\uf088", @"\uf089", @"\uf08a", @"\uf08b", @"\uf08c", @"\uf08d", @"\uf08e", @"\uf090", @"\uf091", @"\uf092", @"\uf093", @"\uf094", @"\uf095", @"\uf096", @"\uf097", @"\uf098", @"\uf099", @"\uf09a", @"\uf09b", @"\uf09c", @"\uf09d", @"\uf09e", @"\uf0a0", @"\uf0a1", @"\uf0f3", @"\uf0a3", @"\uf0a4", @"\uf0a5", @"\uf0a6", @"\uf0a7", @"\uf0a8", @"\uf0a9", @"\uf0aa", @"\uf0ab", @"\uf0ac", @"\uf0ad", @"\uf0ae", @"\uf0b0", @"\uf0b1", @"\uf0b2", @"\uf0c0", @"\uf0c1", @"\uf0c2", @"\uf0c3", @"\uf0c4", @"\uf0c5", @"\uf0c6", @"\uf0c7", @"\uf0c8", @"\uf0c9", @"\uf0ca", @"\uf0cb", @"\uf0cc", @"\uf0cd", @"\uf0ce", @"\uf0d0", @"\uf0d1", @"\uf0d2", @"\uf0d3", @"\uf0d4", @"\uf0d5", @"\uf0d6", @"\uf0d7", @"\uf0d8", @"\uf0d9", @"\uf0da", @"\uf0db", @"\uf0dc", @"\uf0dd", @"\uf0de", @"\uf0e0", @"\uf0e1", @"\uf0e2", @"\uf0e3", @"\uf0e4", @"\uf0e5", @"\uf0e6", @"\uf0e7", @"\uf0e8", @"\uf0e9", @"\uf0ea", @"\uf0eb", @"\uf0ec", @"\uf0ed", @"\uf0ee", @"\uf0f0", @"\uf0f1", @"\uf0f2", @"\uf0a2", @"\uf0f4", @"\uf0f5", @"\uf0f6", @"\uf0f7", @"\uf0f8", @"\uf0f9", @"\uf0fa", @"\uf0fb", @"\uf0fc", @"\uf0fd", @"\uf0fe", @"\uf100", @"\uf101", @"\uf102", @"\uf103", @"\uf104", @"\uf105", @"\uf106", @"\uf107", @"\uf108", @"\uf109", @"\uf10a", @"\uf10b", @"\uf10c", @"\uf10d", @"\uf10e", @"\uf110", @"\uf111", @"\uf112", @"\uf113", @"\uf114", @"\uf115", @"\uf118", @"\uf119", @"\uf11a", @"\uf11b", @"\uf11c", @"\uf11d", @"\uf11e", @"\uf120", @"\uf121", @"\uf122", @"\uf122", @"\uf123", @"\uf124", @"\uf125", @"\uf126", @"\uf127", @"\uf128", @"\uf129", @"\uf12a", @"\uf12b", @"\uf12c", @"\uf12d", @"\uf12e", @"\uf130", @"\uf131", @"\uf132", @"\uf133", @"\uf134", @"\uf135", @"\uf136", @"\uf137", @"\uf138", @"\uf139", @"\uf13a", @"\uf13b", @"\uf13c", @"\uf13d", @"\uf13e", @"\uf140", @"\uf141", @"\uf142", @"\uf143", @"\uf144", @"\uf145", @"\uf146", @"\uf147", @"\uf148", @"\uf149", @"\uf14a", @"\uf14b", @"\uf14c", @"\uf14d", @"\uf14e", @"\uf150", @"\uf151", @"\uf152", @"\uf153", @"\uf154", @"\uf155", @"\uf156", @"\uf157", @"\uf158", @"\uf159", @"\uf15a", @"\uf15b", @"\uf15c", @"\uf15d", @"\uf15e", @"\uf160", @"\uf161", @"\uf162", @"\uf163", @"\uf164", @"\uf165", @"\uf166", @"\uf167", @"\uf168", @"\uf169", @"\uf16a", @"\uf16b", @"\uf16c", @"\uf16d", @"\uf16e", @"\uf170", @"\uf171", @"\uf172", @"\uf173", @"\uf174", @"\uf175", @"\uf176", @"\uf177", @"\uf178", @"\uf179", @"\uf17a", @"\uf17b", @"\uf17c", @"\uf17d", @"\uf17e", @"\uf180", @"\uf181", @"\uf182", @"\uf183", @"\uf184", @"\uf185", @"\uf186", @"\uf187", @"\uf188", @"\uf189", @"\uf18a", @"\uf18b", @"\uf18c", @"\uf18d", @"\uf18e", @"\uf190", @"\uf191", @"\uf192", @"\uf193", @"\uf194", @"\uf195", @"\uf196"];
    }
    return self;
}

-(void)generateFAImage:(FAIcon)icon withColor:(NSColor*)color{
    NSView *view = [[NSView alloc] initWithFrame:CGRectMake(0, 0, 400, 400)];
    NSTextField *label = [[NSTextField alloc] initWithFrame:CGRectMake(0, 0, 400, 400)];
    [label setBezeled:NO];
    [label setDrawsBackground:NO];
    label.backgroundColor = [NSColor whiteColor];
    [label setEditable:NO];
    [label setSelectable:NO];
    label.font = [NSFont fontWithName:@"FontAwesome" size:240.0];
    label.textColor = color;
    label.stringValue = self.fontCode[icon];
    label.alignment = NSCenterTextAlignment;
    [view addSubview:label];
    
    NSImage *image = [[NSImage alloc] initWithData:[view dataWithPDFInsideRect:view.bounds]];
    //NSData *data = [image TIFFRepresentation];
    NSData *data = [self PNGRepresentationOfImage:image];
    [data writeToFile:kOutput atomically: NO];
}

- (NSData *) PNGRepresentationOfImage:(NSImage *) image {
    // Create a bitmap representation from the current image
    [image lockFocus];
    NSBitmapImageRep *bitmapRep = [[NSBitmapImageRep alloc] initWithFocusedViewRect:NSMakeRect(0, 0, image.size.width, image.size.height)];
    [image unlockFocus];
    return [bitmapRep representationUsingType:NSPNGFileType properties:Nil];
}


@end
