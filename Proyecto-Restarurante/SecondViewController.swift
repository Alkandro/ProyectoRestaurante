//
//  SecondViewController.swift
//  Proyecto-Restarurante
//
//  Created by Alejandro Sklar on 23/10/17.
//  Copyright © 2017 Alejandro Sklar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableCategoria: UITableView!
    var arrayCategorias = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        arrayCategorias = DataBase().ejecutarSelect("SELECT * FROM categoria_platos") as! [[String:String]]
        
        
        
        
        /* let c1 = ["idc":"1","nomc":"Entradas"]
        let c2 = ["idc":"2","nomc":"Segundos"]
        let c3 = ["idc":"3","nomc":"Sopas"]
        let c4 = ["idc":"4","nomc":"Pstres"]
        let c5 = ["idc":"5","nomc":"Vinos"] */
        
     //arrayCategorias = [c1,c2,c3,c4,c5]
        
        //Esto se coloca para borrar la palabra back del navegation
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//Metodos delegados del table view
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCategorias.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCategoria", for: indexPath) as! CategoriaCellTableViewCell
        let nombreCategoria = arrayCategorias[indexPath.row]["nombre_categoria"]
        
        //celda.textLabel?.text = nombreCategoria
        celda.nombreCatCell.text = nombreCategoria
        
        return celda
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "categoria2platos" {
            if let indexPath = self.tableCategoria.indexPathForSelectedRow {
                let categoriaSelected = arrayCategorias[indexPath.row]
                let objDestino = segue.destination as! PlatosTableViewController
                objDestino.parametro1 = categoriaSelected
            }
        }
        
    }
}



//ver la aula numero 70 que explica los delegados las secciones y las filas
