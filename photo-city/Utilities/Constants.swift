//
//  Constants.swift
//  photo-city
//
//  Created by Mihai Ruber on 1/13/19.
//  Copyright © 2019 Mihai Ruber. All rights reserved.
//

import Foundation

let APIKey = "3a068957660004b2c20cc5d58df4b903"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, numberOfPhotos number: Int) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(APIKey)&lat=\(annotation.coordinate.latitude)&lon=\((annotation.coordinate.longitude))&radius=1&radius_units=mile&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    return url
    
    
}
