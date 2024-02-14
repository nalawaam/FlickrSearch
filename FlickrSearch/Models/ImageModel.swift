//
//  ImageModel.swift
//  FlickrSearch
//
//  Created by Amit Nalawade on 2/13/24.
//

import Foundation

struct ImageSearchResponse: Codable {
    let title: String
    let link: String
    let description: String
    let modified: String
    let generator: String
    let items: [ImageModel]
}

struct ImageModel: Codable, Identifiable {
    // No unique identifier for an image in the response, so adding this.
    let id = UUID()
    let title: String
    let link: String
    let media: [String: String]
    let date_taken: String
    let description: String
    let published: String
    let author: String
    let author_id: String
    let tags: String
}

// Helper to build url from link in the response.
extension ImageModel {
    var url: URL? {
        guard let mediaUrl = media["m"] else { return nil }
        return URL(string: mediaUrl)
    }
}

// Helper to format published date.
extension ImageModel {
    var formattedPublishedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        if let date = dateFormatter.date(from: published) {
            dateFormatter.dateFormat = "MMM dd, yyyy HH:mm:ss"
            let formattedPublishedDate = dateFormatter.string(from: date)
            return formattedPublishedDate
        } else {
            return ""
        }
    }
}
