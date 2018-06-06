/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.JUnit;

import com.dao.ClienteDao;
import com.model.Cliente;
import com.dao.ClienteDaoLocal;
import java.util.ArrayList;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author EDI
 */
public class ClienteDaoTest {
    
    private Cliente cliente1;
    private ClienteDaoLocal clienteDao;
    private static Cliente cliente2;
   
    /**
     * Metodo encargado de crear un nuevo usuario para cada prueba
     */
    @Before
    public void before()
    {
        clienteDao=new ClienteDao();
        cliente1=new Cliente();
        cliente1.setId_Cliente("123");
        cliente1.setNombres("Pepito");
        cliente1.setApellidos("Perez");
        cliente1.setCiudad("Medellin");
        cliente1.setContrasena("pepe2018");
        cliente1.setE_mail("pepe2018@gmail.com");
        cliente1.setTelefono("1234567");
    }
    
    /**
     *  Metodo encargado de agregar un nuevo cliente a la base de datos 
     */
    @Test (expected =  NullPointerException.class)
    public void addClientTest() 
    {
        clienteDao.addCliente(cliente1);
    }
    
    /**
     *  Metodo encargado de buscar un cliente desde la base de datos por medio de su ID
     */
    @Test (expected =  NullPointerException.class)
    public void getClienteTest()
    {
        cliente2=clienteDao.getCliente(cliente1.getId_Cliente());
        assertEquals(cliente1,cliente2 );
    }
    
    /**
     * Metodo encargado de mostrar 
    */
    @Test (expected =  NullPointerException.class)
    public void getAllClientesTest() 
    {
         ArrayList<Cliente> clienteLista= new ArrayList<>();
         clienteLista.add(cliente1);
         assertEquals(clienteLista,clienteDao.getAllClientes());
    }
    
    /**
     * Metodo encargado de borrar el cliente agregado anteriormente despues de todas las pruebas
     */
    @Test
    public void borrarClienteTest()
    {
        clienteDao.borrarCliente(cliente1.getId_Cliente());
        ArrayList<Cliente> clienteLista= new ArrayList<>();
        assertEquals(clienteLista,clienteDao.getAllClientes());
    }
}