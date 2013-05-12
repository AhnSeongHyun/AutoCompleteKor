//
//  ViewController.m
//  AutoCompleteKOR
//
//  Created by an seonghyun on 13. 5. 11..
//  Copyright (c) 2013년 INDF. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize acTableView, acSearchBar;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    acWordArr = [[NSMutableArray alloc]init];
    acMng = [[AutoCompleteMng alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UISearchBarDelegate

- (BOOL)searchBar:(UISearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
	BOOL rtnValue = YES;
    
    NSString *currentInputText = text;
    NSString *existText = searchBar.text;
    
    [acWordArr removeAllObjects];
    
    
    if(currentInputText.length !=0 || existText.length != 1)
    {
        NSString *searchKeyword = [NSString stringWithFormat:@"%@%@", existText, currentInputText];
        
        [acWordArr addObjectsFromArray:[acMng search:searchKeyword]];
        
    }
    [acTableView reloadData];
    return rtnValue;
}


#pragma mark UITableViewDataSource, UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    acSearchBar.text =  [acWordArr objectAtIndex:indexPath.row];
    
    [acWordArr removeAllObjects];
    [acTableView reloadData];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    int cellHeight = 40;
    return cellHeight;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"CELL";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [acWordArr objectAtIndex:indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [acWordArr count];
}


@end
