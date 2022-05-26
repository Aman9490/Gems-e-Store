<%@page import="com.mycompany.gems_store.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.gems_store.dao.CategoryDao"%>
<%@page import="com.mycompany.gems_store.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
        <%@include file ="components/common_css_js.jsp"%>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>

        <div class="container admin">
            <div class="row">
                <div class="container-fluid">
                    <%@include file="components/message.jsp" %>
                </div>


                <!--First Column-->
                <div class="col-md-4">
                    <!--First Box-->
                    <div class="card">
                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width:125px;" class="img-fluid rounded-circle" src="img/man.png" alt="user_icon">


                            </div>


                            <h1>234</h1>
                            <h1>Users</h1>
                        </div>
                    </div>



                </div>

                <!--Second Column-->
                <div class="col-md-4">
                    <!--Second Box-->
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width:125px;" class="img-fluid rounded-circle" src="img/options.png" alt="user_icon">


                            </div>


                            <h1>324</h1>
                            <h1>Categories</h1>
                        </div>
                    </div>



                </div>

                <!--Third Column-->
                <div class="col-md-4">
                    <!--Third Box-->
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width:125px;" class="img-fluid rounded-circle" src="img/delivery-box.png" alt="user_icon">


                            </div>
                            <h1>214</h1>
                            <h1>Products</h1>
                        </div>
                    </div>



                </div>

            </div>
            <!--second row-->

            <div class="row mt-3">

                <!--second :row first col-->
                <div class="col-md-6">


                    <div class="card" data-toggle="modal" data-target="#add-category-modal">

                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid rounded-circle" src="img/shopping-cart.png" alt="user_icon">

                            </div> 

                            <p class="mt-2">Click here to add new category</p>
                            <h1 class="text-uppercase text-muted">Add Category</h1>

                        </div>

                    </div>
                </div>

                <!--second row : second col-->

                <div class="col-md-6">

                    <div class="card" data-toggle="modal" data-target="#add-product-modal">

                        <div class="card-body text-center">

                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid rounded-circle" src="img/plus.png" alt="user_icon">

                            </div> 

                            <p class="mt-2">Click here to add new Product</p>
                            <h1 class="text-uppercase text-muted">Add Product</h1>

                        </div>

                    </div>

                </div>




            </div>



        </div>
        <!--Add Category Modal-->
       
        <!-- Modal -->
        <div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header custom-bg text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Fill Category Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        
                        <form action="ProductOperationServlet" method="post">
                            
                            <input type="hidden" name="operation" value="addcategory">
                            <div class="form-group">
                                <input type="text" class="form-control" name="catTitle" placeholder="Enter Category Title" required />
                            </div>
                            <div class="form-group">
                                <textarea style="height: 350px;" class="form-control" placeholder="Enter Category Description" name="catDescription" required></textarea>
                                
                            </div>
                            <div class="container text-center">
                                
                                <button class="btn btn-outline-success">Add Category</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                               
                                
                            
                        </form>
                        
                    </div>
                   
                </div>
            </div>
        </div>
        <!--End of the Category modal-->
        
        
        <!-- Add product modal-->

        <!-- Modal -->
        <div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header custom-bg text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Product details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        
                        <!--form-->

                        <form action="ProductOperationServlet" method="post" enctype="multipart/form-data">

                            <input type="hidden" name="operation" value="addproduct"/>

                            <!--product title-->

                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Enter title of product" name="pName" required />
                            </div>

                            <!--product description-->

                            <div class="form-group">
                                <textarea style="height: 150px;" class="form-control" placeholder="Enter product description" name="pDesc"></textarea>

                            </div>

                            <!--product price-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter price of product" name="pPrice" required />
                            </div>

                            <!--product discount-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter product discount" name="pDiscount" required />
                            </div>


                            <!--product quantity-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter product Quantity" name="pQuantity" required />
                            </div
                            
                            
                            <!--Product Category-->
                            <% 
                            CategoryDao cdao=new CategoryDao(FactoryProvider.getFactory());
                            List<Category> list=cdao.getCategories();
                            
                            %>
                            <div class="form-group">
                                <select name="catId" class="form-control" id="">
                                    <%
                                    for(Category c:list){
                                    %>
                                    <option value="<%=c.getCategoryId()%>"><%=c.getCategoryTittle() %></option>
                                    
                                    <%}%>
                                </select>
                            </div>
                            
                            
                            <!--PRODUCT fILE-->
                            <div class="form-group">
                                <label for="pPic">Select Picture for the Product</label>
                                <input type="file" id="pPic" name="pPic" required/>
                                
                                
                            </div>
                            
                            <!--submit button-->
                            <div class="container text-center">

                                <button class="align-right btn btn-outline-success">Add product</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                            </div>
                            
                        </form>








        <!--Ending Add Product Modal-->

    </body>
</html>
