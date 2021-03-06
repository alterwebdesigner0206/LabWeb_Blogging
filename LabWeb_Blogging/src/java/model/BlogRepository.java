/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBContext;
import entity.Blog;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ViruSs0209
 */
public class BlogRepository {

    private DBContext db;

    public BlogRepository() throws Exception {
        try {
            this.db = DBContext.getInstance();
        } catch (Exception ex) {
            ex.printStackTrace();
            throw ex;
        }
    }

    public ArrayList<Blog> getAll() throws Exception {
        ArrayList<Blog> blogs = new ArrayList<>();

        try {
            String sql = "SELECT Blog.id, title, content, BlogType.type, published, author , banner FROM Blog "
                    + "JOIN BlogType ON BlogType.id = Blog.type WHERE Blog.type != 4 ORDER BY published DESC";

            PreparedStatement statement = this.db.getConnection().prepareCall(sql);

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt(1);
                String title = rs.getString(2);
                String content = rs.getString(3);
                String type = rs.getString(4);
                Date published = rs.getDate(5);
                String author = rs.getString(6);
                String banner = rs.getString(7);

                Blog blog = new Blog(id, title, type, author, banner, content, published);

                blogs.add(blog);

            }
        } catch (Exception ex) {
            throw ex;
        }

        return blogs;
    }

    public Blog getBlogById(int id) throws Exception {
        try {
            String sql = "SELECT Blog.id, title, content, BlogType.type, published, author , banner FROM Blog "
                    + "JOIN BlogType ON BlogType.id = Blog.type WHERE Blog.id = " + id;

            PreparedStatement statement = this.db.getConnection().prepareCall(sql);

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                int blogId = rs.getInt(1);
                String title = rs.getString(2);
                String content = rs.getString(3);
                String type = rs.getString(4);
                Date published = rs.getDate(5);
                String author = rs.getString(6);
                String banner = rs.getString(7);

                return new Blog(blogId, title, type, author, banner, content, published);
            }
        } catch (Exception ex) {
            throw ex;
        }

        return null;
    }

    public Blog getAboutMeBlog() throws Exception {
        try {
            String sql = "SELECT Blog.id, title, content, BlogType.type, published, author , banner FROM Blog "
                    + "JOIN BlogType ON BlogType.id = Blog.type WHERE Blog.type = 4";

            PreparedStatement statement = this.db.getConnection().prepareCall(sql);

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt(1);
                String title = rs.getString(2);
                String content = rs.getString(3);
                String type = rs.getString(4);
                Date published = rs.getDate(5);
                String author = rs.getString(6);
                String banner = rs.getString(7);

                return new Blog(id, title, type, author, banner, content, published);
            }
        } catch (Exception ex) {
            throw ex;
        }

        return null;
    }

    public void addViews() {
        try {
            java.util.Date todayButUtil = new java.util.Date();
            Date today = new Date(todayButUtil.getTime());
            String sql = "INSERT INTO [dbo].[Views]\n"
                    + "           ([ViewDate])\n"
                    + "     VALUES\n"
                    + "           (?)";
            PreparedStatement ps = this.db.getConnection().prepareStatement(sql);
            ps.setDate(1, today);
            ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(BlogRepository.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int countViews() {
        try {
            java.util.Date todayButUtil = new java.util.Date();
            Date today = new Date(todayButUtil.getTime());
            String sql = "  SELECT COUNT(ID) AS ViewPage\n"
                    + "  FROM Views ";
            PreparedStatement pc = this.db.getConnection().prepareCall(sql);
            ResultSet rs = pc.executeQuery();
            while(rs.next()){
                int count = rs.getInt(1);
                return count;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogRepository.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

//    public ArrayList<Blog> getListByPage(int page, int itemsPerPage, ArrayList<Blog> totalBlogs) {
//        ArrayList<Blog> blogsPyPage = new ArrayList<>();
//        
//        int end = itemsPerPage * page - 1;
//        int start = end - itemsPerPage + 1;
//
//        if (end + 1 > totalBlogs.size()) {
//            end = totalBlogs.size() - 1;
//        }
//
//        for (int i = start; i <= end; i++) {
//            blogsPyPage.add(totalBlogs.get(i));
//        }
//
//        return blogsPyPage;
//    }
}
