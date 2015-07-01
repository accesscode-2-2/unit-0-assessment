//
//  TestViewController.m
//  TestAssessment
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "TestViewController.h"
#import "Person.h"
#import "Chair.h"


@implementation TestViewController


/*
 This method should return any positive NSInteger
 (hint: cannot be 0)
 */
- (void)shouldReturnAPositiveNSInteger {
    NSInteger j;
    j = 25;
}

/*
 This method should return any negative CGFloat
 (hint: cannot be 0)
 */
- (void)shouldReturnANegativeCGFloat {
    CGFloat i;
    i = -4.5;
}

/*
 This method should return a falsy boolean
 Falsey: Something which evaluates to FALSE.
 */
- (void)shouldReturnAFalseyBool {
    int a = 5;
    int b = 6;
    
    if (a > b){
        printf("YES");
    } else {
        printf("NO");
    }
    
}

/*
 This method should return a single char from a - z
 */
- (void)shouldReturnACharAtoZ {
}
char sample = 'm';
/*
 This method should return the sum of all numbers from
 0 - 99 using a loop (. 1 + 2 + 3 + ... + 98 + 99)
 */
- (NSInteger)shouldReturnSumOf0To100 {
    int sum = 0;
    for (int i = 0; i < 100; i++){
        sum = sum + i;
    }
    printf("%d", sum);
    return 0;
}



/*
 Given a c array (int[]) and a count, return the sum of the numbers within the arr
 (eg. arr[0] + arr[1] ...)
 */
- (NSInteger)shouldReturnSumOfArrayValues:(int *)arr withSize:(int)count {
    
    int myArr[6] = {1,2,3,4,5};
    int sum = 0;
    for (int i = 0; i < 6; i++){
        sum = sum + myArr[i];
    }
    printf("%d", sum);
    return 0;
}

/*
 Provided a C string (array of chars), return the character
 that immediately preceeds the letter q
 (ex. "aionkljajvqlkjaml" would return the letter 'v')
 (hint: while loop)
 evuerqt
 */
- (char)shouldReturnCharBeforeQ:(char *)str {
    //    char str[10] = {
    //    while (char == 'q'){
    //
    
    
    /*
     This method should return the sum of aNumber + bNumber
     */
    - (NSInteger)sumOfAnInteger:(NSInteger)aNumber andAnotherInteger:(NSInteger)bNumber {
        NSInteger a = 5;
        NSInteger b = 5;
        NSInteger sumOfAnInteger = a + b;
        
        printf("%ld", sumOfAnInteger);
        
        
        return 0;
    }
    
    
    /*
     This method should return a YES if aNumber is odd
     */
    - (BOOL)isOdd:(NSInteger)aNumber {
        
        NSInteger numberOne;
        if (numberOne % 2 == 0){
            return NO;
        } else {
            return YES;
            
        }
        
        return NO;
    }
    
    /*
     This method should return YES if aNumber is a multiple of 5
     */
    - (BOOL)isMultipleOfFive:(NSInteger)aNumber {
        
        NSInteger numberTwo;
        if (numberTwo % 5 == 0){
            return YES;
        } else {
            return NO;
            
        }
        
        return NO;
        
        
        
        
        return NO;
    }
    
    /*
     This method should return YES is aNumber is odd and bNumber is even
     */
    - (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber
andThisNumberIsEven:(NSInteger)bNumber {
    
    NSInteger numberThree;   // must be odd
    NSInteger numberFour;    // must be even
    
    if (numberThree % 2 != 0 && numberFour % 2 == 0){
        return YES;
    } else {
        return NO;
    }
    
    
    return NO;
}
    
    /*
     This method should return the name property of the person
     parameter (hint: command + click on class name to jump to the interface.
     */
    - (NSString *)shouldReturnPersonsName:(Person *)person {
        
        Person *newPerson = [[Person alloc] init];
        [newPerson setName:@"Dwayne Johnson"];
        
        [newPerson name];
        
        return @"";
    }
    
    /*
     This method should change the person name to "Ada Lovelace"
     */
    - (void)changePersonsNameToAdaLovelace:(Person *)person {
        
        Person *newPerson = [[Person alloc] init];
        [newPerson setName:@"Dwayne Johnson"];
        
        [newPerson name];
        
        [newPerson setName:@"AdaLoveLace"];
        
    }
    
    /*
     This method should do the following:
     1) Create an instance of Person
     2) Set the person's name to "Santa Clause"
     3) Set the person's age to 1823
     */
    - (Person *)createAndReturnPersonWithSomeProperties {
        
        Person *newPerson = [[Person alloc] init];
        [newPerson setName:@"Dwayne Johnson"];
        [newPerson setAge:39];
        
        
        
        return [[Person alloc] init];
    }
    
    /*
     This method provides you an instance of Chair as a parameter
     1) Create an instance of Person
     2) Tell the person to sit in the chair
     (hint: take a look at the methods on the Person class)
     
     */
    - (void)makePersonSitInChair:(Chair *)chair {
        
        Chair *thePeoplesChair = [[Chair alloc] init];
        Person *theRock = [[Person alloc] init];
        [theRock setName:@"Dwayne Johnson"];
        
        [thePeoplesChair setPerson:theRock];
        
        
        // - (void)setPerson:(Person *)person;
    }
    
    /*
     This method provides you an instance of Person as a parameter
     Send a message to this Person object telling it to stand up
     */
    - (void)makePersonStandUp:(Person *)person {
        
        Chair *thePeoplesChair = [[Chair alloc] init];
        Person *theRock = [[Person alloc] init];
        [theRock setName:@"Dwayne Johnson"];
        
        [thePeoplesChair setPerson:theRock];
        
        [theRock standUp];
        
        //- (void)standUp;
        
        
    }
    
    /*
     Create and return an NSArray containing 6 NSString objects
     https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSArray_Class/
     */
    - (NSArray *)createAndReturnNSArray {
        
        NSArray *boxingLegends = @[@"Sugar Ray Robinson", @"Muhammed Ali", @"Sugar Ray Leonard", @"Mike Tyson", @"Floyd Mayweather Jr.", @"Manny Pacquiao"];
        
        
        
        return [[NSArray alloc] init];
    }
    
    // BONUS
    /*
     Update the array item at index 4 to be the name of the person passed
     as a parameter
     https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSMutableArray_Class/
     */
    - (void)changeValueOfIndexFourInArray:(NSMutableArray *)arr
toPersonsName:(Person *)person {
    
    NSMutableArray *boxingLegends = [NSMutableArray arrayWithObjects:@"Sugar Ray Robinson", @"Muhammed Ali", @"Sugar Ray Leonard", @"Mike Tyson", @"Floyd Mayweather Jr.", @"Manny Pacquiao", nil];
    
    Person *GennadyGolovkin = [[Person alloc] init];
    [GennadyGolovkin setName:@"Gennady Golovkin"];
    
    [boxingLegends replaceObjectAtIndex:4 withObject:GennadyGolovkin];
    
}
    
    // BONUS
    /*
     Given a string, return the string repeated x times
     Example: mike, 5 => mikemikemikemikemike
     https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSMutableString_Class/
     */
    
    - (NSString *)repeatString:(NSString *)str
numberOfTimes:(NSInteger)x {
    
    NSMutableString *bob = [[NSMutableString alloc]init];
    
    
    
}
    
    NSLog(bob);
    
    
    return @"";
}

// BONUS
/*
 Given an array of numbers, sum each number in the array UNTIL
 the sum is greater than 1050. The returned value of this method
 should never be greater than 1050.
 (ex: [500, 500, 500] returns 1000)
 (ex: [200, 500, 100, 400] returns 800)
 */
- (int)returnSumWhileSumIsLessThan1050:(int *)arr {
    return 0;
}

@end
