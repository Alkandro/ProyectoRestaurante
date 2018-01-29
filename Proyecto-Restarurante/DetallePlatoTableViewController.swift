//
//  DetallePlatoTableViewController.swift
//  Proyecto-Restarurante
//
//  Created by Alejandro Sklar on 6/11/17.
//  Copyright © 2017 Alejandro Sklar. All rights reserved.
//

import UIKit

class DetallePlatoTableViewController: UITableViewController {
    //DAO
    let dao = DataBase()
    //Efecto blur
    //@IBOutlet var efectoBlur: UIVisualEffectView!
    //Modal de agregar platos
    var cantidadPlato:Int!
    @IBOutlet var viewContainer: UIView!
    @IBOutlet weak var cantidadPlatoLbl: UILabel!
    @IBAction func restarCantidad(_ sender: Any) {
        if cantidadPlato > 0 {
        cantidadPlato = cantidadPlato - 1
        }
        cantidadPlatoLbl.text = "\(cantidadPlato!)"
    }
    
    @IBAction func agregarCantidad(_ sender: Any) {
        cantidadPlato = cantidadPlato + 1
    cantidadPlatoLbl.text = "\(cantidadPlato!)"
    
}
    
    //
    
    var parametro2 = [String:String]()
    
    @IBOutlet weak var imagenP: UIImageView!
    @IBOutlet weak var nombreP: UILabel!
    @IBOutlet weak var descripcionP: UILabel!
    @IBOutlet weak var precioP: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cantidadPlato = 1
        cantidadPlatoLbl.text = "\(cantidadPlato!)"
        let logo = UIImage(named : "v2_logo")
        self.navigationItem.titleView = UIImageView(image: logo)
        
        //valores iniciales
        nombreP.text = parametro2["nombre_plato"]
        if let nombreImg = parametro2["archivo_plato"] {
        imagenP.image = UIImage(named: nombreImg)
        }
        precioP.text = parametro2["precio_plato"]
        descripcionP.text = parametro2["descripcion_plato"]
        
        
    }
    
    @IBAction func agregandoPreferido(_ sender: Any) {
    }
    
    @IBAction func agregarOrden(_ sender: Any) {
        
      // efectoBlur.frame = view.frame
      // self.view.insertSubview(efectoBlur, at: 1)
      //viewContainer.center = view.center
      // self.view.insertSubview(viewContainer, at: 2)
        
        // esto era para que aparezca em el medio
        viewContainer.center = view.center
        self.view.addSubview(viewContainer)
    }
    //aagregar boton confirmarOrden
    @IBAction func confirmandoOrden(_ sender: Any) {
       //efectoBlur.removeFromSuperview()
        viewContainer.removeFromSuperview()
        
        let nombrePlato = nombreP.text
        let precioPlato = precioP.text
        if let cantidad = cantidadPlato {
        
        let insertOrdenQ = "insert into ordenes_pedido (nombre_plato,precio_unit,cantidad_plato) values ('\(nombrePlato!)','\(precioPlato!)','\(cantidad)')"
        dao.ejecutarInsert(insertOrdenQ)
        
        let datoOrden = dao.ejecutarSelect("select * from ordenes_pedido")
        print(datoOrden!)
    }
    }

}
