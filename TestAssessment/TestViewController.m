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
    return 7;
}
/*
    This method should return any negative CGFloat 
    (hint: cannot be 0)
 */
- (CGFloat)shouldReturnANegativeCGFloat {
    return -9.86;
}

/*
    This method should return a falsy boolean
    Falsey: Something which evaluates to FALSE.
 */
- (BOOL)shouldReturnAFalseyBool {
    return NO;
}

/*
    This method should return a single char from a - z
 */
- (char)shouldReturnACharAtoZ {
    return 'd';
}

/*
    This method should return the sum of all numbers from 
    0 - 99 using a loop (. 1 + 2 + 3 + ... + 98 + 99)
 */
- (NSInteger)shouldReturnSumOf0To100 {
    
    NSInteger sum = 0;
    
    for (NSInteger i; i < 100; i++) {
        sum = sum + i;
    }
    
    return sum;
}

/*
    Given a c array (int[]) and a count, return the sum of the numbers within the arr
    (eg. arr[0] + arr[1] ...)
 */
- (NSInteger)shouldReturnSumOfArrayValues:(int *)arr withSize:(int)count {
    
    int sum = 0;
    
    for (int i = 0; i < count; i++) {
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
    
//    int stringLength = sizeof(str);
//    int indexOfq = 0;
//    
//    for (int i = 0; i < stringLength; i++) {
//        if (str[i] == 'q') {
//            indexOfq = i;
//        }
//    }
//    
//    int indexOfCharBeforeq = indexOfq - 1;
//    
//    char charBeforeq = str[indexOfCharBeforeq];
//    
//    return charBeforeq;
    
    char charToFind = 'q';
    int indexOfq = 0;
    
    const char *ptr = strchr(str, charToFind);
    if(ptr) {
        indexOfq = ptr - str;
    }
    
    int indexOfCharBeforeq = indexOfq - 1;
    
    char charBeforeq = str[indexOfCharBeforeq];
    
    return charBeforeq;

}

/*
    This method should return the sum of aNumber + bNumber
 */
- (NSInteger)sumOfAnInteger:(NSInteger)aNumber andAnotherInteger:(NSInteger)bNumber {
    
    NSInteger sumOfNumbers = aNumber + bNumber;
    
    return sumOfNumbers;
}


/*
    This method should return a YES if aNumber is odd
 */
- (BOOL)isOdd:(NSInteger)aNumber {
    
    if (aNumber % 2 != 0) { //number is odd
        return YES;
    }
    else{
        return NO;
    }
}

/*
    This method should return YES if aNumber is a multiple of 5
 */
- (BOOL)isMultipleOfFive:(NSInteger)aNumber {
    
    if (aNumber % 5 == 0) {
        return YES;
    }
    else {
        return NO;
    }
}

/*
    This method should return YES is aNumber is odd and bNumber is even
 */
- (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber
               andThisNumberIsEven:(NSInteger)bNumber {
    
    if ((aNumber % 2 != 0) && (bNumber % 2 == 0)) {
        return YES;
    }
    else {
        return NO;
    }

}

/*
    This method should return the name property of the person
    parameter (hint: command + click on class name to jump to the interface.
 */
- (NSString *)shouldReturnPersonsName:(Person *)person {
    
    NSString *name = [person name];
    
    return name;
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
    
    Person *person = [[Person alloc] init];
    [person setName:@"Santa Clause"];
    [person setAge:1823];
    
    return person;
}

/*
    This method provides you an instance of Chair as a parameter
    1) Create an instance of Person
    2) Tell the person to sit in the chair 
    (hint: take a look at the methods on the Person class)
 
 */
- (void)makePersonSitInChair:(Chair *)chair {
    
    Person *person = [[Person alloc] init];
    [person sitInChair:chair];
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
    
    NSArray *myStrings = [[NSArray alloc] initWithObjects:@"cat", @"dog", @"fish", @"hamster", @"turtle", @"parrot"];
    
    return myStrings;
}

// BONUS
/* 
    Update the array item at index 4 to be the name of the person passed
    as a parameter
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSMutableArray_Class/
 */
- (void)changeValueOfIndexFourInArray:(NSMutableArray *)arr
                        toPersonsName:(Person *)person {
    
    NSString *name = [person name];
    
    [arr replaceObjectAtIndex:4 withObject:name];
    
}

// BONUS
/* 
    Given a string, return the string repeated x times
    Example: mike, 5 => mikemikemikemikemike
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSMutableString_Class/
 */

- (NSString *)repeatString:(NSString *)str
             numberOfTimes:(NSInteger)x {
    
    NSMutableString *stringToReturn = [[NSMutableString alloc] init];
    
    for (int i = 0; i < x ; i++) {
        [stringToReturn appendString:str];
    }
    return stringToReturn;
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
    
    int sum = 0;
    int loopCount = 0;
    
    while (true) {
        
        if ((sum + arr[loopCount]) <= 1050) {
            sum = sum + arr[loopCount];
        }
        else{
            break;
        }
        
        loopCount++;
    }
    
    return sum;
}

@end
