//
//  ViewModel.swift
//  Photos Challenge
//
//  Created by Guillermo Ruiz on 13/10/22.
//

//import Foundation
//
//@MainActor
//protocol  PhotoViewModel: ObservableObject {
//    func fetchFlickrData() async
//}
//
//@MainActor
//final class PhotoViewModelImpl: PhotoViewModel {
//    @Published private(set) var flickrphoto : [Photo] = []
//
//    private let service: FlickrService
//
//    init(service: FlickrService) {
//        self.service = service
//    }
//
//    func fetchFlickrData() async {
//        do {
//            self.flickrphoto = try await service.fetchFlickrData()
//        } catch {
//            print(error)
//        }
//    }
//}
import Foundation

class PhotoViewModel: ObservableObject {
    @Published var post : [Photo] = []

    func fetchData() {
        if let url = URL(string: APIConstants.jsonURL) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let photosResponse = try decoder.decode(Root.self, from: safeData).photos
//                            print(photosResponse) // 
                            DispatchQueue.main.async {
                                self.post = photosResponse.photo
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }

}
