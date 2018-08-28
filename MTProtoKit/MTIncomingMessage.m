

#import "MTIncomingMessage.h"

@implementation MTIncomingMessage

- (instancetype)initWithMessageId:(int64_t)messageId seqNo:(int32_t)seqNo salt:(int64_t)salt timestamp:(NSTimeInterval)timestamp size:(NSInteger)size body:(id)body
{
    self = [super init];
    if (self != nil)
    {
        _messageId = messageId;
        _seqNo = seqNo;
        _salt = salt;
        _timestamp = timestamp;
        _size = size;
        _body = body;
    }
    return self;
}

// New
- (instancetype)initWithMessageId:(int64_t)messageId operation:(int32_t)operation seqNo:(int32_t)seqNo verifyId:(int32_t)verifyId salt:(int64_t)salt timestamp:(NSTimeInterval)timestamp size:(NSInteger)size body:(id)body {
    self = [super init];
    if (self != nil) {
        _messageId = messageId;
        _operation = operation;
        _seqNo = seqNo;
        _verifyId = verifyId;
        _salt = salt;
        _timestamp = timestamp;
        _size = size;
        _body = body;
    }
    return self;
}

@end
