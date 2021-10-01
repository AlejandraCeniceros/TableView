//
//  ViewController.swift
//  09
//
//  Created by Alumno on 9/28/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let nombres = ["José", "Ana", "María", "Pedro"]
    let matriculas = ["998877", "552211", "552299","445522"]
    let promedios = [ "9.1", "8.4", "9.5", "7.5"]
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 79
    }
  
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
      
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumnoController
        
        celda.lblNombre.text = nombres[indexPath.row]
        celda.lblPromedio.text = promedios[indexPath.row]
        celda.lblMatricula.text = matriculas[indexPath.row]
        
        return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func DoTapVolver(_ sender: Any) {
        
        //destruir el viewcontroller actual
        self.dismiss(animated: true, completion: nil)
    }
}

