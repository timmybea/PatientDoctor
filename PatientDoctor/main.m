//
//  main.m
//  PatientDoctor
//
//  Created by Tim Beals on 2016-11-03.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "SymptomContractor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SymptomContractor *symptomContractor = [[SymptomContractor alloc] init];
        Doctor *doctor = [[Doctor alloc] initWithName:@"Doctor Bob" AndSpecialization:@"cardiology"];
        Patient *patient = [[Patient alloc] initWithName:@"Sally" Age:52 AndHasValidHealthCard:YES];
        [patient getSick:symptomContractor];
        [patient askDoctor:doctor];
        [doctor askPatient:patient];
        [patient requestAppointment:doctor];
        
        
            }
    return 0;
}
