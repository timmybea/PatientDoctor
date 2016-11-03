//
//  SymptomContractor.h
//  PatientDoctor
//
//  Created by Tim Beals on 2016-11-03.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface SymptomContractor : NSObject

@property (nonatomic) NSArray *symptoms;

-(NSString*)symptomGenerator:(Patient*)patient;

@end
