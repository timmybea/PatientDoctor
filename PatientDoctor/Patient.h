//
//  Patient.h
//  PatientDoctor
//
//  Created by Tim Beals on 2016-11-03.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
@class SymptomContractor;

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic, assign) int age;
@property (nonatomic) BOOL hasValidHealthCard;
@property (nonatomic) NSString *symptom;
@property (nonatomic) NSMutableArray *allPrescriptions;

-(instancetype)initWithName:(NSString*)name Age:(int)age AndHasValidHealthCard:(BOOL)hasValidHealthCard;
-(void)getSick:(SymptomContractor*)symptomContractor;
-(void)askDoctor:(Doctor*)doctor;
-(void)requestAppointment:(Doctor*)doctor;

@end
