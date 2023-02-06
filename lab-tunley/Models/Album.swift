//
//  Album.swift
//  lab-tunley
//
//  Created by Jingyuan Yang on 2/5/23.
//

import Foundation

struct AlbumSearchResponse: Decodable {
    let results: [Album]
}

struct Album: Decodable {
    let backdrop_path: String
}
