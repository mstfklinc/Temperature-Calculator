//
//  ViewController.m
//  Temperature Calculator
//
//  Created by Mustafa Kılınç on 16.09.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)switchConversion:(id)sender {
    
    if(self.segControl.selectedSegmentIndex == 0){
        self.enterLabel.text = @"Enter Fahreheit";
        self.enterTextField.text = @"";
        self.outputLabel.text = @"0 Celcius";
    }
    
    if(self.segControl.selectedSegmentIndex == 1){
        self.enterLabel.text = @"Enter Celcius";
        self.enterTextField.text = @"";
        self.outputLabel.text = @"0 Fahrenheit";
    }
}

- (IBAction)convert:(id)sender {
    
    if(self.segControl.selectedSegmentIndex == 0){
        
        double fahrenheit = [self.enterTextField.text doubleValue];
        double celsius = (fahrenheit - 32) / 1.8;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%4.2f", celsius];
        
        if(celsius > 180){
            self.termometherImage.image = [UIImage imageNamed:@"Temp9"];
        }
        else if(celsius > 160){
            self.termometherImage.image = [UIImage imageNamed:@"Temp8"];
        }
        else if(celsius > 140){
            self.termometherImage.image = [UIImage imageNamed:@"Temp7"];
        }
        else if(celsius > 120){
            self.termometherImage.image = [UIImage imageNamed:@"Temp6"];
        }
        else if(celsius > 100){
            self.termometherImage.image = [UIImage imageNamed:@"Temp5"];
        }
        else if(celsius > 80){
            self.termometherImage.image = [UIImage imageNamed:@"Temp4"];
        }
        else if(celsius > 60){
            self.termometherImage.image = [UIImage imageNamed:@"Temp3"];
        }
        else if(celsius > 40){
            self.termometherImage.image = [UIImage imageNamed:@"Temp2"];
        }
        else if(celsius < 40){
            self.termometherImage.image = [UIImage imageNamed:@"Temp1"];
        }
    }
    
    if(self.segControl.selectedSegmentIndex == 1){
        
        double celsius = [self.enterTextField.text doubleValue];
        double fahrenheit = (celsius * 1.8) + 32;
        self.outputLabel.text = [NSString stringWithFormat:@"%4.2f", fahrenheit];
        
        if(fahrenheit > 180){
            self.termometherImage.image = [UIImage imageNamed:@"Temp9"];
        }
        else if(fahrenheit > 160){
            self.termometherImage.image = [UIImage imageNamed:@"Temp8"];
        }
        else if(fahrenheit > 140){
            self.termometherImage.image = [UIImage imageNamed:@"Temp7"];
        }
        else if(fahrenheit > 120){
            self.termometherImage.image = [UIImage imageNamed:@"Temp6"];
        }
        else if(fahrenheit > 100){
            self.termometherImage.image = [UIImage imageNamed:@"Temp5"];
        }
        else if(fahrenheit > 80){
            self.termometherImage.image = [UIImage imageNamed:@"Temp4"];
        }
        else if(fahrenheit > 60){
            self.termometherImage.image = [UIImage imageNamed:@"Temp3"];
        }
        else if(fahrenheit > 40){
            self.termometherImage.image = [UIImage imageNamed:@"Temp2"];
        }
        else if(fahrenheit < 40){
            self.termometherImage.image = [UIImage imageNamed:@"Temp1"];
        }
        
    }
    
    [self resignFirstResponder];
    

    
    
}
@end
