//
//  ViewController.swift
//  LearnAnimation
//
//  Created by Rian Erlangga Saputra on 06/10/20.
//  Copyright © 2020 rerlanggas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: { [weak self] in
            guard let self = self else { return }
            self.button.transform = CGAffineTransform.init(translationX: 0, y: 300)
        }) { [weak self] _ in
            UIView.animate(withDuration: 1, animations: {
                self?.button.transform = CGAffineTransform.identity
            })
        }
    }
    
}

