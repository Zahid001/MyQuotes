//
//  FavoriteViewController.swift
//  MyQuotes
//
//  Created by Md Zahidul Islam Mazumder on 4/11/18.
//  Copyright © 2018 Md Zahidul islam. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {

    @IBOutlet weak var favImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = theme
        let getImgValue = UserDefaults.standard
        let value =   getImgValue.integer(forKey: "fav")
        
        let image = String( value )
        favImage.image = UIImage(named: image)
        if imageBorder {
            favImage.layer.borderColor = UIColor.blue.cgColor
            favImage.layer.borderWidth = 4.0
        }
        else{
            favImage.layer.borderWidth = 0
        }
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
