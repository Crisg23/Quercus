/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table
@NamedQueries(
        @NamedQuery(name = "Cliente.getAll", query = "SELECT e FROM Cliente e") )

        
public class Cliente implements Serializable {

    @Id

    @GeneratedValue(strategy = GenerationType.AUTO)

    @Column

    private String id_Cliente;

    @Column

    private String nombres;

    @Column

    private String apellidos;

    @Column

    private String e_mail;

    @Column

    private String telefono;

    @Column

    private String ciudad;

    @Column

    private String contrasena;

    public Cliente() {
    }
    /**
     * 
     * @param id_Cliente
     * @param nombres
     * @param apellidos
     * @param e_mail
     * @param telefono
     * @param ciudad
     * @param contrasena 
     */
    public Cliente(String id_Cliente, String nombres, String apellidos, String e_mail, String telefono, String ciudad, String contrasena) {
        this.id_Cliente = id_Cliente;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.e_mail = e_mail;
        this.telefono = telefono;
        this.ciudad = ciudad;
        this.contrasena = contrasena;
    }
    /**
     * 
     * @return 
     */
    public String getApellidos() {
        return apellidos;
    }
    /**
     * 
     * @return 
     */
    public String getE_mail() {
        return e_mail;
    }
    /**
     * 
     * @return 
     */
    public String getTelefono() {
        return telefono;
    }
    /**
     * 
     * @return 
     */
    public String getCiudad() {
        return ciudad;
    }
    /**
     * 
     * @return 
     */
    public String getContrasena() {
        return contrasena;
    }
    /**
     * 
     * @param apellidos 
     */
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }
    /**
     * 
     * @param e_mail 
     */
    public void setE_mail(String e_mail) {
        this.e_mail = e_mail;
    }
    /**
     * 
     * @param telefono 
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    /**
     * 
     * @param ciudad 
     */
    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }
    /**
     * 
     * @param contrasena 
     */
    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    /**
     * 
     * @return 
     */
    public String getNombres() {
        return nombres;
    }
    /**
     * 
     * @param nombres 
     */
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
    /**
     * 
     * @return 
     */
    public String getId_Cliente() {
        return id_Cliente;
    }
    /**
     * 
     * @param id_Cliente 
     */
    public void setId_Cliente(String id_Cliente) {
        this.id_Cliente = id_Cliente;
    }

}
