/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.kulbachinskiy.kulba.storeHouse;

import java.util.ArrayList;
import java.util.List;
import org.obrii.mit.dp2021.kulbachinskiy.kulba.data.Data;

/**
 *
 * @author danik
 */
public class Store {
    
    private static Store storeInstance = new Store();
    private static List<Data> dataStore;
    
    private Store(){
        dataStore = new ArrayList<>();
        dataStore.add(new Data(0,"rrr",48));

    }
    
    public static Store getInstance(){
        return storeInstance;
    }
    
    
    public static List<Data> getStore(){
        return dataStore;
    }
}
