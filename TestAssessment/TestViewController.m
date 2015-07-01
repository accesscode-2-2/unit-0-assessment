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
    NSInteger i = 10;
    return i;
}

/*
    This method should return any negative CGFloat 
    (hint: cannot be 0)
 */
- (CGFloat)shouldReturnANegativeCGFloat {
    CGFloat i;
    i = -1.001;
    return i;
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
    return 'a';
}

/*
    This method should return the sum of all numbers from 
    0 - 99 using a loop (. 1 + 2 + 3 + ... + 98 + 99)
 */
- (NSInteger)shouldReturnSumOf0To100 {
    NSInteger sum=0;
    for(int i =0; i<=99; i++){
        sum+=i;
    }
    return sum;
}

/*
    Given a c array (int[]) and a count, return the sum of the numbers within the arr
    (eg. arr[0] + arr[1] ...)
 */
- (NSInteger)shouldReturnSumOfArrayValues:(int *)arr withSize:(int)count {
    NSInteger sum=0;
    for (int i =0; i<count; i++){
        sum+=arr[i];
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
       char holder=str[0];
    if(holder =='q'){
        return '\0';
    }
    
    for(int i=1; i<strlen(str); i++){
        if(str[i]=='q'){
            return holder;
        }
        holder = str[i];
    }
    
    return '\0';
}

/*
    This method should return the sum of aNumber + bNumber
 */
- (NSInteger)sumOfAnInteger:(NSInteger)aNumber andAnotherInteger:(NSInteger)bNumber {
    
    return aNumber+bNumber;
}


/*
    This method should return a YES if aNumber is odd
 */
- (BOOL)isOdd:(NSInteger)aNumber {
    if(aNumber%2==1){
        return YES;
    }
    return NO;
}

/*
    This method should return YES if aNumber is a multiple of 5
 */
- (BOOL)isMultipleOfFive:(NSInteger)aNumber {
    if(aNumber%5==0){
        return YES;
    }
    return NO;
}

/*
    This method should return YES is aNumber is odd and bNumber is even
 */
- (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber
               andThisNumberIsEven:(NSInteger)bNumber {
    
    if (aNumber%2==1 && bNumber%2==0){
        return YES;
    }
    return NO;
}

/*
    This method should return the name property of the person
    parameter (hint: command + click on class name to jump to the interface.
 */
- (NSString *)shouldReturnPersonsName:(Person *)person {
    if([person name]==nil){
        return @"";
    }
    
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
    Person *santaPaws = [[Person alloc] init];
    [santaPaws setName:@"Santa Clause"];
    [santaPaws setAge:1823];
    return santaPaws;
}

/*
    This method provides you an instance of Chair as a parameter
    1) Create an instance of Person
    2) Tell the person to sit in the chair 
    (hint: take a look at the methods on the Person class)
 
 */
- (void)makePersonSitInChair:(Chair *)chair {
    Person *squaglemire = [[Person alloc] init];
    [squaglemire sitInChair:chair];
    
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
    NSArray *words = [[NSArray alloc] initWithObjects:@"Blue", @"Red", @"Banana", @"Hardyharhar",@"Argh matey", @"toodleloo", nil];
    return words;
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
    NSString *c = [NSString stringWithFormat:@"%@",str];
    if(x==0){
        return @"";
    }
    if(x==1){
        return str;
    }
    
    for (int i=2; i<=x; i++){
       str = [str stringByAppendingString:c];
    }
    return str;
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
    if(arr[0]>1050){
    return 0;
    }
    int sum = arr[0];
    int holder = sum;
    int i=1;
    while(sum<=1050){
        holder=sum;
        sum+=arr[i];
        i++;
    }
    return holder;
    return 0;
}

@end
