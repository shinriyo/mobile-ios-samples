#import "MapBaseController.h"

/*
 * A sample that uses bundled asset for offline base map.
 * As MBTilesDataSource can be used only with files residing in file system,
 * the assets needs to be copied first to the SDCard.
 */
@interface BundledMapController : MapBaseController

@end

@implementation BundledMapController

- (void)viewDidLoad
{
	[super viewDidLoad];
    
    // Get the base projection set in the base class
    NTProjection* projection = [[self.mapView getOptions] getBaseProjection];
    NTTileDataSource *source= [self createTileDataSource];

    NTCartoOnlineVectorTileLayer *baseLayer = [[NTCartoOnlineVectorTileLayer alloc]initWithStyle:NT_CARTO_BASEMAP_STYLE_VOYAGER];
    NTVectorTileDecoder *decoder = [baseLayer getTileDecoder];
    
    NTVectorTileLayer *layer = [[NTVectorTileLayer alloc]initWithDataSource:source decoder:decoder];
    [[self.mapView getLayers] add:layer];
    
    // Zoom to Rome
    [self.mapView setFocusPos:[projection fromWgs84:[[NTMapPos alloc] initWithX:12.4807 y: 41.8962]]  durationSeconds:0];
    [self.mapView setZoom:13 durationSeconds:0];
    
    NTMapPos* position = [projection fromLat:8.11065195 lng:99.89845797];
    [self.mapView setFocusPos:position durationSeconds:0];
    [self.mapView setZoom:11 durationSeconds:0];
}

- (NTTileDataSource*)createTileDataSource
{
    NSString *name = @"rome_ntvt";
    NSString *extension = @"mbtiles";
    
    // file-based local offline datasource
    NSString* source = [[NSBundle mainBundle] pathForResource:name ofType:extension];
    
    NTTileDataSource* vectorTileDataSource = [[NTMBTilesTileDataSource alloc] initWithMinZoom:0 maxZoom:14 path:source];
    return vectorTileDataSource;
}

@end
