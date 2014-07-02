//
//  MenuSkypeViewController.h
//  MenuSkype
//
//  Created by Charles-Hubert Basuiau on 01/07/2014.
//  Copyright (c) 2014 Charles-Hubert Basuiau. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MENU_HEIGHT 44.0
#define FONT_SIZE   38.0
#define MARGE       10.0

typedef enum : NSInteger {
    MenuTop,
    MenuBottom
} MenuPosition;

@interface MenuSkypeViewController : UIViewController

-(void)setMenuPosition:(MenuPosition)position;
-(void)setMenuItems:(NSArray *)menuItems contentItems:(NSArray *)contentItems;

@end
