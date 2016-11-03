//
//  Doctor.m
//  PatientDoctor
//
//  Created by Tim Beals on 2016-11-03.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@interface Doctor ()

@property (nonatomic) NSMutableSet *acceptedPatients;

@end

@implementation Doctor

-(instancetype)initWithName:(NSString*)name AndSpecialization:(NSString*)specialization {
    self = [super init];
    if (self) {
        _acceptedPatients = [[NSMutableSet alloc] init];
        _appointmentBook = [[NSMutableArray alloc] init];
        _name = name;
        _specialization = specialization;
    }
    return self;
}

-(void)askPatient:(Patient*)patient {
    NSLog(@"The patient's name is %@", patient.name);
    NSLog(@"The patient is %d years old", patient.age);
}


-(BOOL)isYourPatient:(Patient*)patient {
    if ([self.acceptedPatients containsObject:patient]) {
        self.yourPatient = YES;
    } else {
        self.yourPatient = NO;
    }
    return self.yourPatient;
}

-(void)makeAppointment:(Patient*)patient {
    if(YES == [self isYourPatient:patient] == YES) {
        NSLog(@"You may have an appointment");
        [self.appointmentBook addObject:patient.name];
        NSLog(@"AppointmentBook: %@", self.appointmentBook);

    } else {
        if (patient.hasValidHealthCard == YES) {
            NSLog(@"You may be added to my accepted patients and have an appointment");
            [self.acceptedPatients addObject:patient];
            [self.appointmentBook addObject:patient.name];
            NSLog(@"AppointmentBook: %@", self.appointmentBook);
        } else {
            NSLog(@"You don't have a valid health card and cannot be added to the list of patients");
        }
    }
}




@end
