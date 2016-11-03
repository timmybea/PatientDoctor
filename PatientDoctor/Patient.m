//
//  Patient.m
//  PatientDoctor
//
//  Created by Tim Beals on 2016-11-03.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "Patient.h"
#import "SymptomContractor.h"

@implementation Patient

-(instancetype)initWithName:(NSString*)name Age:(int)age AndHasValidHealthCard:(BOOL)hasValidHealthCard {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _hasValidHealthCard = hasValidHealthCard;
        _allPrescriptions = [[NSMutableArray alloc] init];
}
    return self;
}

-(void)getSick:(SymptomContractor*)symptomContractor {
    self.symptom = [symptomContractor symptomGenerator:self];
    NSLog(@"%@ has %@!", self.name, self.symptom);
}

-(void)askDoctor:(Doctor*)doctor {
    NSLog(@"The doctor's name is %@", doctor.name);
    NSLog(@"The doctor's specialization is %@", doctor.specialization);
}

-(void)requestAppointment:(Doctor*)doctor {
    [doctor makeAppointment:self];
}







@end
