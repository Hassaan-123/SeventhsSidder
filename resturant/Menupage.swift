//
//  Menupage.swift
//  resturant
//
//  Created by cedcoss on 1/20/21.
//

import UIKit

class Menupage: UIViewController , UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        if section == 0
        {
            return 3
            
        }
        else if section == 1
        {
            return 1
        }
        else
        {
            return 1
        }
           
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0
        {
        return 130
        }
        else if indexPath.row == 1
        {
            return 340
        }
        else
        {
            return 232
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
            let dir = table.dequeueReusableCell(withIdentifier: "one", for: indexPath) as! TableViewoneTableViewCell
        
            return dir
//            dequeueReusableCell(withReuseIdentifier: "one", for: indexPath.row) as! TableViewoneTableViewCell
        }
        else if indexPath.row == 1
        {
            let dit = table.dequeueReusableCell(withIdentifier: "two", for: indexPath) as! TableViewtwo
            
            return dit
            
        }
        else{
            let dil = table.dequeueReusableCell(withIdentifier: "three", for: indexPath) as! TableViewthree
            
            return dil
            
        }
//        return UITableViewCell()
    }
    
    let arr1 = ["barfood.png","raimen.png","sandwithces.png","meditterian .png","japanese.png","italians.png","new mexcian.png","burger.png"]

 
    @IBOutlet weak var navbar: UINavigationBar!
    @IBOutlet weak var categories: UILabel!
    @IBOutlet weak var deals: UILabel!
    @IBOutlet weak var popular: UILabel!
    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        print("enter in did load")
        table.delegate = self
        table.dataSource = self
     

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
