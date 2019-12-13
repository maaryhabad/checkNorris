//
//  ViewController.swift
//  CheckNorris
//
//  Created by Mariana Beilune Abad on 22/11/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import UIKit
import AnimatedCollectionViewLayout

class ViewController: UIViewController {

   @IBOutlet weak var factLabel: UILabel!
    
    var selector = #selector(receiveFact)
    var notification = NSNotification.Name("recebeUmFato")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: selector, name: notification, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        factLabel.text = "Aguardando"
    }
    
    func updateData(fact: Fact) {
        
        DispatchQueue.main.async {
            self.factLabel.text = fact.value

        }
        // requestAPI { facts in
            // faz oq eu  preciso fazer com meus fatos.
        //}
      }
    
    @objc func receiveFact(_ notification: Notification) {
        if let fact = notification.userInfo?["newFact"] as? Fact {
            updateData(fact: fact)
        }
    }
}
