//
//  ViewController.swift
//  Starter
//
//  Created by Aung Ko Ko Thet on 05/12/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var imageProfile: UIImageView!
    
    @IBAction func didTapButton(_ sender: Any) {
        labelName.text = textFieldName.text
        textFieldName.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureForImage = UITapGestureRecognizer(target: self, action: #selector(onTapImage))
        imageProfile.addGestureRecognizer(tapGestureForImage)
        imageProfile.isUserInteractionEnabled = true
        
        debugPrint("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        debugPrint("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        debugPrint("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        debugPrint("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        debugPrint("viewDidDisappear")
    }
    
    @objc func onTapImage(){
        textFieldName.text = "Aung Ko Ko Thet"
    }


}

