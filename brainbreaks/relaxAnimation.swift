
//
// ViewController.swift
// code
//
// Created by Lelani Do on 7/20/21.
//
import UIKit
class relaxAnimationTableViewController: UITableViewController {
    let colors: [UIColor] = [ .systemBlue, .systemGreen, .systemPink, .systemTeal, .systemGray, .systemRed, .systemYellow ]
  override func viewDidLoad() {
    super.viewDidLoad()
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
    myView.backgroundColor = .link
    let timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true)
    { [weak self] timer in
      guard let strongSelf = self else {
        return
      }
      DispatchQueue.main.async {
//        self?.view.backgroundColor = self?.colors.randomElement() ?? .clear
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
