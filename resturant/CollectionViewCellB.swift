//
//  CollectionViewCellB.swift
//  resturant
//
//  Created by cedcoss on 1/20/21.
//

import UIKit

class CollectionViewCellB: UICollectionViewCell, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var btnsqr: UIButton!
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 370, height: 255)
    }
}
