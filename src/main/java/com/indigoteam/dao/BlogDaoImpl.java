package com.indigoteam.dao;


import com.indigoteam.model.Blog;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BlogDaoImpl implements BlogDao{
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Blog> ListBlogs() {
        Session session=this.sessionFactory.getCurrentSession();
        List<Blog> bloglist=session.createQuery("from listarticles").list();
        return null;
    }
}
