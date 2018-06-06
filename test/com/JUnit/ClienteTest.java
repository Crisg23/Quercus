/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.JUnit;

import com.model.Cliente;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author EDI
 */
public class ClienteTest {
    
    private static Cliente cliente1;
    public ClienteTest() {
    }
    
    /**
     * Metodo encargado de crear un cliente y asignarle todos sus atributos antes de todos los test
     */
    @BeforeClass
    public static void setUpClass() {
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
     * Metodo encargado de verificar si la entrega de el ID del cliente es correcta 
     */
    @Test
    public void getId_ClienteTest(){
        assertEquals("123",cliente1.getId_Cliente());
    }
    
    /**
     * Metodo encargado de verificar si la entrega de el nombre del cliente es correcta 
     */
    @Test
    public void getNombresTest(){
        assertEquals("Pepito",cliente1.getNombres());
    }
    
    /**
     * Metodo encargado de verificar si la entrega de el apellido del cliente es correcta 
     */
    @Test
    public void getApellidosTest(){
        assertEquals("Perez",cliente1.getApellidos());
    }
    
    /**
     * Metodo encargado de verificar si la entrega de la ciudad  del cliente es correcta 
     */
    @Test
    public void getCiudadTest(){
        assertEquals("Medellin",cliente1.getCiudad());
    }
    
    /**
     * Metodo encargado de verificar si la entrega de la contraseña del cliente es correcta 
     */
    @Test
    public void getContrasenaTest(){
        assertEquals("pepe2018",cliente1.getContrasena());
    }
    
    /**
     * Metodo encargado de verificar si la entrega de el e-mail del cliente es correcta 
     */
    @Test
    public void getE_MailTest(){
        assertEquals("pepe2018@gmail.com",cliente1.getE_mail());
    }
    
    /**
     * Metodo encargado de verificar si la entrega de el numero telefonico del cliente es correcta 
     */
    @Test
    public void getTelefonoTest(){
        assertEquals("1234567",cliente1.getTelefono());
    }
}
