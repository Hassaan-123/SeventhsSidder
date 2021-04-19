//
//  ViewController.swift
//  resturant
//
//  Created by cedcoss on 1/18/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
            }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let shell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        shell.bttn.setImage(UIImage(named: arr[indexPath.row]), for: .normal)
        
        shell.labe.text = "\(arr1[indexPath.row])"
       
        shell.bttn.alpha = 00.55
//        let blur = UIVisualEffectView(effect: UIBlurEffect(style:
//                                                            UIBlurEffect.Style.Light))

        
//        shell.bttn.addSubview(view : )
//        shell.backgroundColor = .red
        return shell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200,height: 200)
    }
    
    
    
    @IBOutlet weak var navibar: UINavigationItem!
    
    @IBOutlet weak var barfood: UIImageView!
    
    @IBOutlet weak var raimen: UIImageView!
    
    @IBOutlet weak var sandwich: UIImageView!
    
    @IBOutlet weak var mediterian: UIImageView!
    
    @IBOutlet weak var collection: UICollectionView!
  
    
    @IBOutlet weak var cart: UIButton!
    
    @IBOutlet weak var menu: UIButton!
    @IBAction func btnmenu(_ sender: Any) {
    
          let nex = self.storyboard?.instantiateViewController(withIdentifier: "menue") as! Menupage
         self.present(nex, animated: true, completion: nil)
        
    }
   
    let arr = ["barfood.png","raimen.png","sandwithces.png","meditterian .png","japanese.png","italians.png","new mexcian.png","burger.png"]
let arr1 = ["barfood","raimen","sandwithces","meditterian","japanese","italians","new mexcian","burger"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collection.delegate = self
        collection.dataSource = self
        self.navigationItem.title = "Menu"
        
    
    }


}

