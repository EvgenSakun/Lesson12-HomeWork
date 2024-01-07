//
//  View2ViewController.swift
//  HM12
//
//  Created by Evgeny Sakun on 7.01.24.
//

import Foundation
import UIKit


protocol DataDelegate: AnyObject{
    func sendData(_ data: String)
}

class View2ViewController: UIViewController {
    
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!

    weak var delegate: DataDelegate?
    
    @IBAction func sendTo(_ sender: Any) {
        var data = "\(text1.text ?? ""), \(text2.text ?? ""), \(text3.text ?? "")"
        delegate?.sendData(data)
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    

}
