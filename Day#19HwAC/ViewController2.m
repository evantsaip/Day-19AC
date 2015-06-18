//
//  ViewController2.m
//  Day#19HwAC
//
//  Created by lalaleelala on 6/16/15.
//  Copyright (c) 2015 lalaleelala. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    count = 0;
    indext1 = 6;
    
   //IMAGE
    UIImage *image0 = [UIImage imageNamed:@"Image0"];
    UIImage *image1 = [UIImage imageNamed:@"Image1"];
    UIImage *image2 = [UIImage imageNamed:@"Image2"];
    UIImage *image3 = [UIImage imageNamed:@"Image3"];
    UIImage *image4 = [UIImage imageNamed:@"Image4"];
    UIImage *image5 = [UIImage imageNamed:@"Image5"];
    ///
    UIImage *image6 = [UIImage imageNamed:@"Image6"];
    UIImage *image7 = [UIImage imageNamed:@"Image7"];
    UIImage *image8 = [UIImage imageNamed:@"Image8"];
    UIImage *image9 = [UIImage imageNamed:@"Image9"];
    UIImage *image10 = [UIImage imageNamed:@"Image10"];
    UIImage *image11 = [UIImage imageNamed:@"Image11"];
    imageArray = [[NSArray alloc]initWithObjects:image0,image1,image2,image3,image4,image5,image6,image7,image8,image9,image10,image11, nil];
    //info
    info = @[@"TMI 駐場創業家，曾任 Yahoo！亞太區廣告業務總監。出生香港、麻省理工學院 Sloan 商學院 MBA 畢業，芝加哥 Ruby on Rails 課程研習、在美國，北京，香港有多次 Startup 經驗",@"清大物理系唸完換台大國企所，熱愛棒球，喜歡喝咖啡、看星星、挑戰新事物，就算買不起 Google Glass 也要想辦法跟別人借來玩一玩。喜歡的一句話是：「人生就像騎腳踏車，為了保持平衡，必須不斷前進。」",@"政大哲學系、中正心理所畢業。在中國大陸闖蕩三年。認為教育就是從人出發的一種用心交流，希望回歸教育，凝聚最真摯的正向能量，協助講師找到最可發揮的舞台，培育學員找到新的方向",@"卡內基美隆大學藝術管理碩士，從戲劇、藝術管理到數位行銷，不變的是對這個世界的好奇心與對生活的熱情。熱愛行銷與學習，持續關注創業、社群與網路發展。努力讓更多人知道 ALPHA Camp 的好，希望這世界因為自己的存在而美好一點點",@"Ruby on Rails 實戰聖經作者，前 Faria Systems CTO，多次 COSCUP、OSDC.TW、台灣與中國RubyConf、日本 RubyKaigi 大會講者",@"政大財政系，在 Startup 圈闖蕩的小朋友，從大四開始自學 Web Development ，是 Rails 的初學者 ，立志成為行銷和技術兼備的人才，目前在 ALPHA Camp 愉快的玩耍中",@"Ruby on Rails 實戰聖經作者，前 Faria Systems CTO，多次 COSCUP、OSDC.TW、台灣與中國RubyConf、日本 RubyKaigi 大會講者",@"GetProperly 共同創辦人，台大資管MBA，史丹佛大學電腦科學碩士，旅居矽谷，愛好旅行、美食和科技",@"FUNTEK軟體架構師，5945呼叫師傅共同創辦人，前CyberLink資深工程師。作品Picaca獲選為Apple featured app (2013/08)，暢銷書《iPhone SDK 3 Programming 應用程式開發》作者",@"App 開發顧問. 日傑資訊負責人，前愛料理 App 開發隊長，寫過 LovingHeart for iOS, for Android, 愛料理 for iPhone, 愛料理 for iPad, Mr. Plurk for iOS 等知名五星等級 App",@"暢銷書 App 程式設計入門 - iPhone. iPad作者，MacToday App 開發專欄作家，FUNTEK 首席 iOS App 工程師，點點數位 iOS App 顧問，PChome Mac 基礎教室專欄作家，開發 Wealthy、LOCOMO 運動記錄等知名App",@"天橋科技視覺設計總監，資策會講師，資深前端設計師，致力於CSS技術研究與教學"];
    //Name
    name = @[@"Bernard Chan", @"Tim Du", @"Ariel Chen", @"Evelyn Chang", @"Ihower Chang", @"Benson Sun",@"iHower",@"Shyne Tseng",@"Brian Fang",@"Edward Chiang",@"Peter Pan",@"Amos Lee"];
    //Text
    dict = @{@"image": imageArray, @"name": name, @"info": info };
    //change pic
    [self changePic];
    // Do any additional setup after loading the view.
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)actionPrevious:(id)sender {
    if (_segment.selectedSegmentIndex == 0) {
        //core member
        
        //[self changePic];
        if (count > 0) {
            NSLog(@"%d", count);
            [self changePic];
            count--;
        }
        else
            count = 5;
        NSLog(@"%d", count);
        [self changePic];
    }
    
    else {
        //teacher
        
        if (indext1 > 5) {
            [self changePic2];
            indext1--;
            NSLog(@"%d",indext1);
        }
        else {
            indext1 = 11;
            [self changePic2];
            NSLog(@"%d",indext1);
        }
    }

}
- (IBAction)actionNext:(id)sender {
        //change pic
    if (_segment.selectedSegmentIndex == 0) {
        //core member

        //[self changePic];
        if (count < 5) {
            NSLog(@"%i",count);
            [self changePic];
            count++;
        }
        else
            count = 0;
            NSLog(@"%i",count);
            [self changePic];
        }

    else {
        //teacher
        
        if (indext1 < 11) {
            [self changePic2];
            indext1++;
            NSLog(@"%d",indext1);
        }
        else {
            indext1 = 6;
            [self changePic2];
            
        }
    }
}


    

    


- (void)changePic {

    self.lable1.text = name[count];
    self.image.image = imageArray[count];
    self.txtView.text = info[count];
    NSLog(@"count = %i", count);
}

- (void)changePic2 {
    self.lable1.text = name[indext1];
    self.image.image = imageArray[indext1];
    self.txtView.text = info[indext1];
}


    


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)valueSegment:(id)sender {
    if (_segment.selectedSegmentIndex == 1) {
        [self changePic2];
    }
    else
        [self changePic];
    
    
}
@end
