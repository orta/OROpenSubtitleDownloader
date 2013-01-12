OROpenSubtitleDownloader
========================

An Obj-C API for Searching and Downloading Subtitles from OpenSubtitles. Currently supports only searching and downloading of srt files are support. Pull Requests with more features are welcome.

[OpenSubtitles Documentation](http://trac.opensubtitles.org/projects/opensubtitles/wiki/XmlRpcIntro)

```
@interface OROpenSubtitleDownloader : NSObject <XMLRPCConnectionDelegate>

// By using init the object will create it's own user agent based on bundle info
- (OROpenSubtitleDownloader *)init;
- (OROpenSubtitleDownloader *)initWithUserAgent:(NSString *)userAgent;

@property (weak) NSObject <OROpenSubtitleDownloaderDelegate> *delegate;
@property (readonly) OROpenSubtitleState state;
@property (strong, nonatomic) NSString *languageString;

// Search and get a return block with an array of OpenSubtitleSearchResult
- (void)searchForSubtitlesWithHash:(NSString *)hash andFilesize:(NSNumber *)filesize :(void(^) (NSArray *subtitles))searchResult;

// Download a subtitle result to a file after being unzipped
- (void)downloadSubtitlesForResult:(OpenSubtitleSearchResult *)result toPath:(NSString *)path :(void(^)())onResultsFound;
@end
```