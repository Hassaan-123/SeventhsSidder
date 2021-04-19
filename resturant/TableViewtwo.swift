//
//  TableViewtwo.swift
//  resturant
//
//  Created by cedcoss on 1/20/21.
//

import UIKit

class TableViewtwo: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let arr3 = ["barfood.png","raimen.png","sandwithces.png"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sqr = cv2.dequeueReusableCell(withReuseIdentifier: "square", for: indexPath) as! CollectionViewCellB
        sqr.btnsqr.setImage(UIImage(named: arr3[indexPath.row]), for: .normal)
        
        return sqr
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 420, height: 220)
    }

   
    @IBOutlet weak var bestdeal: UILabel!
    @IBOutlet weak var cv2: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cv2.delegate = self
        cv2.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
