<%@page import="com.mycompany.gems_store.dao.CategoryDao"%>
<%@page import="com.mycompany.gems_store.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.gems_store.entities.Product"%>
<%@page import="com.mycompany.gems_store.dao.ProductDao"%>
<%@page import="com.mycompany.gems_store.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gems_Store - Home Page</title>
        <%@include file="components/common_css_js.jsp" %>
       
       <body>
           
           <%@include file="components/navbar.jsp" %>
           <div class="row mt-3 mx-2">
               <!--fetching all the products-->
               <% String cat=request.getParameter("category");
                   //out.println(cat);
                   
                   ProductDao dao=new ProductDao(FactoryProvider.getFactory());
                   List<Product>list=null;
                   
                   if(cat==null ||cat.trim().equals("all"))
                   {
                        list=dao.getAllProducts();
                   
                   
                   }else{
                      int cid=Integer.parseInt(cat.trim());
                      list=dao.getAllProductsById(cid);
                   }
                   
                   
                   CategoryDao cdao=new CategoryDao(FactoryProvider.getFactory());
                   List<Category> clist=cdao.getCategories();
                %>
               
               
               
               <!--For Showing Categories-->
               <div class="col-md-2">
                   <div class="list-group mt-4">
                       <a href="index.jsp?category=all" class="list-group-item list-group-item-action active">
                         All Products
                       </a>
                   
                  
                   <%
                       for(Category c:clist)
                       {
                    %>
                    
                       <a href="index.jsp?category=<%= c.getCategoryId() %>" class="list-group-item list-group-item-action"><%= c.getCategoryTittle() %></a>
                       
                    <%   
                       }
                    %>
                   </div>
                   
               </div>
               <!--For Showing Products-->
               <div class="col-md-10">
                   <!--row-->
                   <div class="row mt-4">
                       
                       <div class="col-md-12">
                           <div class="card-columns">
                               <!--Traversing Products-->
                               <%
                                   for(Product p:list){
                               
                               %>
                               
                               
                               <!--Product Card-->
                               <div class="card">
                                   <img src="img/products/<%= p.getpPhoto() %>" class="card-img-top" alt="Card image cap">
                                   <div class="card-body">
                                       <h5 class="card-title"><%= p.getpName() %></h5>
                                       <p class="card-text">
                                           <%= p.getpDesc()%>
                                       </p>
                                   </div>
                                       <div class="card-footer text-center">
                                           <button class="btn custom-bg text-white" onclick="add_to_cart(<%= p.getpId() %>,'<%= p.getpName() %>',<%= p.getPriceAfterApplyingDiscount() %>)">Add to Cart</button>
                                           <button class="btn btn-outline-success"> &#8377; <%= p.getPriceAfterApplyingDiscount() %>/- <span class="text-secondary discount-label">&#8377;<%=p.getpPrice()%> <%= p.getpDiscount() %>%off</span></button>
                                       </div>
                               </div> 
                               
                               <%}
                               if(list.size()==0){
                                   out.println("<h3>No item in this category!!</h3>");
                                 }
                               %>
                           </div>
                       </div>
                       
                   </div>
                   
                   
                 
                   
                   
               </div>
               
           </div>

           
           
           
           
           
           
           <%@include file="components/common_modals.jsp"%>
       </body>
</html>