<%@page import="com.mycompany.gems_store.entities.User"%>
<%

    User user = (User) session.getAttribute("current-user");
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first to access checkout page");
        response.sendRedirect("login.jsp");
        return;

    }

%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-6">
                    <!--card-->
                    <div class="card">
                        <h3 class="text-center">Your selected items!!</h3>
                        <div class="cart-body">
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                     <!--card-->
                    <div class="card">
                        <h3 class="text-center">Your details for order!!</h3>
                        <form action="#!">
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input value= "<%= user.getUserEmail() %>" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                                
                            <div class="form-group">
                                <label for="name">Your Name</label>
                                <input value= "<%= user.getUserName()%>" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter Name">
                            </div>
                            
                            <div class="form-group">
                                    <label for="name">Your contact</label>
                                    <input value="<%= user.getUserPhone() %>" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter contact number">
                            </div>

                            <div class="form-group">
                               <label for="exampleFormControlTextarea1">Your Shipping address</label>
                               <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Enter your address" rows="3"></textarea>
                            </div>
                            
                            <div class="container text-center">
                                <button class="btn btn-outline-success">Order now</button>
                                <button class="btn btn-outline-primary">Continue Shopping</button>
                            </div> 
                        </form>
                        
                    </div>
            </div>
        </div>
        </div>
    </body>
</html>
