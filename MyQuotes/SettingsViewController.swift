//
//  SettingsViewController.swift
//  MyQuotes
//
//  Created by Md Zahidul Islam Mazumder on 6/11/18.
//  Copyright © 2018 Md Zahidul islam. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var settingsLabels: [UILabel]!
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var segmentController: UISegmentedControl!
    
    @IBOutlet weak var switchBoard: UISwitch!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func segmentTask(_ sender: Any) {
        let segmentIndex = segmentController.selectedSegmentIndex
        defaults.set(segmentIndex, forKey: "themeIndex")
        if segmentIndex == 0 {
            theme = UIColor.black
            changeTheme(color: .white)
//            for i in 0...settingsLabels.count-1 {
//                settingsLabels[i].textColor = UIColor.white
//                }
//            stepper.tintColor = UIColor.white
//            switchBoard.onTintColor = UIColor.white
            //segmentController.tintColor = UIColor.white
        }
        else{
            theme = UIColor.white
            changeTheme(color: .black)
        }
        view.backgroundColor = theme
    }
    func changeTheme(color: UIColor)  {
        for i in 0...settingsLabels.count-1 {
            settingsLabels[i].textColor = color
        }
        //stepper.tintColor = color
        switchBoard.onTintColor = color
        segmentController.tintColor = color
    }
    
    @IBAction func imageBoarder(_ sender: Any) {
        if switchBoard.isOn{
            imageBorder = true
        }
        else{
            imageBorder = false
        }
    }
    
    
    @IBAction func stepperTask(_ sender: Any) {
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //view.backgroundColor = theme
        if defaults.integer(forKey: "themeIndex") == 0 {
            view.backgroundColor = UIColor.black
            changeTheme(color: .white)
        }
        else{
            view.backgroundColor = UIColor.white
            changeTheme(color: .black)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
