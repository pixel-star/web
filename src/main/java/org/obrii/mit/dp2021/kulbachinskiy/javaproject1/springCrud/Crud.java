
package org.obrii.mit.dp2021.kulbachinskiy.javaproject1.springCrud;

import java.util.ArrayList;
import java.util.Iterator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class Crud {

    int id = 1;

    @Autowired
    SpringInterface SInterface;

    public Crud() {
    }

    public Iterable<Users> readData() {
        return SInterface.findAll();
    }

    public ArrayList<Users> sortData(String s) {
        Iterable<Users> data = SInterface.findAll();
        Iterator<Users> iterator = data.iterator();
        ArrayList<Users> newData = new ArrayList<>();

        while (iterator.hasNext()) {
            Users item = iterator.next();
            if (item.getName().contains(s)) {
                newData.add(item);
            }
        }
        return newData;
    }

    public void createData(Users data) {
        SInterface.save(data);
    }

    public void deleteData(Integer id) {
        SInterface.deleteById(id);
    }

    public void updateData(Users data, Integer id) {
        Users update = SInterface.findById(id).get();
        update.setName(data.getName());
        update.setSurname(data.getSurname());
        update.setAge(data.getAge());

        SInterface.save(update);
    }

}
