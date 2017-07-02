//
//  ViewController.swift
//  ejer16_sqlite_xcode
//
//  Created by Luis José Sánchez Carrasco on 19/6/17.
//  Copyright © 2017 Luis José Sánchez Carrasco. All rights reserved.
//

import UIKit
import SQLite

class ViewController: UIViewController {
    let objeto=DatabaseManagement()
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var name2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pul(_ sender: Any) {
        objeto.createTableProduct()
    }
    
    @IBAction func Listar(_ sender: Any) {
        objeto.queryAllProduct()

    }
    @IBAction func insertar(_ sender: Any) {
        if (!((nameText.text?.isEmpty)!) && !((name2Text.text?.isEmpty)!))  {
            objeto.addProduct(inputName: nameText.text!, inputName2: name2Text.text!)}
    }
}

