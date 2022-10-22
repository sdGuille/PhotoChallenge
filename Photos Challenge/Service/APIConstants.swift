//
//  APIConstants.swift
//  Photos Challenge
//
//  Created by Guillermo Ruiz on 14/10/22.
//

import Foundation

enum APIConstants {
    static let baseURL = "https://www.flickr.com/services/rest"
    static let method = "?method=flickr.photos.search"
    static let APIKey = "&api_key=76d39940be3209ac70a6712a0fb9d628"
    
    static let endPoint = "&extras=url_m&format=json&nojsoncallback=1&auth_token=72157720860728436-202f4dcd413cbf21&api_sig=6d4709badb00d16b5a3846915c48ebc5"
    
    static let completeURL = "/?method=flickr.photos.search&api_key=76d39940be3209ac70a6712a0fb9d628&extras=url_m&format=json&nojsoncallback=1&auth_token=72157720860728436-202f4dcd413cbf21&api_sig=6d4709badb00d16b5a3846915c48ebc5"
    
    static let secret = "a4af601cd105c529"
}
