//
//  ViewController.m
//  MeuExemploCollection
//
//  Created by Mauricio Junior on 6/17/15.
//  Copyright (c) 2015 Mauricio Junior. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSMutableArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.array = [[NSMutableArray alloc]init];
    
    [self.array addObject:@"Meu"];
    [self.array addObject:@"Exemplo"];
    [self.array addObject:@"Qualquer"];
    [self.array addObject:@"Utilizando"];
    [self.array addObject:@"Collection"];
    [self.array addObject:@"View"];
    [self.array addObject:@"Saiba"];
    [self.array addObject:@"Exibir"];
    [self.array addObject:@"os"];
    [self.array addObject:@"dados"];
    [self.array addObject:@"com"];
    [self.array addObject:@"borda"];
    [self.array addObject:@"branca"];
    [self.array addObject:@"e"];
    [self.array addObject:@"arredondada"];
    [self.array addObject:@"de"];
    [self.array addObject:@"forma"];
    [self.array addObject:@"bem"];
    [self.array addObject:@"fácil"];
    [self.array addObject:@"e simples"];
    
}

#pragma mark Métodos da collection view

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return [self.array count];
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    UILabel *myLabel = (UILabel *)[cell viewWithTag:100];
    
    myLabel.text = [self.array objectAtIndex:indexPath.row];
    
    [cell.layer setBorderWidth:2.0f];
    [cell.layer setBorderColor:[UIColor whiteColor].CGColor];
    
    [cell.layer setCornerRadius:50.0f];
    
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"O valor selecionado foi %tu", indexPath.row);
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
