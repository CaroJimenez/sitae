package mx.edu.utez.aweb.practica4.model;

import mx.edu.utez.aweb.practica4.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DaoPerson {

    public List<BeanPerson> listPersons() {

        List<BeanPerson>  listPersons = new ArrayList<>();

        try {
            Connection connection = MySQLConnection.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from persons");
            while (rs.next()){
                BeanPerson person = new BeanPerson();
                person.setId(rs.getInt("id_persons"));
                person.setName(rs.getString("name"));
                person.setEmail(rs.getString("email"));
                person.setPassword(rs.getString("password"));


                listPersons.add(person);
            };

            rs.close();
            connection.close();
            statement.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        return listPersons;
    }

    public  boolean savePerson (BeanPerson person){
       boolean result = false;
       try (
         Connection con = MySQLConnection.getConnection();
         PreparedStatement pstm = con.prepareStatement("insert into persons (name, email, password)values (?,?, ?); ")

               )
       {
        pstm.setString(1, person.getName());
        pstm.setString(2,person.getEmail());
        pstm.setString(3, person.getPassword());

        result = pstm.executeUpdate() ==1;


       }catch (Exception e){
           e.printStackTrace();
       }
        return  result;
    }

    public  BeanPerson getPerson (int id){
        BeanPerson person = new BeanPerson();

        try
                (Connection con = MySQLConnection.getConnection();
                PreparedStatement pstm = con.prepareStatement( "select  * from persons where id_persons =?");

                )
        {
            pstm.setInt(1,id);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()){
                person.setId(rs.getInt("id_persons"));
                person.setName(rs.getString("name"));
                person.setEmail(rs.getString("email"));
                person.setPassword(rs.getString("password"));

            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return person;
    }

    public boolean deletePerson(int idPerson) {
        boolean result = false;
        try (
                Connection con = MySQLConnection.getConnection();
                PreparedStatement pstm = con.prepareStatement("DELETE FROM persons WHERE id_persons=?");
        )
        {
            pstm.setInt(1, idPerson);
            result = pstm.executeUpdate() == 1;
        } catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }

    public boolean updatePerson(BeanPerson person) {
        boolean result = false;
        try (
                Connection con = MySQLConnection.getConnection();
                PreparedStatement pstm = con.prepareStatement
                        ("UPDATE  persons set name =?, email = ?, set password = ? where id_persons=?; ")

        )
        {
            pstm.setLong(3,person.getId());
            pstm.setString(1, person.getName());
            pstm.setString(2, person.getEmail());
            pstm.setString(4, person.getPassword());



            result = pstm.executeUpdate() ==1;


        }catch (Exception e){
            e.printStackTrace();

        }
        return  result;
    }
}
