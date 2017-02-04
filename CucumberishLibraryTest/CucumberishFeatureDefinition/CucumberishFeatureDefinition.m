//
//  CucumberishFeatureDefinition.m
//  CucumberishFeatureDefinition
//
//  Created by David Siebecker on 7/26/16.
//  Copyright © 2016 Ahmed Ali. All rights reserved.
//

#import "Cucumberish.h"
#import "CCIFeaturesManager.h"
#import "CCIFeature.h"
#import "CucumberFeatureSteps.h"

//#import <Cucumberish/Cucumberish.h> if installed using cocoapods
__attribute__((constructor))
void CucumberishInit()
{
    [[Cucumberish instance] setPrettyNamesAllowed:YES];
    [CucumberFeatureSteps new];
    //Optional step, see the comment on this property for more information
    [Cucumberish instance].fixMissingLastScenario = NO;
    //Tell Cucumberish the name of your features folder and let it execute them for you...
    NSBundle * bundle = [NSBundle bundleForClass:[Cucumberish class]];
    [Cucumberish executeFeaturesInDirectory:@"Features" fromBundle:bundle includeTags:nil excludeTags:nil];
}
