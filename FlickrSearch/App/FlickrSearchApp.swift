//
//  FlickrSearchApp.swift
//  FlickrSearch
//
//  Created by Amit Nalawade on 2/13/24.
//

import SwiftUI

@main
struct FlickrSearchApp: App {
    var body: some Scene {
        WindowGroup {
            ImageSearchView(imageSearchViewModel: ImageSearchViewModel())
        }
    }
}
