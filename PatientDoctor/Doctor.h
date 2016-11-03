//
//  Doctor.h
//  PatientDoctor
//
//  Created by Tim Beals on 2016-11-03.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *specialization;
@property (nonatomic) BOOL yourPatient;
@property (nonatomic) NSMutableSet *appointmentBook;


-(instancetype)initWithName:(NSString*)name AndSpecialization:(NSString*)specialization;
-(void)askPatient:(Patient*)patient;
-(void)makeAppointment:(Patient*)patient;
-(BOOL)isYourPatient:(Patient*)patient;
-(void)treatPatient:(Patient*)patient;

@end
