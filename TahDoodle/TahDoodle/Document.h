//
//  Document.h
//  TahDoodle
//
//  Created by Chioukh Lyes on 01/04/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument <NSTableViewDataSource>

@property (nonatomic) NSMutableArray *tasks;
@property (nonatomic) IBOutlet NSTableView *taskTable;

- (IBAction)addTask:(id)sender;


@end

