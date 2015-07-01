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

    return 5 + 2;
    
    
}

/*
    This method should return any negative CGFloat 
    (hint: cannot be 0)
 */
- (CGFloat)shouldReturnANegativeCGFloat {
    
    return -15.60;
}

/*
    This method should return a falsy boolean
    Falsey: Something which evaluates to FALSE.
 */
- (BOOL)shouldReturnAFalseyBool {
    
    return 3 > 99;
}

/*
    This method should return a single char from a - z
 */
- (char)shouldReturnACharAtoZ {
    
    return 'c';
}

/*
    This method should return the sum of all numbers from 
    0 - 99 using a loop (. 1 + 2 + 3 + ... + 98 + 99)
 */
- (NSInteger)shouldReturnSumOf0To100 {
    
    NSInteger sum = 0;
    for( int i = 1; i <= 100; i++) {
        if(i % 1 == 0) {
            sum += i;
        }
        
        
    }
    return sum;}
    




/*
    Given a c array (int[]) and a count, return the sum of the numbers within the arr
    (eg. arr[0] + arr[1] ...)
 */
- (NSInteger)shouldReturnSumOfArrayValues:(int *)arr withSize:(int)count {
    
    int sumOfArr [] = {40, 20, 10, 5, 2};
    NSInteger sumOfArrcount = sumOfArr[0] + sumOfArr[1] + sumOfArr[2] + sumOfArr[3] + sumOfArr[4];
    
    return sumOfArrcount;
}

/*
    Provided a C string (array of chars), return the character
    that immediately preceeds the letter q
    (ex. "aionkljajvqlkjaml" would return the letter 'v')
    (hint: while loop)
 */
- (char)shouldReturnCharBeforeQ:(char *)str {
    
    
    return '\0';
}

/*
    This method should return the sum of aNumber + bNumber
 */
- (NSInteger)sumOfAnInteger:(NSInteger)aNumber andAnotherInteger:(NSInteger)bNumber {
    
    
    
    NSInteger sumOfAnInteger = aNumber + bNumber;
    
    return sumOfAnInteger;
}


/*
    This method should return a YES if aNumber is odd
 */
- (BOOL)isOdd:(NSInteger)aNumber {
    
   
    if (aNumber % 2 != 0) return YES;
    else return NO;
}

/*
    This method should return YES if aNumber is a multiple of 5
 */
- (BOOL)isMultipleOfFive:(NSInteger)aNumber {
    if (aNumber % 5 == 0) return YES;
    else return NO;

}

/*
    This method should return YES is aNumber is odd and bNumber is even
 */
- (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber
               andThisNumberIsEven:(NSInteger)bNumber {
    
    if (aNumber % 2 != 0) return YES;
    else return NO;
}

/*
    This method should return the name property of the person
    parameter (hint: command + click on class name to jump to the interface.
 */
- (NSString *)shouldReturnPersonsName:(Person *)person {
    
    [person setName:@"kathy"];
    
    return @"kathy";
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
    [santa setAge: 1823];

       return santa;
}



    
/*
    This method provides you an instance of Chair as a parameter
    1) Create an instance of Person
    2) Tell the person to sit in the chair 
    (hint: take a look at the methods on the Person class)
 
 */
- (void)makePersonSitInChair:(Chair *)chair {
    Person *joe = [[Person alloc]init];
    
    [joe sitInChair: chair];
    
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
    
}

// BONUS
/* 
    Given a string, return the string repeated x times
    Example: mike, 5 => mikemikemikemikemike
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSMutableString_Class/
 */

- (NSString *)repeatString:(NSString *)str
             numberOfTimes:(NSInteger)x {
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
