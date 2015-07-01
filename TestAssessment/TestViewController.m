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


- (int)shouldReturnAPositiveInt {
    return 25;
}
/*
    This method should return any negative CGFloat 
    (hint: cannot be 0)
 */

- (float)shouldReturnANegativeFloat {
    return -2.42000;
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
    char aToZ;
    for(int i = 0; i < 26; i++ ) {
       char aToZ[i];
    }
    return aToZ;
}

/*
    This method should return the sum of all numbers from 
    0 - 99 using a loop (. 1 + 2 + 3 + ... + 98 + 99)
 */


- (NSInteger)shouldReturnSumOf0To100 {
    int sum = 0;
    for(int i = 0; i < 100; i++ ) {
        sum += i;
        
    }
    return sum;
}


/*
    Given a c array (int[]) and a count, return the sum of the numbers within the arr
    (eg. arr[0] + arr[1] ...)
 */


- (NSInteger)shouldReturnSumOfArrayValues:(int *)arr withSize:(int)count {
    int COUNT;
    int a[COUNT] = {5,6,2,9,3,82,93};
    int i, total = 0;
    
    for(i = 0; i <= (COUNT-1); i++)
    {
        
        total += a[i];
    }
    printf("\nThe sum of the array elements is %d\n", total);
            
        }



/*
    Provided a C string (array of chars), return the character
    that immediately preceeds the letter q
    (ex. "aionkljajvqlkjaml" would return the letter 'v')
    (hint: while loop)
 */

- (char)shouldReturnCharBeforeQ:(char *)str{
    int i;
    int size;
    char * arr[i];
    char *new_arr = malloc(sizeof(char) * size);
    while(i < 16) {
         new_arr[i] = arr[i];
    }
    return arr[i];
}

int main() {
    
    char arr[16]= {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q"};
  
    
}
/*
    This method should return the sum of aNumber + bNumber
 */
- (NSInteger)sumOfAnInteger:(NSInteger)aNumber andAnotherInteger:(NSInteger)bNumber {
    NSInteger sum = 0;
    sum = aNumber + bNumber;
    return sum;
}


/*
    This method should return a YES if aNumber is odd
 */
- (BOOL)isOdd:(NSInteger)aNumber {
    for (int i = 0; i < 50; i++) {
    if (i % 2 != 0) {
        return YES;
    } else {
    return NO;
    }
}
}

/*
    This method should return YES if aNumber is a multiple of 5
 */
- (BOOL)isMultipleOfFive:(NSInteger)aNumber {
    for (int j = 0; j < 100; j++) {
        if (j % 5 == 0) {
            return YES;
        } else {
            return NO;
        }
    }
}


/*
    This method should return YES is aNumber is odd and bNumber is even
 */
- (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber
               andThisNumberIsEven:(NSInteger)bNumber {
    for (int i = 0; i < 50; i++) {
        if (aNumber % 2 != 0 && bNumber % 2 == 0) {
            return YES;
        } else {
            return NO;
        }
}

/*
    This method should return the name property of the person
    parameter (hint: command + click on class name to jump to the interface.
 */
- (NSString *)shouldReturnPersonsName:(Person *)person {
    return @Person;
}

/*
    This method should change the person name to "Ada Lovelace"
 */
- (void)changePersonsNameToAdaLovelace:(Person *)person {
    NSString *replaced = [str stringByReplacingOccurrencesOfString:@"Tom"
                                                        withString:@"Ada Lovelace"];
}

/*
    This method should do the following:
    1) Create an instance of Person
    2) Set the person's name to "Santa Clause"
    3) Set the person's age to 1823
 */
   @interface
    -(void)setName:(NSString *)name;
    
    -(NSString *)name;
    
    -(void)setAge:(NSString *)age;
    
    -(NSString *)age;
        @end
        
        @implementation
        -(void)setName:(NSString *)name {
            _name = name;
        }
        
        -(NSString *)name {
            return _name;
            
            -(void)setAge:(NSString *)age {
                _age = age;
            }
            
            -(NSString *)age {
                return _age;
        @end
        
- (Person *)createAndReturnPersonWithSomeProperties {
    
    Person *santaClause = [[Person alloc] init];
    SantaClause = [person setName: "Santa Clause"];
    SantaClause = [person setAge: "1823"];
    
   return [[Person alloc] init];
    }
                
  
}

/*
    This method provides you an instance of Chair as a parameter
    1) Create an instance of Person
    2) Tell the person to sit in the chair 
    (hint: take a look at the methods on the Person class)
 
 */
- (void)makePersonSitInChair:(Chair *)chair {
    SitInChair *sitInChair = [[SitInChair alloc] init];
    Person *carl = [[Person alloc] init];
    Thing *chair = [[Thing alloc] init];
    [SitInChair sit:chair withPerson:carl];

}

/*
    This method provides you an instance of Person as a parameter
    Send a message to this Person object telling it to stand up
 */
- (void)makePersonStandUp:(Person *)person {
    StandUp *standUp = [[StandUp alloc] init];
    Person *carl = [[Person alloc] init];
    [StandUp withPerson:carl];
 
}

/*
    Create and return an NSArray containing 6 NSString objects
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSArray_Class/
 */
- (NSArray *)createAndReturnNSArray {
    NSArray *objects = [NSString arrayWithObjects:@"I", @"need", "to", "take" "a", "nap", nil];
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

"\n@end\n"
