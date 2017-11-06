package com.indigoteam.controller;

import com.indigoteam.model.Blog;
import com.indigoteam.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BlogController {
    private BlogService blogService;

    @Autowired(required = true)
    @Qualifier(value = "blogService")
    public void setBlogService(BlogService blogService) {
        this.blogService = blogService;
    }

    @RequestMapping(value="blogs",method = RequestMethod.GET)
    public String listBlogs(Model model){
        model.addAttribute("blog",new Blog());
        model.addAttribute("listBlogs",this.blogService.listBlogs());
        return "blogs";
    }

    @RequestMapping(value = "/blogs/add", method = RequestMethod.POST)
    public String addBlog(@ModelAttribute("blog") Blog blog){
        if(blog.getId() == 0){
            this.blogService.addBlog(blog);
        }else{
            this.blogService.updateBlog(blog);
        }

        return "redirect:/blogs";
    }


    @RequestMapping("/remove/{id}")
    public String removeBlog(@PathVariable("id") int id){
        this.blogService.removeBlog(id);

        return "redirect:/blogs";
    }

    @RequestMapping("edit/{id}")
    public String editBook(@PathVariable("id") int id, Model model){
    model.addAttribute("blog", this.blogService.getBlogById(id));
    model.addAttribute("listBooks", this.blogService.listBlogs());

    return "redirect:/blogs";
    }


    @RequestMapping("blogdata/{id}")
    public String blogData(@PathVariable("id")int id, Model model){
        model.addAttribute("blog", this.blogService.getBlogById(id));

        return "bookdata";
    }

}
