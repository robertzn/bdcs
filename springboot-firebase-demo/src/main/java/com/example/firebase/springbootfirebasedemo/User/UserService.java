package com.example.firebase.springbootfirebasedemo.User;


import com.example.firebase.springbootfirebasedemo.entity.User;
import com.google.api.core.ApiFuture;
import com.google.cloud.firestore.DocumentReference;
import com.google.cloud.firestore.DocumentSnapshot;
import com.google.cloud.firestore.Firestore;
import com.google.firebase.cloud.FirestoreClient;
import org.springframework.boot.BootstrapContext;
import org.springframework.stereotype.Service;

import java.util.concurrent.ExecutionException;

@Service
public class UserService {

   private static final String COLLECTION_NAME = "bdcUsers";
    private BootstrapContext future;
    private DocumentSnapshot doucument;
    private String name;

    public String saveUser(User user) throws ExecutionException, InterruptedException {

           Firestore dbFirestore = FirestoreClient.getFirestore();
            DocumentReference documentReference=dbFirestore.collection(COLLECTION_NAME).document(name);

            ApiFuture<DocumentSnapshot> future=documentReference.get();

            DocumentSnapshot document=future.get();

            user = null;
          if(document.exists()){
              user = doucument.toObject(User.class);
              return String.valueOf(user);
          }else {
              return null;
          }
        }

}