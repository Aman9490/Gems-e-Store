package com.mycompany.gems_store.dao;

import com.mycompany.gems_store.entities.Category;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class CategoryDao {
    
    private SessionFactory factory;
    
    public CategoryDao(SessionFactory factory){
        this.factory=factory;
    }
    //Saves the category to database
    public int saveCategory(Category cat)
    {
       
        Session session=this.factory.openSession();
        Transaction tx=session.beginTransaction();
        
        int catId=(int) session.save(cat);
        
        tx.commit();
        session.close();
        return catId;
    }
     public List<Category> getCategories() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Category");
        List<Category> list = query.list();
        return list;
    }
     public Category getCategoryById(int cid){
         //cat is a local variable so it is defined above try catch having bydefault value null
         Category cat=null;
         try{
             Session session=this.factory.openSession();
             cat=session.get(Category.class, cid);
             session.close();
             
             
             
         }catch (Exception e){
             e.printStackTrace();
         }
         return cat;
     }
     
     
     
}
