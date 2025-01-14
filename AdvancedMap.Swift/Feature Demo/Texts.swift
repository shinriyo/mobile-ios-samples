//
//  Texts.swift
//  Feature Demo
//
//  Created by Aare Undo on 20/06/2017.
//  Copyright © 2017 CARTO. All rights reserved.
//

import Foundation

class Texts {
    
    static let turnByTurnInfoHeader = "TURN BY TURN NAVIGATION"
    
    static let turnByTurnInfoContainer =
    "This is a proof-of-concept level native element that provides turn-by-turn navigation. \n\n" +
    "In addition to routing, it implements map matching (the process to match a sequence of real world coordinates into a digital map), " +
    "a new feature in CartoMobileSDK.\n\nThe calculation to determine whether the user is still on the route, or if a new route needs to be calculated, is done on the mobile-level."
    
    static let basemapInfoHeader = "ONLINE BASE MAPS AND STYLES"
    
    static let basemapInfoContainer =
        "CARTO offers a variety of different base map styles, 3 of them are bundled :\n \n" +
        "Voyager - generic color streetmap for routing, navigation etc.\n \n" +
        "Positron - gray base map: great for colorful visualizations.\n \n" +
        "Dark Matter - heavy, like the night, it's for when you're feeling extra frisky, when you want to walk on the wild side or... just for visualizations that work better with a dark background. \n \n" +
        "Mapzen styles are provided as custom bundled styles, as CartoCSS in zip files. As their vector data is different, then they need also different styling."
    
    static let routeDownloadInfoHeader = "AREA ROUTE DOWNLOAD"
    
    static let routeDownloadInfoContainer =
        "CARTOMobileSDK 4.1.0 uses Valhalla routing. With that, we have the option to download a specific bounding box... and that is exactly what this example does.\n\n" +
        "It first downloads the map package, then saves it to a specified folder, then downloads the routing package separately. Fun fact: routing packages are often even larger than map packages.\n\n" +
        "Long-click anywhere on the map, that's the start position – now click again to set the stop position. When you're done, the route is calculated.\n\n" +
        "Now you have the option to download that bounding box. After you download a route, a transparent visualization of the downloaded area appears on your map.\n\n" +
        "Oh, and downloaded areas stay forever. You're gonna have to uninstall the app to get rid of the bounding boxes. So be careful, don't fill your phone with bounding boxes!\n\n"

    static let packageDownloadInfoHeader = "COUNTRY MAP DOWNLOAD"
    
    static let packageDownloadInfoContainer =
        "This example lets you download pre-defined packages. The packages are mostly country-based, but some larger countries, like The United States, Russia and Germany, are municipality (or oblast etc.) based.\n\n" +
        "Simply choose a package, press download and it will start, the progress will be displayed in the list and on the map.\n\n" +
        "Our SDK also offers the option to pause, resume he download and, when you have it, the option to delete the package.\n\n" +
        "The packages are defined by CARTO's Mobile team and are readily available in our mobile SDK's API."
    
    static let offlineRoutingInfoHeader = "COUNTRY ROUTE DOWNLOAD"
    
    static let offlineRoutingInfoContainer =
        "This example lets you download pre-defined packages. The packages are mostly country-based, but some larger countries, like The United States, Russia and Germany, are municipality (or oblast etc.) based.\n\n" +
            "Simply choose a package, press download and it will start, the progress will be displayed in the list and on the map.\n\n" +
            "Our SDK also offers the option to pause, resume he download and, when you have it, the option to delete the package.\n\n" +
    "The packages are defined by CARTO's Mobile team and are readily available in our mobile SDK's API."
    
    static let vectorElementsInfoHeader = "VECTOR OBJECTS"
    
    static let vectorElementsInfoContainer =
        "With CARTOMobileSDK you have a convenient way to add different vector elements to your map to spice it up.\n\n" +
        "These are just a few examples of vector elements provided by us. We have a variety of different popups, markers, points, lines, polygons, and models.\n\n" +
        "All elements are also interactive. Go ahead, click on one!\n\n" +
        "In this example, the nml model is a file bundled with the app. NML is CARTO's own compact format for 2D and 3D models.\n\n"
    
    static let clusteringInfoHeader = "POINT CLUSTERING"
    
    static let clusteringInfoContainer =
        "CARTO offers a convenient way to build point clusters.\n\n" +
        "Here's an example of the clustering of cities with over 15000 residents, which is approximately 20,000 cities around the world.\n\n" +
        "CARTO's Mobile SDK creates these clusters in a matter of milliseconds and animates them to place when zooming in, animates them back when zooming out.\n\n" +
        "With our sdk, You can style your clusters however you want (they are regular markers on the map), we decided to stick to the classic: white background, black number"
    
    static let objectEditingInfoHeader = "VECTOR OBJECT EDITING"
    
    static let objectEditingInfoContainer =
        "Now this is one of the more complex features of CARTOMobileSDK. The option to create custom elements, and then also to edit them!\n\n" +
        "Simply click on the element you wish to edit, and then drag from the navy-colored dots to change its size or from the center to move it.\n\n" +
        "We even installed a small trash can in the top right corner so you can delete and element if you get sick of it.\n\n"
    
    static let gpsLocationInfoHeader = "DEVICE LOCATION"
    
    static let gpsLocationInfoContainer =
        "CartoMobileSDK is also compatible with native APIs. You get latitude and longitude from CLLoationManager and you can easily place a highly customized marker on those coordinates.\n\n" +
        "This example also has a 'track location' switch, as it by default zooms to your location when it receives a location update. Turn it off if you wish to browse the map"
    
    static let geocodingInfoHeader = "OFFLINE GEOCODING"
    
    static let geocodingInfoContainer =
        "CartoMobileSDK version 4.1.0 introduces geocoding. You can now type in an address and locate it on the map. And everything's offline!\n\n" +
        "All you have to do is download the correct package and you're good to go\n\n" + "I don't really know what to say here any more. Geocoding is rather self-explanatory. It's an awesome feature, though, that's worth a mention!"
    
    static let reverseGeocodingInfoHeader = "REVERSE GEOCODING OFFLINE"
    
    static let reverseGeocodingInfoContainer =
        "CartoMobileSDK version 4.1.0 introduces offline (reverse) geocoding. You simply click an area on the map, any location, to find out detailed information about it. And everything's offline!\n\n" +
        "All you have to do is download the correct package (current sample features Estonia) and you're good to go\n\n" +
        "I don't really know what to say here any more. Geocoding is rather self-explanatory. It's an awesome feature, though, that's worth a mention!"
    
    static let routeSearchInfoHeader = "ROUTE SEARCH"
    
    static let routeSearchInfoContainer = "CARTOMobileSDK 4.1.0 supports searching from various sources. " +
        "This sample combines online routing with online searching from vector tiles. \n\n" +
        "To see this in action, just click on two different points. The sample will first " +
        "calculate the fastest route between the points and then uses search APIs to find " +
        "all attractions along the route within 500 meters. These Points of Interests are then " +
    "shown as clickable red dots.\n\n"
}
