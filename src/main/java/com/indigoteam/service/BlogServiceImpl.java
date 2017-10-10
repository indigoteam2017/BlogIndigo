package com.indigoteam.service;


import com.indigoteam.dao.BlogDao;
import com.indigoteam.model.Blog;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class BlogServiceImpl implements BlogService{
    private BlogDao blogDao;

    public void setBlogDao(BlogDao blogDao) {
        this.blogDao = blogDao;
    }

    @Override
    @Transactional
    public List<Blog> listBlogs() {
        return this.blogDao.listBlogs();
    }
}
