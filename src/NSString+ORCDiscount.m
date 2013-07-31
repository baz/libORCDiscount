//
//  NSString+ORCDiscount.m
//  ORCDiscount
//
//  Created by Basil Shkara on 31/07/13.
//  Copyright (c) 2013 Neat.io. All rights reserved.
//

#import "NSString+ORCDiscount.h"
#import "markdown.h"

@implementation NSString (ORCDiscount)


- (NSString *)orc_HTMLFromMarkdown {
	return [self orc_newMarkdownStringFromGitHubMarkdown:NO];
}

- (NSString *)orc_HTMLFromGitHubMarkdown {
	return [self orc_newMarkdownStringFromGitHubMarkdown:YES];
}

- (NSString *)orc_newMarkdownStringFromGitHubMarkdown:(BOOL)fromGitHubMarkdown {
	char *UTF8String = (char *) [self UTF8String];
	Document *document = fromGitHubMarkdown ? gfm_string(UTF8String, (int) strlen(UTF8String), 0) : mkd_string(UTF8String, (int) strlen(UTF8String), 0);
	NSString *finalString = nil;

	if (mkd_compile(document, 0)) {
		char *result = NULL;
		int length = mkd_document(document, &result);
		if (length != EOF) {
			finalString = [[NSString alloc] initWithBytes:result length:length encoding:NSUTF8StringEncoding];
		}
	}
	mkd_cleanup(document);

	return finalString;
}


@end
