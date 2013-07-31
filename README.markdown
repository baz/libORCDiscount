## libORCMarkdown

This is an Objective-C wrapper for the [discount library](https://github.com/Orc/discount.git) (implementation of Markdown written in C).

It builds a static library with a simple `NSString` category with the following signatures:

`- (NSString *)orc_HTMLFromMarkdown`

`- (NSString *)orc_HTMLFromGitHubMarkdown`

Builds on Mac currently, haven't tested on iOS but should be easy to get it running over there too.

Licensed under the same license as discount (BSD-style license).
