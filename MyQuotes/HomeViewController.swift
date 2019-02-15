//
//  HomeViewController.swift
//  MyQuotes
//
//  Created by Md Zahidul Islam Mazumder on 4/11/18.
//  Copyright © 2018 Md Zahidul islam. All rights reserved.
//

import UIKit

var theme:UIColor = UIColor.black
var imageBorder = false
class HomeViewController: UIViewController {

    @IBAction func favouriteImage(_ sender: Any) {
        //favoriteImageSelect = favoriteImage
        //favImg.image = UIImage(named: "" + String(x))
        favoriteImageSelect=favoriteImage
        let saveValue = UserDefaults.standard
        saveValue.set(favoriteImageSelect, forKey: "fav")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if UserDefaults.standard.integer(forKey: "themeIndex") == 0 {
            theme = UIColor.black
        }
        else{
            theme = UIColor.white
        }
        view.backgroundColor = theme
        
        //favImage.image = UIImage(named: image)
        if imageBorder {
            homeImageView.layer.borderColor = UIColor.blue.cgColor
            homeImageView.layer.borderWidth = 4.0
        }
        else{
            homeImageView.layer.borderWidth = 0
        }
        homeImageView.layer.cornerRadius = 8.0
    }
    @IBOutlet weak var favImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var homeImageView: UIImageView!
    var x = 1
    var favoriteImage = 1
    var favoriteImageSelect = 1
    @IBAction func previous(_ sender: Any) {
        if x<1 {
            x = 10
            
            
        }
        favoriteImage = x
        homeImageView.image = UIImage(named: "" + String(x))
        
        x -= 1
        
    }
    
    @IBAction func next(_ sender: Any) {
        if x>10 {
            x = 1
            
            
        }
        favoriteImage = x
        homeImageView.image = UIImage(named: "" + String(x))
        //favoriteImage = String(x)
        x += 1
        
    }
    
}
