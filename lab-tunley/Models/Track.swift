//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct

struct Track: Decodable {
    let poster_path: String
    let title: String
    let overview: String
    let backdrop_path: String
//
//
//    // Detail properties
    let vote_count: Int
    //let vote_averag: Double
//    let releaseDate: Date
//    let trackTimeMillis: Int
}

struct TracksResponse: Decodable {
    let results: [Track]
}
// TODO: Pt 1 - Create an extension with a mock tracks static var

//extension Track {
//
//    /// An array of mock tracks
//    static var mockTracks: [Track]  = [
//        Track(poster_path: "https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/c3/64/46/c364465f-6271-8aae-93a8-b9979d2befe5/20UMGIM82075.rgb.jpg/100x100bb.jpg",
////            trackName: "Ice Cream",
////              artistName: "BLACKPINK & Selena Gomez",
////             collectionName: "The Album",
////             primaryGenreName: "K-Pop",
////              releaseDate: Date(),
////              trackTimeMillis: 157705),
//        Track(poster_path: "https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/c3/64/46/c364465f-6271-8aae-93a8-b9979d2befe5/20UMGIM82075.rgb.jpg/100x100bb.jpg",
////            trackName: "Sour Candy",
////              artistName: "Lady Gaga & BLACKPINK",
////              collectionName: "The Album",
////              primaryGenreName: "K-Pop",
////               releaseDate: Date(),
////               trackTimeMillis: 157705),
//        Track(poster_path: "https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/c3/64/46/c364465f-6271-8aae-93a8-b9979d2befe5/20UMGIM82075.rgb.jpg/100x100bb.jpg",
////            trackName: "WHISTLE",
////              artistName: "BLACKPINK",
////              collectionName: "The Album",
////              primaryGenreName: "K-Pop",
////               releaseDate: Date(),
////               trackTimeMillis: 157705)
//    ]
//
//    // We can now access this array of mock tracks anywhere like this:
//    // let tracks = Tracks.mockTracks
//}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
