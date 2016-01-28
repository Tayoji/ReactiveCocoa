//
//  View1Controller.m
//  ReactiveCocoa
//
//  Created by Tayoji on 16/1/21.
//  Copyright © 2016年 Tayoji. All rights reserved.
//
#import "TableViewCell.h"
#import "View1Controller.h"
@interface View1Controller ()<UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate>
@property (nonatomic,strong)NSMutableArray * dateArr;
@property (nonatomic,strong)NSMutableArray * imgArr;
@property (nonatomic,strong)NSMutableArray * nameArr;
@end

@implementation View1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"朋友圈";
    [self dateInit];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleBlackOpaque;
    [self createView];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.3];
//    [self create];
    
    self.view.backgroundColor=[UIColor whiteColor];
     [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,nil]];
    UIButton * buton = [UIButton buttonWithType:UIButtonTypeCustom];
    [buton setImage:[UIImage imageNamed:@"iconfont-camera"] forState:UIControlStateNormal];
    buton.frame= CGRectMake(0, 0, 25, 25);
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:buton];
}
-(void)dateInit
{
    self.nameArr=[[NSMutableArray alloc] initWithArray:@[@"睡不醒",@"结束的开始",@"本间",@"最初的最初",@"fighter",@"吴淞",@"铭",@"。。。",@"三年之痛",@"文艺的爱",@"李忠",@"哟话好好说",@"六月的风",@"梦中人",@"郁郁",@"DYJ",@"李勇",@"小情趣",@"宁晋",@"lovex"]];
    self.dateArr=[[NSMutableArray alloc] initWithArray:@[@"1分钟前",@"1分钟前",@"10分钟前",@"12分钟前",@"15分钟前",@"18分钟前",@"21分钟前",@"22分钟前",@"22分钟前",@"25分钟前",@"27分钟前",@"31分钟前",@"35分钟前",@"39分钟前",@"40分钟前",@"42分钟前",@"44分钟前",@"44分钟前",@"47分钟前",@"50分钟前"]];
}
-(void)createView
{
    UITableView * tableView =[[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 640-64-40) style:UITableViewStylePlain];
    tableView.dataSource=self;
    tableView.delegate=self;
    tableView.rowHeight=112;
    tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    [tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
    [self.view addSubview:tableView];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    cell.header.image=[UIImage imageNamed:[NSString stringWithFormat:@"%ld",indexPath.row+21]];
    cell.name.text=self.nameArr[indexPath.row];
    cell.dateLabel.text=self.dateArr[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(RACSignal *)fetchTextFieldText
{
    return [[self rac_signalForSelector:@selector(clickbackItem:)] doNext:^(id x) {
        
    }];
}
- (IBAction)clickbackItem:(UIBarButtonItem *)sender {
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
