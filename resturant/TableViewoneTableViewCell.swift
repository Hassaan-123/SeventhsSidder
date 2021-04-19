//
//  TableViewoneTableViewCell.swift
//  resturant
//
//  Created by cedcoss on 1/20/21.
//

import UIKit

class TableViewoneTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    let arr = ["barfood.png","raimen.png","sandwithces.png","meditterian .png","japanese.png","italians.png","new mexcian.png","burger.png"]
 
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cir = cv.dequeueReusableCell(withReuseIdentifier: "circles", for: indexPath) as! CollectionViewCellA
        cir.btncir.setImage(UIImage(named: arr[indexPath.row]), for: .normal)
         
        cir.btncir.layer.cornerRadius = 40
        cir.btncir.clipsToBounds = true
        return cir
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 80)
    }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
   
     
    @IBOutlet weak var pop: UILabel!
    
    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var btncircle: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cv.delegate = self
        cv.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
