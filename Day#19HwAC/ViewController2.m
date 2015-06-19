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
    indext2 = 12;
    UISwipeGestureRecognizer *swipeGR2 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft)];
    swipeGR2.delegate = self;
    swipeGR2.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeGR2];
    
    
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
    //校友
    UIImage *image12 = [UIImage imageNamed:@"Image12"];
    UIImage *image13 = [UIImage imageNamed:@"Image13"];
    UIImage *image14 = [UIImage imageNamed:@"Image14"];
    UIImage *image15 = [UIImage imageNamed:@"Image15"];
    UIImage *image16 = [UIImage imageNamed:@"Image16"];
    UIImage *image17 = [UIImage imageNamed:@"Image17"];
    UIImage *image18 = [UIImage imageNamed:@"Image18"];

        imageArray = [[NSArray alloc]initWithObjects:image0,image1,image2,image3,image4,image5,image6,image7,image8,image9,image10,image11,image12,image13,image14,image15,image16,image17,image18,nil];
    //info
    info = @[@"TMI 駐場創業家，曾任 Yahoo！亞太區廣告業務總監。出生香港、麻省理工學院 Sloan 商學院 MBA 畢業，芝加哥 Ruby on Rails 課程研習、在美國，北京，香港有多次 Startup 經驗",@"清大物理系唸完換台大國企所，熱愛棒球，喜歡喝咖啡、看星星、挑戰新事物，就算買不起 Google Glass 也要想辦法跟別人借來玩一玩。喜歡的一句話是：「人生就像騎腳踏車，為了保持平衡，必須不斷前進。」",@"政大哲學系、中正心理所畢業。在中國大陸闖蕩三年。認為教育就是從人出發的一種用心交流，希望回歸教育，凝聚最真摯的正向能量，協助講師找到最可發揮的舞台，培育學員找到新的方向",@"卡內基美隆大學藝術管理碩士，從戲劇、藝術管理到數位行銷，不變的是對這個世界的好奇心與對生活的熱情。熱愛行銷與學習，持續關注創業、社群與網路發展。努力讓更多人知道 ALPHA Camp 的好，希望這世界因為自己的存在而美好一點點",@"Ruby on Rails 實戰聖經作者，前 Faria Systems CTO，多次 COSCUP、OSDC.TW、台灣與中國RubyConf、日本 RubyKaigi 大會講者",@"政大財政系，在 Startup 圈闖蕩的小朋友，從大四開始自學 Web Development ，是 Rails 的初學者 ，立志成為行銷和技術兼備的人才，目前在 ALPHA Camp 愉快的玩耍中",@"Ruby on Rails 實戰聖經作者，前 Faria Systems CTO，多次 COSCUP、OSDC.TW、台灣與中國RubyConf、日本 RubyKaigi 大會講者",@"GetProperly 共同創辦人，台大資管MBA，史丹佛大學電腦科學碩士，旅居矽谷，愛好旅行、美食和科技",@"FUNTEK軟體架構師，5945呼叫師傅共同創辦人，前CyberLink資深工程師。作品Picaca獲選為Apple featured app (2013/08)，暢銷書《iPhone SDK 3 Programming 應用程式開發》作者",@"App 開發顧問. 日傑資訊負責人，前愛料理 App 開發隊長，寫過 LovingHeart for iOS, for Android, 愛料理 for iPhone, 愛料理 for iPad, Mr. Plurk for iOS 等知名五星等級 App",@"暢銷書 App 程式設計入門 - iPhone. iPad作者，MacToday App 開發專欄作家，FUNTEK 首席 iOS App 工程師，點點數位 iOS App 顧問，PChome Mac 基礎教室專欄作家，開發 Wealthy、LOCOMO 運動記錄等知名App", @"天橋科技視覺設計總監，資策會講師，資深前端設計師，致力於CSS技術研究與教學", @"渴望突破體制內教育的大三生，在自我探索的過程中夾雜著迷惘與孤單，靠著網路的學習資源、媒體、各式專業書籍，逐漸理出自己的未來規劃，因此決定報名 Bootcamp，希望能藉由課程接觸網路新創的世界，培養數位行銷的專業能力，朝自己的夢想邁進。", @"台大獸醫研究所畢業，從台北到南部從事大動物獸醫師的工作，在全台灣各個牧場出診照顧乳牛，但是在傳統的行業當中卻期待能夠擁有新創的思維，開啟一條不一樣的路。來到 ALPHA Camp 學習一顆靈活的行銷頭腦，期待成為改變產業的橋樑。", @"伊利諾大學香檳分校物理系，退伍後放棄到美國念研究所的機會，專心投注於自己開發的通訊輔助 app，希望透過 ALPHA Camp 認識更多有志創業的夥伴，激盪彼此想法，並學習數位行銷為未來的創業之路做準備。", @"交大經營管理所，在學時期即積極於外商實習與參加行銷競賽，並於德國交換學生一年，不斷找尋人生方向。上份工作為政府智庫任職研究員，工作一陣子後發現自己仍對行銷情有獨鍾，毅然決定轉換跑道，報名 Bootcamp 培養數位行銷實戰能力。自 ALPHA Camp 畢業後，現已加入進駐 Appworks 的創業團隊擔任行銷專員。", @"25歲畢業於澳洲昆士蘭大學微波通信工程博士，現任職廣達擔任技術專案經理，有十年的無線網通與消費性電子硬體經驗，因親身感參與並深深受到麻省理工學院「One Laptop per Child」計畫的啟發，決心朝向物聯網產業邁進，並做出更實用的產品來幫助第三世界弱勢國家得到更好的生活品質。希望在 ALPHA Camp 學習數位行銷知識，以逐漸落實這個人生志業。", @"工程師和 PM 背景。德國 ESMT 商學院與北京大學光華管理學院 MBA。資深宅男、無國界浪人、社會企業中毒者。因為不小心在創業競賽中獲得佳績，誤打誤撞地走上創業的不歸路。希望藉由在 ALPHA Camp 所習得的 Web 網站開發技能，親手打造產品。有朝一日，實現「魯蛇逆襲」的夢想。", @"台大會計系，原本在知名新創公司擔任產品規劃經理，隨著工作經驗增長，深刻體認到持續進修的重要性，在與公司主管充分溝通後，選擇離職來到 ALPHA Camp 學習 iOS Development，經過10週的學習，現已成功轉職成為新創公司的 app 工程師。", @"CS背景畢業，退伍後擔任PHP程式設計師，由於對創業有濃厚興趣而來到 ALPHA Camp 重新歸零學習，在專業老師帶領下，學習如何從零開始打造產品和全端開發技能，並認識到更多想創業的夥伴，夢想打造出有影響力的產品。自實戰營畢業後，現已加入新加坡新創團隊擔任實習工程師。"];
    //Name
    name = @[@"Bernard Chan", @"Tim Du", @"Ariel Chen", @"Evelyn Chang", @"Ihower Chang", @"Benson Sun",@"iHower",@"Shyne Tseng",@"Brian Fang",@"Edward Chiang",@"Peter Pan",@"Amos Lee",@"Abby Hsu", @"Kung", @"Anthony Liu",@"Pihan Hsu",@"Winnie Huang", @"Eddie Tsai", @"Reinhardt Lin", @"David Wang"];
    //Text
    dict = @{@"image": imageArray, @"name": name, @"info": info };
    //change pic
    [self changePic];
    // Do any additional setup after loading the view.
    
    
    UISwipeGestureRecognizer *swipeGR = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeRight)];
    swipeGR.delegate = self;
    swipeGR.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeGR];
    
    
    
}
- (void)swipeLeft {
    if (_segment.selectedSegmentIndex == 0) {
        //core member
        
        //[self changePic];
        if (count == 0) {
            count = 5;
            [self changePic];
            count--;
        }
        
      else if (count > 0) {
            NSLog(@"%d", count);
            [self changePic];
            count--;
        }
        else
            count = 5;
        NSLog(@"%d", count);
        [self changePic];
    }
    
    else if(_segment.selectedSegmentIndex == 1){
        //teacher
        
        if (indext1 == 5) {
            indext1 = 11;
            [self changePic2];
            indext1--;
            NSLog(@"%d one",indext1);
        }
        
        else if (indext1 > 6 ) {
            [self changePic2];
            indext1--;
            NSLog(@"%d two",indext1);
        }
        else {
            indext1 = 11;
            [self changePic2];
            indext1 --;
            NSLog(@"%d three",indext1);
        }
    }
    else {
        /////teacher
        if (indext2 == 11) {
            indext2 = 18;
            [self changePic3];
            indext2 --;
            NSLog(@"%d one",indext2);
        }
       else if (indext2 > 11) {
            [self changePic3];
            indext2--;
            NSLog(@"%d two",indext2);

        }
    }
    

}

- (void)swipeRight {
    
    
    if (_segment.selectedSegmentIndex == 0) {
        //core member
        
        //[self changePic];
        
        if (count == 0) {
            self.lable1.text = name[1];
            self.image.image = imageArray[1];
            self.txtView.text = info[1];
            count+= 2;
        }
        else if ((count <= 5)&&(count != 0)) {
            NSLog(@"%i",count);
            [self changePic];
            count++;
        }
        
        else {
            count = 0;
            NSLog(@"%i",count);
            [self changePic];
        }
    }
    
    else if(_segment.selectedSegmentIndex == 1){
        //teacher
        if (indext1 == 6) {
            indext1 = 7;
            [self changePic2];
            NSLog(@"%d",indext1);
            indext1++;
        }
        else if ((indext1 < 11)&&(indext1 != 6)) {
            [self changePic2];
            indext1++;
            NSLog(@"%d",indext1);
        }
        else {
            indext1 = 6;
            [self changePic2];
            NSLog(@"%d",indext1);
            
        }
    }
    else {
        /////BOOTCAMP
        
        if (indext2 == 12) {
            indext2 = 13;
            [self changePic3];
            NSLog(@"%d",indext2);
            indext2++;
        }
        else if ((indext2 < 18) && (indext2 != 12)) {
            [self changePic3];
            ++indext2;
            NSLog(@"%d",indext2);
        }
        else {
            indext2 = 12;
            [self changePic3];
            NSLog(@"%d",indext2);
        }
    }

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)actionPrevious:(id)sender {
    [self swipeLeft];
    
}
- (IBAction)actionNext:(id)sender {
        //change pic
    [self swipeRight];
}


    

    


- (void)changePic {

    self.lable1.text = name[count];
    self.image.image = imageArray[count];
    self.txtView.text = info[count];
//    NSLog(@"count = %i", count);
}

- (void)changePic2 {
    self.lable1.text = name[indext1];
    self.image.image = imageArray[indext1];
    self.txtView.text = info[indext1];
}

- (void)changePic3 {
    self.lable1.text = name[indext2];
    self.image.image = imageArray[indext2];
    self.txtView.text = info[indext2];
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
    else if (_segment.selectedSegmentIndex == 2){
        [self changePic3];
    }
    else {
        [self changePic];
    }
    
}
@end
