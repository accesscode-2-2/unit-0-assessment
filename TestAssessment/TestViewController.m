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
- (NSInteger)shouldReturnAPositiveNSInteger{
    
//    if (i > 0) {
//        return i;
//    }
//    i = i * -1;
//    return i;
//}

    return 4;
}

/*
    This method should return any negative CGFloat 
    (hint: cannot be 0)
 */
- (CGFloat)shouldReturnANegativeCGFloat{
    
//    if (i < 0) {
//        return i;
//    }
//    i = -i;
//    
//    return i;
    
    return -8.0;
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
- (char)shouldReturnACharAtoZ{
    
//    char aLetter;
////    char anArray[26] = "abcdefghijklmnopqrstuvwxyz";
////    
////    while (<#condition#>) {
////        <#statements#>
////    }
//    
//    return aLetter;
    return 'c';
}

/*
    This method should return the sum of all numbers from 
    0 - 99 using a loop (. 1 + 2 + 3 + ... + 98 + 99)
 */
- (NSInteger)shouldReturnSumOf0To100 {
    
    int sum = 0;
    for (int i = 0; i < 100; i++) {
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
    
//    int i = 0;
//    
//    while (str[i] != 'q') {
//        
//        if (str[i] == 'q') {
//            return str[i-1];
//        }
//        
//        i++;
//    }
//    //I know this is incorrect
//    return str[i];
    
    
    int i = 0;
    
    while (str[i] != 'q') {
    //the loop will continue until it finds a 'q'. when it does it will break out of the loop. No need for an if statement.
            i++;
        }

    return str [i - 1];
    
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
    
    if (aNumber %2 == 0) {
        return NO;
    }
    
    return YES;
}

/*
    This method should return YES if aNumber is a multiple of 5
 */
- (BOOL)isMultipleOfFive:(NSInteger)aNumber {
    //the below works!
//    if (aNumber %5 == 0) {
//        return YES;
//    }
//    return NO;
    
    //This would also work:
    return aNumber %5 == 0;
    //same for the above
}

/*
    This method should return YES is aNumber is odd and bNumber is even
 */
- (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber
               andThisNumberIsEven:(NSInteger)bNumber {
    
    if (aNumber %2 != 0 && bNumber %2 == 0) {
        return YES;
    }
    
    return NO;
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
- (void) changePersonsNameToAdaLovelace:(Person *)person {
    [person setName:@"Ada Lovelace"];
}

/*
    This method should do the following:
    1) Create an instance of Person
    2) Set the person's name to "Santa Clause"
    3) Set the person's age to 1823
 */
- (Person *)createAndReturnPersonWithSomeProperties {
    Person *anotherPerson = [[Person alloc] init];
    [anotherPerson setName:@"Santa Clause"];
    [anotherPerson setAge:1823];
    
    return anotherPerson;
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
    
    
    NSArray *arr = [[NSArray alloc] init];
    NSString *object1 = @"one";
    NSString *object2 = @"two";
    NSString *object3 = @"three";
    NSString *object4 = @"four";
    NSString *object5 = @"five";
    NSString *object6 = @"six";
    
    arr = [NSArray arrayWithObjects:object1, object2, object3, object4, object5, object6, nil];
    
    return arr;
    
    //also, the following would work:
    //return [NSArray arrayWithObjects: @"one", @"two", @"three", @"four", @"five", @"six", nil];
    //Because "arrayWithObjects" does the alloc init for you.
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
    
    //this also would work, but it might not give you "bounce checking", i.e. give you an error msg, it might just silently fail
    //arr[4] = [person name];
    
}

// BONUS
/* 
    Given a string, return the string repeated x times
    Example: mike, 5 => mikemikemikemikemike
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSMutableString_Class/
 */

- (NSString *)repeatString:(NSString *)str
             numberOfTimes:(NSInteger)x {
    
    //from review in class
    NSMutableString *finalString = [[NSMutableString alloc] init];
    for (int i = 0; i < x; i++) {
        [finalString appendString:str];
    }
    
    return finalString;
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
    
    //from in-class review
//    int i = 0;
//    int sum = 0;
//    
//    while (sum <= 1050) {
//        sum = sum + arr[i];
//        i++;
//    }
//    
//    return sum - arr [i - 1 ];
    
    //Caleb's solution
    int i = 0;
    int sum = 0;
    
    while (sum  + arr[i] <= 1050) {
        sum = sum + arr[i];
        i++;
    }
    
    return sum;
}

@end
