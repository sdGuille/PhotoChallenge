//
//  Model.swift
//  Photos Challenge
//
//  Created by Guillermo Ruiz on 13/10/22.
//

import Foundation

//var string = "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=76d39940be3209ac70a6712a0fb9d628&extras=url_m&format=json&nojsoncallback=1&auth_token=72157720860728436-202f4dcd413cbf21&api_sig=6d4709badb00d16b5a3846915c48ebc5"
//
//struct Photos: Decodable {
//    var page, pages, perpage, total : Int
//    var photo: [Photo]
//}


//struct PagedPhotosResponse: Decodable {
//    private let wrappedResponse: WrapperPagedPhotosResponse
//
//    var page: Int {
//        wrappedResponse.page
//    }
//
//    var pages: String {
//        wrappedResponse.pages
//    }
//
//    var perPage: Int {
//        wrappedResponse.perPage
//    }
//
//    var totalPhotos: String {
//        wrappedResponse.totalPhotos
//    }
//
//    var photos: [Photo] {
//        wrappedResponse.photos
//    }
//
//    enum CodingKeys: String, CodingKey {
//        case wrappedResponse = "photos"
//    }
//}

struct Root: Decodable {
    let photos: Photos
}

struct Photos: Decodable {
    let page: Int
    let pages: String
    let perPage: Int
    let totalPhotos: String
    let photo: [Photo]

    enum CodingKeys: String, CodingKey {
        case page
        case pages
        case perPage = "perpage"
        case totalPhotos = "total"
        case photo 
    }
}



struct Photo: Decodable, Identifiable, Hashable {
    var id: String
    var owner: String
    var secret: String
    var server: String
    var url_m: String
    var farm: Int
    var title: String

}

