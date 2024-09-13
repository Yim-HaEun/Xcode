//
//  VC2.swift
//  HelloWorldApp
//
//  Created by 임하은 on 2024/09/14.
//

import UIKit

class VC2: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //여기로 드래그앤 드롭
    @IBAction func clickBtnBack(_ sender: Any) {
        //코드 추가
        if let vc = self.presentingViewController{
            vc.dismiss(animated: true, completion: nil)
        }
    }
}
