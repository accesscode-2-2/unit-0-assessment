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

@interface Person: NSObject

-(void)setAge:(NSString *)age;
-(NSString *)age;

-(void)setName:(NSString *)name(NSString *)name;
-(NSString *)name;

@end

@interface shouldReturnAPositiveController : NSObject
-(void)shouldReturnAPositiveNSInteger;
@end

@interface TestViewController : NSObject


-(BOOL)shouldReturnAFalseyBool;
-(BOOL) hasID;
-(BOOL) hasPants;
-(void)shouldReturnANegativeCGFloat;

@end



@implementation TestViewController {


/*
    This method should return any positive NSInteger 
    (hint: cannot be 0)
 */
- (void)shouldReturnAPositiveNSInteger {
    
    int positiveInteger = -5;
    int negativeInteger = -3;
    printf(" the result is %d * %d \n", positiveInteger, negativeInteger );
    
}


/*
    This method should return any negative CGFloat 
    (hint: cannot be 0)
 */
- (void)shouldReturnANegativeCGFloat {
    
    float numbers[] = {3.1415, -1.6180,};

    float result;
    printf(" %f + %f = %f \n", numbers[0], numbers[1], result);
}

/*
    This method should return a falsy boolean
    Falsey: Something which evaluates to FALSE.
 */

int  MikeAge = 20;
int  mikesCash = 10;
int  buyoff = 40;
BOOL hasID = YES;
BOOL hasPants = NO;
int  minAge = 21;



if (mikeAge == minAge && hasID) {
    NSLog(@"Welcome");
} else if (mikeAge < minAge && !hasID) {
    NSLog(@"You can't come in ");
} else if (mikes >= buyoff) {
    if (carlMoney >= buyoff) {
        NSLog(@"you're luck mofo");
    } else {
        NSLog(@"Go to grams");
    }
    
}
              return NO;


/*
    This method should return a single char from a - z
 */
- (void)shouldReturnACharAtoZ {
    
   
    
    
    @interface CaesarCipher : NSObject
    
    - (NSString *)originalString:(NSString *)string offset:(int)offset;
    - (NSString *)decode:(NSString *)string offset:(int)offset;
    - (NSString *)encode:(NSString *)string offset:(int)offset;

    
    
    @end
    
    
    @implementation CaesarCipher
    
    - (NSString *)encode:(NSString *)string offset:(int)offset {
        if (offset > 25) {
            NSAssert(offset < 26, @"offset is out of range. 1 - 25");
        }
        NSString *str = [string lowercaseString];
        unsigned long count = [string length];
        unichar result[count];
        unichar buffer[count];
        [str getCharacters:buffer range:NSMakeRange(0, count)];
        
        printf("Decode the Letter!\n");
        
        char allchars[] = "abcdefghijklmnopqrstuvwxyz";
        
        for (int i = 0; i < count; i++) {
            if (buffer[i] == ' ' || ispunct(buffer[i])) {
                result[i] = buffer[i];
                continue;
            }
            
            char *e = strchr(allchars, buffer[i]);
            int idx= (int)(e - allchars);
            int new_idx = (idx + offset) % strlen(allchars);
            
            result[i] = allchars[new_idx];
        }
        
        return [NSString stringWithCharacters:result length:count];
    }
    
    - (NSString *)decode:(NSString *)string offset:(int)offset {
        return [self encode:string offset: (26 - offset)];
    }
    
    
    
    - (BOOL)checkIfString:(NSString *)str1 isEqualToString:(NSString *)str2 {
        
        for (int i = 1; i < 26; i++) {
            NSString *newEncodedString = [self encode:str2 offset:i];
            if ([newEncodedString isEqualToString:str1]) {
                NSLog(@"found a match");
                return YES;
            }
        }
        
        NSLog(@"did not find a match");
        return NO;
    }
    
    @end
    
    
    int main(int argc, const char * argv[]) {
        @autoreleasepool {
            
            CaesarCipher *cipher = [[CaesarCipher alloc]init];
            NSString *orginialString = @"q";
            NSString *decoded2 = [cipher decode:orginialString offset:1];
            
            NSLog(@"%@", originalString);
            NSLog(@"%@", decoded);
            NSLog(@"%@", allchars[15]);
            
            BOOL [cipher checkIfString:originalString isEqualToString:decoded];
            return YES;
            
        }
    }


/*
    This method should return the sum of all numbers from
    0 - 99 using a loop (. 1 + 2 + 3 + ... + 98 + 99)
 */
- (NSInteger)shouldReturnSumOf0To100 {
    
    
    int i;
    int count;
    int sum = 0;
    
    
    for(int i;  i < 100; i++)
    {
        sum += i;
    }
    printf("Sum = %d",sum);
    
    return 0;
}

/*
    Given a c array (int[]) and a count, return the sum of the numbers within the arr
    (eg. arr[0] + arr[1] ...)
 */
- (NSInteger)shouldReturnSumOfArrayValues:(int *)arr withSize:(int)count {
    
    
    
    return 0;
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
    return 0;
}


/*
    This method should return a YES if aNumber is odd
 */
- (BOOL)isOdd:(NSInteger)aNumber {
    return NO;
}

/*
    This method should return YES if aNumber is a multiple of 5
 */
- (BOOL)isMultipleOfFive:(NSInteger)aNumber {
    return NO;
}

/*
    This method should return YES is aNumber is odd and bNumber is even
 */
- (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber
               andThisNumberIsEven:(NSInteger)bNumber {
    return NO;
}

/*
    This method should return the name property of the person
    parameter (hint: command + click on class name to jump to the interface.
 */
- (NSString *)shouldReturnPersonsName:(Person *)person {
    return @"";
}

/*
    This method should change the person name to "Ada Lovelace"
 */
- (void)changePersonsNameToAdaLovelace:(Person *)person {
    
  
    toName:(NSString *)newName {
    
    
    [Person setName:newName];
    [mike changePersonsName:mike toName:@"Ada Love Lace"];
}
    

    
}

/*
    createAndReturnPersonWithSomeProperties
    This method should do the following:
    1) Create an instance of Person
    2) Set the person's name to "Santa Clause"
    3) Set the person's age to 1823
 */
- (Person *)SantaClaus {
        Person *SantaClaus = [[Person alloc]init];
        [Person setAge:[1823];
        [SantaClaus setName: SantaClaus];
        return Person *SantaClaus = [[Person alloc] init];
}

/*
    This method provides you an instance of Chair as a parameter
    1) Create an instance of Person
    2) Tell the person to sit in the chair 
    (hint: take a look at the methods on the Person class)
 
 */
- (void)makePersonSitInChair:(Chair *)chair {
    
}

/*
    This method provides you an instance of Person as a parameter
    Send a message to this Person object telling it to stand up
 */
- (void)makePersonStandUp:(Person *)person {
    
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
