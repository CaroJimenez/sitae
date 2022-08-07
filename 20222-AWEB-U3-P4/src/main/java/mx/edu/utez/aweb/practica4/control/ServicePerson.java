package mx.edu.utez.aweb.practica4.control;

import mx.edu.utez.aweb.practica4.model.BeanPerson;
import mx.edu.utez.aweb.practica4.model.DaoPerson;

import java.util.ArrayList;
import java.util.List;

public class ServicePerson {

    public List<BeanPerson> listPerson() {
        DaoPerson daoPerson = new DaoPerson();
        List<BeanPerson> listPersons = daoPerson.listPersons();

        return listPersons;
    };

    public boolean updatePerson(BeanPerson person) {
        DaoPerson daoPerson = new DaoPerson();
        boolean result = daoPerson.updatePerson(person);

        return result;
    };

    public boolean deletePerson(int idPerson) {
        DaoPerson daoPerson = new DaoPerson();
        boolean result = daoPerson.deletePerson(idPerson);
      return result;
    };

    public BeanPerson getPerson(int id) {
        DaoPerson  daoPerson = new DaoPerson();
        BeanPerson person = daoPerson.getPerson(id);
        return person;
    }

    public boolean savePerson(BeanPerson person) {

        DaoPerson daoPerson = new DaoPerson();
        boolean  result = daoPerson.savePerson(person);

        return result;
    }


}
