/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Cliente;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author juan.rios27
 */
@Local
public interface ClienteDaoLocal {

    void addCliente(Cliente cliente);

    Cliente getCliente(String id_Cliente);
    
    List<Cliente> getAllClientes();
    
    void borrarCliente(String id_Cliente);
}
