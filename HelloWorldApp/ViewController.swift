//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by 임하은 on 2024/09/05.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //테이블뷰에서 표현해야 할 행의 개수를 나타냄
        return self.arrNo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //
        let cell = self.TblList.dequeueReusableCell(withIdentifier: "TableViewCell") as!
        TableViewCell
        cell.lblNo.text = String(self.arrNo[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
    }
    
 
   @IBOutlet var lblHello: UILabel!
    
    @IBOutlet var txtName: UITextField!
    
    @IBOutlet var TblList: UITableView!
    //추가된 코드
    var arrNo:[Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //추가된 코드
        self.TblList.delegate = self
        self.TblList.dataSource = self
        for index in 1...10{
            self.arrNo.append(index)
        }
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func clickBtnMove(_ sender: Any) {
        //코드 작성
        if let vc = self.storyboard? .instantiateViewController(withIdentifier: "VC2"){
            vc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
            self.present(vc,animated:  true, completion: nil)
        }
    }
    @IBAction func changeHello(_ sender: AnyObject) {
        self.lblHello.text = self.txtName.text! + "님 안녕하세요 "
    }
}

