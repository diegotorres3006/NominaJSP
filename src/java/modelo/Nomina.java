/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author diant
 */
public class Nomina extends Persona{
     
     public  int salario;
     public  int dias;

    public Nomina(String nombre, String dni, int salario, int dias) {
        this.nombre = nombre;
        this.dni = dni;
        this.salario = salario;
        this.dias = dias;
    }

    

    public int getSalario() {
        return salario;
    }

    public void setSalario(int salario) {
        this.salario = salario;
    }

    public int getDias() {
        return dias;
    }

    public void setDias(int dias) {
        this.dias = dias;
    }
      
    public int getAux(){
          int auxilio = 0;
        if (this.salario < (2 * 908526)) {
            auxilio = (106454 / 30) * this.getDias();
        } else {
            auxilio = 0;
        }
        return auxilio;
          
      }
      
      public int getSalud(){
          
          int salud;
          
           salud = (int) (0.04 *this.salario/30*this.dias) ;
           
           return salud;
          
      }
      public int getPension(){
          
        int pension;
          
           pension = (int) (0.04 *this.salario/30*this.dias) ;
           
           return pension;
          
      }
      
      public int neto(){
          int neto;
          
          neto= (this.salario/30*this.dias)+ getAux() - getSalud() - getPension();
          
                  return neto;
      }
      
      
      
  
}
