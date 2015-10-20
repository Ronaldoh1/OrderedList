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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.text = @"On a dark desert highway, cool wind in my hair Warm smell of colitas, rising up through the airUp ahead in the distance, I saw a shimmering light My head grew heavy and my sight grew dim I had to stop for the night There she stood in the doorway; I heard the mission bell And I was thinking to myself, This could be Heaven or this could be Hell. Then she lit up a candle and she showed me the way There were voices down the corridor, I thought I heard them say...";


    self.wordsDictionary = [NSMutableDictionary new];
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

-(NSArray *)mostFrequentWordsFromString:(NSString *)string maxCount:(NSUInteger )maxCount{

    NSMutableArray *wordList = [NSMutableArray array];






    return wordList;
}
@end
