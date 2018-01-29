//
//  OrdenesViewController.swift
//  Proyecto-Restarurante
//
//  Created by Alejandro Sklar on 27/1/18.
//  Copyright © 2018 Alejandro Sklar. All rights reserved.
//

import UIKit

class OrdenesViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var dao = DataBase()
    var arrayPlatosOrdenes = [[String:String]]()
    @IBOutlet weak var montoTotalLbl: UILabel!
    @IBOutlet weak var tableViewOrdenes: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func viewWillAppear(_ animated: Bool) {
        arrayPlatosOrdenes = dao.ejecutarSelect("select * from ordenes_pedido order by id_pedido desc") as! [[String : String]]
        tableViewOrdenes.reloadData()
       print(arrayPlatosOrdenes)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ordenarPedidoalServidor(_ sender: Any) {
    }
}
    extension OrdenesViewController {
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
            
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrayPlatosOrdenes.count
            
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellorden", for: indexPath) as! OrdenCellTableViewCell
            cell.nombreCell.text = arrayPlatosOrdenes[indexPath.row]["nombre_plato"]
            cell.cantidadCell.text = arrayPlatosOrdenes[indexPath.row]["cantidad_plato"]
            cell.precioUnitarioCell.text = arrayPlatosOrdenes[indexPath.row]["precio_unit"]
            let semitot = cell.calculoSemiTotal()
            cell.precioTotalCell.text = "\(semitot)"
            return cell
        }

}
