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
        let datoOrden = dao.ejecutarSelect("select * from ordenes_pedido order dy id_pedido desc")
        print(datoOrden!)
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
            return 10
            
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellorden", for: indexPath) as! OrdenCellTableViewCell
            
            return cell
        }

}
