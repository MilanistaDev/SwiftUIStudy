//
//  StationTableViewCell.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/24.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import UIKit

class StationTableViewCell: UITableViewCell, Nibable {

    @IBOutlet weak var stationNumImageView: UIImageView!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var postalCodeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var transferLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    class func build(model: MetroStationModel) -> UIView {
        let cellView = instantiateView()
        cellView.stationNumImageView.image = UIImage(named: model.stationImageName)
        cellView.stationNameLabel.text = model.stationName
        cellView.postalCodeLabel.text = model.postalCode
        cellView.addressLabel.text = model.address
        cellView.transferLabel.text = model.transfer
        return cellView
    }
}
