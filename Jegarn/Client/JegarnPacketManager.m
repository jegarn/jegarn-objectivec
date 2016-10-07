//
// Created by Yao Guai on 16/10/2.
// Copyright (c) 2016 minions.jegarn.com. All rights reserved.
//

#import "JegarnPacketManager.h"
#import "JegarnPacket.h"

#define JegarnPacketManagersImplementationSharedInstance \
static id _instance;                                     \
+ (instancetype)sharedInstance {                         \
    static dispatch_once_t onceToken;                    \
    dispatch_once(&onceToken, ^{                         \
        _instance = [[self alloc] init];                 \
    });                                                  \
    return _instance;                                    \
}

@implementation JegarnPacketManager
@synthesize delegates = _delegates;
JegarnPacketManagersImplementationSharedInstance;

- (instancetype)init {
    self = [super init];
    if (self) {
        self.delegates = [[NSMutableArray alloc] init];
    }

    return self;
}

- (BOOL)addDelegate:(id)delegate {
    for (NSUInteger i = 0; i < self.delegates.count; ++i) {
        if (self.delegates[i] == delegate) {
            return NO;
        }
    }
    [self.delegates addObject:delegate];
    return YES;
}

- (BOOL)removeDelegate:(id)delegate
{
    for (NSUInteger i = 0; i < self.delegates.count; ++i) {
        if (self.delegates[i] == delegate) {
            [self.delegates removeObjectAtIndex:i];
            return YES;
        }
    }
    return NO;
}

@end

@implementation JegarnChatPacketManager
@synthesize delegates;
JegarnPacketManagersImplementationSharedInstance;
@end

@implementation JegarnGroupChatPacketManager
@synthesize delegates;
JegarnPacketManagersImplementationSharedInstance;
@end

@implementation JegarnChatRoomPacketManager
@synthesize delegates;
JegarnPacketManagersImplementationSharedInstance;
@end

@implementation JegarnNotificationPacketManager
@synthesize delegates;
JegarnPacketManagersImplementationSharedInstance;
@end