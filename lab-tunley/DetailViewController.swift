//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!

    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!

    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageUrl = URL(string: "https://image.tmdb.org/t/p/original" + track.backdrop_path)!
        Nuke.loadImage(with: imageUrl, into: trackImageView)
        trackNameLabel.text = track.title
        artistLabel.text = track.overview
        albumLabel.text = String(track.vote_count)
        //genreLabel.text = String(track.vote_averag)

        // Create a date formatter to style our date and convert it to a string
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .medium
//        releaseDateLabel.text = dateFormatter.string(from: track.releaseDate)
//
//        // Use helper method to convert milliseconds into `mm:ss` string format
//        durationLabel.text = formattedTrackDuration(with: track.trackTimeMillis)

    }


}
