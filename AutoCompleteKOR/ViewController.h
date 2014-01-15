//
//  ViewController.h
//  AutoCompleteKOR
//
//  Created by an seonghyun on 13. 5. 11..
//  Copyright (c) 2013년 INDF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AutoCompleteMng.h"
#import "NSStrUtils.h"

@interface ViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate>
{
    NSMutableArray  *acWordArr;
    AutoCompleteMng *acMng;
    
}

@property (nonatomic, strong) IBOutlet UITableView  *acTableView;
@property (nonatomic, strong) IBOutlet UISearchBar  *acSearchBar;


@end
