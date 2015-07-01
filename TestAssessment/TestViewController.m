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
- (NSInteger)shouldReturnAPositiveNSInteger {
    
    NSInteger num = 10;
    
    return num;
    
}

/*
    This method should return any negative CGFloat 
    (hint: cannot be 0)
 */
- (CGFloat)shouldReturnANegativeCGFloat {
    
    CGFloat num = -10.01;
    
    return num;
    
}

/*
    This method should return a falsy boolean
    Falsey: Something which evaluates to FALSE.
 */
- (BOOL)shouldReturnAFalseyBool {
    
    BOOL test = NO;
    
    return test;
    
}

/*
    This method should return a single char from a - z
 */
- (char)shouldReturnACharAtoZ {
    
    char test = 'c';
    
    return test;
}

/*
    This method should return the sum of all numbers from 
    0 - 99 using a loop (. 1 + 2 + 3 + ... + 98 + 99)
 */
- (NSInteger)shouldReturnSumOf0To100 {
    
    NSInteger i;
    NSInteger sum;
    
    for (i = 0; i <= 99; i++) {
        sum += i;
    }
    return sum;
}

/*
    Given a c array (int[]) and a count, return the sum of the numbers within the arr
    (eg. arr[0] + arr[1] ...)
 */
- (NSInteger)shouldReturnSumOfArrayValues:(int *)arr withSize:(int)count {
    
    NSInteger sum = 0;
    int i;
    
    for (i = 0; i < count + 1; i++) {
        sum = sum + arr[i];
    }
    
    
    return sum;
}

/*
    Provided a C string (array of chars), return the character
    that immediately preceeds the letter q
    (ex. "aionkljajvqlkjaml" would return the letter 'v')
    (hint: while loop)
 */
- (char)shouldReturnCharBeforeQ:(char *)str {
    int i;
    char test = 'q';
    int count = sizeof(str)/sizeof(char);
    
    for (i = 0; i < count + 1; i++) {
        
        if (strcmp(&str[i], &test) == 0) {
            
            return str[i-1];
        }
    }
    
    return test;
}

/*
    This method should return the sum of aNumber + bNumber
 */
- (NSInteger)sumOfAnInteger:(NSInteger)aNumber andAnotherInteger:(NSInteger)bNumber {
    
    NSInteger sum = aNumber + bNumber;
    
    return sum;
}


/*
    This method should return a YES if aNumber is odd
 */
- (BOOL)isOdd:(NSInteger)aNumber {
    
    BOOL odd = NO;
    
    if (aNumber % 2 != 0) {
        
        odd = YES;
    }
    return odd;
}

/*
    This method should return YES if aNumber is a multiple of 5
 */
- (BOOL)isMultipleOfFive:(NSInteger)aNumber {
    
    BOOL isMultipleOfFive = NO;
    
    if (aNumber % 5 == 0) {
        isMultipleOfFive = YES;
    }
    return isMultipleOfFive;
}

/*
    This method should return YES is aNumber is odd and bNumber is even
 */
- (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber
               andThisNumberIsEven:(NSInteger)bNumber {
    
    BOOL test = NO;
    
    if (aNumber % 2 != 0 && bNumber % 2 == 0) {
        
        test = YES;
    }
    return test;
}

/*
    This method should return the name property of the person
    parameter (hint: command + click on class name to jump to the interface.
 */
- (NSString *)shouldReturnPersonsName:(Person *)person {
    
    return [person name];
}

/*
    This method should change the person name to "Ada Lovelace"
 */
- (void)changePersonsNameToAdaLovelace:(Person *)person {
    
    [person setName:@"Ada Lovelace"];
    
}

/*
    This method should do the following:
    1) Create an instance of Person
    2) Set the person's name to "Santa Clause"
    3) Set the person's age to 1823
 */
- (Person *)createAndReturnPersonWithSomeProperties {
    
    Person *santa = [[Person alloc] init];
    
    [santa setName:@"Santa Clause"];
    [santa setAge:1823];
    
    return santa;
}

/*
    This method provides you an instance of Chair as a parameter
    1) Create an instance of Person
    2) Tell the person to sit in the chair 
    (hint: take a look at the methods on the Person class)
 
 */
- (void)makePersonSitInChair:(Chair *)chair {
    
    Person * carl = [[Person alloc] init];
    
    [carl sitInChair:chair];
    
}

/*
    This method provides you an instance of Person as a parameter
    Send a message to this Person object telling it to stand up
 */
- (void)makePersonStandUp:(Person *)person {
    
    [person standUp];
    
}

/*
    Create and return an NSArray containing 6 NSString objects
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSArray_Class/
 */
- (NSArray *)createAndReturnNSArray {

    NSArray *brogrammer = [NSArray arrayWithObjects: @"brah", @"cool", @"natty ice", @"sandals", @"chest bump", @"backwards visor", nil];
    
    return brogrammer;
}

// BONUS
/* 
    Update the array item at index 4 to be the name of the person passed
    as a parameter
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSMutableArray_Class/
 */
- (void)changeValueOfIndexFourInArray:(NSMutableArray *)arr
                        toPersonsName:(Person *)person {
    
    [arr replaceObjectAtIndex:4 withObject:[person name]];
    
    
    
}

// BONUS
/* 
    Given a string, return the string repeated x times
    Example: mike, 5 => mikemikemikemikemike
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSMutableString_Class/
 */

- (NSString *)repeatString:(NSString *)str
             numberOfTimes:(NSInteger)x {
//    int i;
//    for (i = 0; i < x; i++) {
//        
//        printf("%s", [str UTF8String]);
//    }
//    
//    
    return 0;
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
    
    int i;
    int sum;
    int preSum;
    int count = sizeof(arr)/sizeof(int);
    
    
    for (i = 0; i <= count; i++) {
        
        sum = sum + arr[i];
        
        if (sum < 1050) {
            
        preSum = preSum + arr[i];
        
        } else if (sum >= 1050) {
            
            return preSum;
            
        }
        
    }
    return preSum;
}

@end
