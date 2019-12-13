//
//  ViewController.swift
//  CheckNorris
//
//  Created by Mariana Beilune Abad on 22/11/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var factLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(receiveFact), name: NSNotification.Name("recebeUmFato"), object: nil)
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

