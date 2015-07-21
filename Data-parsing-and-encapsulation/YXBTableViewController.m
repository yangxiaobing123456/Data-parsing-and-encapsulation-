//
//  YXBTableViewController.m
//  Data-parsing-and-encapsulation
//
//  Created by kpkj-ios on 15/7/21.
//  Copyright (c) 2015年 kpkj-ios. All rights reserved.
//

#import "YXBTableViewController.h"
#import "YXBModel.h"
#import "YXBHttpTool.h"
#import "MJExtension.h"
@interface YXBTableViewController ()

@end

@implementation YXBTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
//    NSString *path=[[NSBundle mainBundle]pathForResource:@"Json" ofType:@"json"];
//    NSLog(@"%@",path);
//    
//    NSArray  *arr=[NSArray arrayWithContentsOfFile:path];
//    NSString *str=[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
//    NSLog(@"%@",arr);
    NSMutableDictionary *dic=[NSMutableDictionary dictionaryWithObjectsAndKeys:@"100243",@"uid",@"0",@"disid",@"-1",@"role", nil];
    [YXBHttpTool postWithURL:@"http://121.40.149.58:8080/api/find/list.do" params:dic success:^(id responseObject) {
        NSLog(@"%@",responseObject);
        YXBModel *model=[YXBModel objectWithKeyValues:responseObject];
        
        for (NSDictionary *dic in model.advertises) {
            

            YXBAdvertises *user=[YXBAdvertises objectWithKeyValues:dic];
            NSLog(@"%@",user.location);
            NSLog(@"%d",user.ID);
           // NSLog(@"%@",user.name);
        }
        
        
    } failure:^(NSError *error) {
        
        
    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
