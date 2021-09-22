//
//  ViewController.h
//  Temperature Calculator
//
//  Created by Mustafa Kılınç on 16.09.2021.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *enterTextField;
@property (weak, nonatomic) IBOutlet UIImageView *termometherImage;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segControl;
@property (weak, nonatomic) IBOutlet UILabel *enterLabel;


- (IBAction)convert:(id)sender;
- (IBAction)switchConversion:(id)sender;

@end

