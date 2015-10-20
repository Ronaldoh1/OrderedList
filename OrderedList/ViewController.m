//
//  ViewController.m
//  OrderedList
//
//  Created by Ronald Hernandez on 10/19/15.
//  Copyright © 2015 Evernote. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//This dictionary holds the words and the requencies of the words.
@property NSMutableDictionary *wordsDictionary;
@property NSString *text;
@end

@implementation ViewController

/*ASSUMPTIONS: 
 
 1. text property represents a string from a file document. I wasn't sure if reading from the file was part of the requirement. If it is please let me know and I can modify my code. For now text will represent the text obtain from the textfield.
 2. Use of Standard data structures and associated methods
 3. Need to remove puntuation 
 4. Need to convert all words to lower case
 5. Need to print words in order based on frequency until maxCount (size of the array returned)
 6. We only need to print each word once (no repeated words)
 
 */


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.text = @"Katniss Everdeen, who tells her story in the first person, wakes up. It is the day of the reaping. She sees her little sister, Prim (short for Primrose), asleep in bed with their mother across the room. Katniss puts on her clothes to go hunting. The area where she and her family live is called the Seam, and it’s part of District 12. They are at the edge of the district, which is enclosed by a high fence, and Katniss often crawls under the fence and enters the woods outside, where she forages and hunts. Her father taught her these skills before his death in a mine explosion when she was eleven years old, and she uses a bow he made. Though trespassing in the woods and poaching are illegal, nobody pays attention, and Katniss even sells meat to the Peacekeepers who are supposed to enforce the laws. Most people in the district, she explains, don’t have enough food.";


    self.wordsDictionary = [NSMutableDictionary new];

  [self mostFrequentWordsFromString:self.text maxCount:2];



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//Function takes two paramenters:
//1. a String representing a text document and 2) an Integer providing the number of items to return.

//The function returns a list of Strings ordered by word frequency, the most frequent occurring word first. The solutions should run in O(n) where n is the number of of words in the document.

/* 1. check if the "file" is empty. 
 2. We need to ignore case sensitive
 3. Remove puntuation or ignore it. 
 4. Convert string to NSDictonary and keep count of the their frequency. 
    a) If the word exist, simply update the frequncy of the word for that dictionary. 
    b) if the word does not exists, you need add it to the dictionary and increment the requncy by 1. 
 
*/

-(NSArray *)mostFrequentWordsFromString:(NSString *)text maxCount:(NSUInteger )maxCount{

    NSArray *sortedListCopy = [NSArray new];

    //check if the text is empty if, provide a message.
    if ([text isEqualToString:@""]) {

        NSLog(@"the text was empty");

    }else{

        //remove puntuation. Also need to convert the string received to lower case so all words can be evaluated equally.



    //Convert the string to an array.

        NSArray *wordsArray = [[[[text componentsSeparatedByCharactersInSet:[[NSCharacterSet letterCharacterSet]invertedSet]]
                                 componentsJoinedByString:@" "] lowercaseString] componentsSeparatedByString:@" "];
        NSMutableDictionary *wordsDictionary = [NSMutableDictionary new];



    //iterate through the array of words
        for (NSString *str in wordsArray){

    //if the word does not exists in the dictionary, we need to add it to the dictionary and set it's initial value to @1;

            if (![wordsDictionary objectForKey:str] && ![str isEqualToString:@""] && wordsDictionary.count != maxCount) {

                [wordsDictionary setObject:@1 forKey:str];

            }else{
                //get neeed to get he value for that key
                int value = (int)[[wordsDictionary objectForKey:str] integerValue] + 1;

                //then overide the current value wiht the new value.

                [wordsDictionary setObject:[NSNumber numberWithInt:value] forKey:str];


            }
        }

        [wordsDictionary removeObjectForKey:@""];

        NSLog(@"%@", wordsDictionary);

      NSArray *sortedList = [[[wordsDictionary keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2) {

            return [obj1 compare:obj2];
        }] reverseObjectEnumerator] allObjects];

        NSLog(@"%@", sortedList);

    }


    return sortedListCopy;
}
@end
