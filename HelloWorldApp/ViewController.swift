//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by 임하은 on 2024/09/05.
//

import UIKit

class ViewController: UIViewController {
 
   @IBOutlet var lblHello: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func changeHello(_ sender: Any) {
        //코드 작성
        self.lblHello.text = "Hello Swift!"
    }
}

