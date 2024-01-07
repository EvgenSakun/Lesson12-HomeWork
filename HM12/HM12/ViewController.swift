//
//  ViewController.swift
//  HM12
//
//  Created by Evgeny Sakun on 7.01.24.
//

import UIKit



class ViewController: UIViewController, DataDelegate {
    
    
    func sendData(_ data: String) {
        infoLabel.text = data
    }
    
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBAction func openView(_ sender: Any) {
        let storyboard = UIStoryboard(name: "View2", bundle: nil)
        let view2viewController = storyboard.instantiateViewController(withIdentifier: "View2ViewController") as! View2ViewController
        view2viewController.delegate = self
        view2viewController.modalPresentationStyle = .fullScreen
        present(view2viewController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


