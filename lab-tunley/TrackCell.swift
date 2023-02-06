//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/3/22.
//

import UIKit
import Nuke

class TrackCell: UITableViewCell {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    /// Configures the cell's UI for the given track.
    func configure(with track: Track) {
        trackNameLabel.text = track.title
        artistNameLabel.text = track.overview
        let imageUrl = URL(string: "https://image.tmdb.org/t/p/w500" + track.poster_path)!

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: imageUrl, into: trackImageView)
        
    }

}
