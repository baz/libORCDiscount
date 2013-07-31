//
//  NSString+ORCDiscount.h
//  ORCDiscount
//
//  Created by Basil Shkara on 31/07/13.
//  Copyright (c) 2013 Neat.io. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ORCDiscount)

- (NSString *)orc_HTMLFromMarkdown;
- (NSString *)orc_HTMLFromGitHubMarkdown;

@end
