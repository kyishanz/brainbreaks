//
//  relaxViewController.swift
//  brainbreaks
//
//  Created by Lelani Do on 7/23/21.
//

import UIKit

class relaxViewController: UIViewController {

    
   let colors: [UIColor] = [ .systemBlue, .systemGreen, .systemPink, .systemTeal, .systemGray, .systemRed, .systemYellow ]
   
    @IBAction func SaveTgw(sender: AnyObject) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let vc = storyboard.instantiateViewController(withIdentifier: "relaxAnimation") ; // MySecondSecreen the storyboard ID
        self.present(vc, animated: true, completion: nil);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red:255/255.0, green:255/255.0, blue:255/255.0, alpha:1.0)
        let label = UILabel (frame: CGRect(x:0,y:0,width:300,height:21))
        label.center = CGPoint(x:200, y:160)
        label.textAlignment = .center
        label.text = "🌿 R E L A X"
        label.font = UIFont(name: "HelveticaNeue-Thin", size: 28.0)
        self.view.addSubview(label)
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        createTimer()
    }

    func createTimer() {
        var isAnimated = false
        let myView = UIView(frame:CGRect(x: 0, y: 0, width: 200, height: 200 ))
        view.addSubview(myView)
        myView.center = view.center
        myView.backgroundColor = UIColor(red:230/255.0, green:230/255.0, blue:250/255.0, alpha:1.0)
        
        
        
        let timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true)
        { [weak self] timer in
            guard let strongSelf = self else {
                return
            }
            DispatchQueue.main.async {
//                self?.view.backgroundColor = self?.colors.randomElement() ?? .clear
                if isAnimated {
                    UIView.animate(withDuration: 1){
                        myView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
                        myView.center = strongSelf.view.center
                    }
                    isAnimated = false
                }
                else {
                    UIView.animate(withDuration: 1){
                        myView.frame = CGRect(x: 0, y: 200, width: 200, height: 200)
                        myView.center = strongSelf.view.center
                    }
                    isAnimated = true
                }
            }
        }
        timer.fire()
    }
    
    
}

