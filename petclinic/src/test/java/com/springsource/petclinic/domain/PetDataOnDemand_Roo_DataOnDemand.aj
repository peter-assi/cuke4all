// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.domain;

import com.springsource.petclinic.domain.OwnerDataOnDemand;
import com.springsource.petclinic.domain.Pet;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect PetDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PetDataOnDemand: @Component;
    
    private Random PetDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<Pet> PetDataOnDemand.data;
    
    @Autowired
    private OwnerDataOnDemand PetDataOnDemand.ownerDataOnDemand;
    
    public Pet PetDataOnDemand.getNewTransientPet(int index) {
        com.springsource.petclinic.domain.Pet obj = new com.springsource.petclinic.domain.Pet();
        setSendReminders(obj, index);
        setName(obj, index);
        setWeight(obj, index);
        setOwner(obj, index);
        setType(obj, index);
        return obj;
    }
    
    private void PetDataOnDemand.setSendReminders(Pet obj, int index) {
        java.lang.Boolean sendReminders = true;
        obj.setSendReminders(sendReminders);
    }
    
    private void PetDataOnDemand.setName(Pet obj, int index) {
        java.lang.String name = "name_" + index;
        obj.setName(name);
    }
    
    private void PetDataOnDemand.setWeight(Pet obj, int index) {
        java.lang.Float weight = new Integer(index).floatValue();
        obj.setWeight(weight);
    }
    
    private void PetDataOnDemand.setOwner(Pet obj, int index) {
        com.springsource.petclinic.domain.Owner owner = ownerDataOnDemand.getRandomOwner();
        obj.setOwner(owner);
    }
    
    private void PetDataOnDemand.setType(Pet obj, int index) {
        com.springsource.petclinic.reference.PetType type = com.springsource.petclinic.reference.PetType.class.getEnumConstants()[0];
        obj.setType(type);
    }
    
    public Pet PetDataOnDemand.getSpecificPet(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Pet obj = data.get(index);
        return Pet.findPet(obj.getId());
    }
    
    public Pet PetDataOnDemand.getRandomPet() {
        init();
        Pet obj = data.get(rnd.nextInt(data.size()));
        return Pet.findPet(obj.getId());
    }
    
    public boolean PetDataOnDemand.modifyPet(Pet obj) {
        return false;
    }
    
    public void PetDataOnDemand.init() {
        data = com.springsource.petclinic.domain.Pet.findPetEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Pet' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<com.springsource.petclinic.domain.Pet>();
        for (int i = 0; i < 10; i++) {
            com.springsource.petclinic.domain.Pet obj = getNewTransientPet(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}