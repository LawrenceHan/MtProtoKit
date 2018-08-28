

#import <Foundation/Foundation.h>

@interface MTIncomingMessage : NSObject

@property (nonatomic, readonly) int64_t messageId;
@property (nonatomic, readonly) int32_t seqNo;
@property (nonatomic, readonly) int64_t salt;
@property (nonatomic, readonly) NSTimeInterval timestamp;
@property (nonatomic, readonly) NSInteger size;
@property (nonatomic, strong, readonly) id body;

- (instancetype)initWithMessageId:(int64_t)messageId seqNo:(int32_t)seqNo salt:(int64_t)salt timestamp:(NSTimeInterval)timestamp size:(NSInteger)size body:(id)body;

// New
@property (nonatomic, readonly) int32_t operation;
@property (nonatomic, readonly) int32_t verifyId;

- (instancetype)initWithMessageId:(int64_t)messageId operation:(int32_t)operation seqNo:(int32_t)seqNo verifyId:(int32_t)verifyId salt:(int64_t)salt timestamp:(NSTimeInterval)timestamp size:(NSInteger)size body:(id)body;

@end
