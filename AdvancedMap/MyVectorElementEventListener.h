#import <CartoMobileSDK/CartoMobileSDK.h>

/*
 * A custom map event listener that displays information about map events and creates pop-ups.
 */
@interface  MyVectorElementEventListener : NTVectorElementEventListener

-(void)setMapView:(NTMapView*)mapView vectorDataSource:(NTLocalVectorDataSource*)vectorDataSource;
-(BOOL)onVectorElementClicked:(NTVectorElementClickInfo*)clickInfo;

@end