//
//  StationTableViewCell.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/24.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import UIKit

class StationTableViewCell: UITableViewCell {

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
        return UINib(nibName: "StationTableViewCell", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
}
