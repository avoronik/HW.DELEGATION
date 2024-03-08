//
//  ViewController.swift
//  HW.DELEGATION
//
//  Created by Anastasia on 08/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    var text: String = ""
    
    @IBOutlet weak var titleLable: UILabel!
    
   
    
    
override func viewDidLoad() {
    super.viewDidLoad()
    
    titleLable.text = text
    
}

    @IBAction func goToEditProfile(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        nextVC.delegate = self
        self.navigationController?.pushViewController(nextVC, animated: true)

    }
    
}

extension ViewController: SecondViewControllerDelegate {
    func send(_ text1: String, _ text2: String, _ text3: String) {
        titleLable.text = """
\(text1)

\(text2)

\(text3)
"""
    }
}
