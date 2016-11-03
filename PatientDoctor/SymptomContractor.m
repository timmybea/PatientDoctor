//
//  SymptomContractor.m
//  PatientDoctor
//
//  Created by Tim Beals on 2016-11-03.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "SymptomContractor.h"
#import "Patient.h"

@implementation SymptomContractor

-(instancetype)init {
    self = [super init];
    if(self) {
        _symptoms = @[@"fever", @"coughing", @"vomitting", @"bruises"];
    }
    return self;
}

-(NSString*)symptomGenerator:(Patient*)patient {
    int lowerBound = 0;
    int upperBound = 3;
    int rndValue = lowerBound + (arc4random() % (upperBound - lowerBound));
    
    return [self.symptoms objectAtIndex:rndValue];
}

@end
