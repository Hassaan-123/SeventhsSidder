//
//  TableViewthree.swift
//  resturant
//
//  Created by cedcoss on 1/20/21.
//

import UIKit

class TableViewthree: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        btnthree.setImage(UIImage(named: "burger.png"), for: .normal)
    }

    @IBOutlet weak var btnpop: UILabel!
    @IBOutlet weak var btnthree: UIButton!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
