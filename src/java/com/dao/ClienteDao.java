/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Cliente;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author juan.rios27
 */
@Stateless
public class ClienteDao implements ClienteDaoLocal {

    @PersistenceContext
    private EntityManager em;
    /**
     * 
     * @param cliente 
     */
    @Override
    public void addCliente(Cliente cliente) {
        em.persist(cliente);
    }
    
   
    /**
     * 
     * @param id_Cliente
     * @return 
     */
    @Override
    public Cliente getCliente(String id_Cliente) {
        return em.find(Cliente.class, id_Cliente);
    }
        /**
         * 
         * @return 
         */
    @Override
    public List<Cliente> getAllClientes() {
    return em.createNamedQuery("Cliente.getAll").getResultList();
    }
        /**
         * 
         * @param id_Cliente 
         */
    @Override
    public void borrarCliente(String id_Cliente) {
        em.remove(getCliente(id_Cliente));
    }

}
