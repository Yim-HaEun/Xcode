//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by 임하은 on 2024/09/05.
//

import UIKit

class ViewController: UIViewController {
 
   @IBOutlet var lblHello: UILabel!
    
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func changeHello(_ sender: AnyObject) {
        //수정
        self.lblHello.text = self.txtName.text! + "님 안녕하세요 "
    }
}

