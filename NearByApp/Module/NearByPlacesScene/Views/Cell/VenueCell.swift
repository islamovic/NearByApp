//
//  VenueCell.swift
//  NearByApp
//
//  Created by Islam on 8/23/20.
//  Copyright © 2020 AppLineup. All rights reserved.
//

import UIKit

class VenueCell: UITableViewCell {

    @IBOutlet var venueImageVIew: UIImageView!
    @IBOutlet var venueNameLabel: UILabel!
    @IBOutlet var venueAddressLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(venue: NearByPlacesScene.Search.VenueViewModel) {
        self.venueNameLabel.text = venue.name
        self.venueAddressLabel.text = venue.address
    }
}
