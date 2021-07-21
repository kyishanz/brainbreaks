//
//  ViewController.swift
//  brainbreaks
//
//  Created by Kaitlyn Zhang on 7/20/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        button.layer.cornerRadius = 25.8
        button.tintColor = UIColor.white
    }
    


}

