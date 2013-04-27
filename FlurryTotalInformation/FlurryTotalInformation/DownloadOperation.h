@interface DownloadOperation : NSOperation
{
    NSURLRequest *request;
    NSURLConnection *connection;
    NSMutableData *receivedData;
}

@property(readonly) BOOL isExecuting;
@property(readonly) BOOL isFinished;

@property(readonly) NSData *receivedData;

- (id) initWithRequest: (NSURLRequest*) rq;

@end
