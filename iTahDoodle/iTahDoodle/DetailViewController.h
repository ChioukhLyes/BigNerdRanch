//
//  DetailViewController.h
//  iTahDoodle
//
//  Created by Chioukh Lyes on 01/04/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

