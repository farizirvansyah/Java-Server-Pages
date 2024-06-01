<%-- 
    Document   : index
    Created on : 8 Apr 2024, 05.32.45
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Catalog</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <style>
            .limited-width-td {
                width: 100px;
                align-items: center;
                justify-content: center;
            }
            .limited-width-td img {
                max-width: 100%;
                height: auto;
            }
        </style>
    </head>
    <body>
        <div class="container mt-4">
            <%
                String username = (String) session.getAttribute("username");
                String id = request.getParameter("id");
                String action = request.getParameter("action");
                if(id != null && action.equals("Add"))
                {
                    String desc = request.getParameter("desc");
                    Float price = new Float(request.getParameter("price"));
                    cart.addItem(id, desc, price.floatValue(), 1);
                } else if(id != null && action.equals("Remove"))
                {
                    cart.removeItem(id);
                } 
            %>
            <div class="d-flex justify-content-between mb-2">
                <h3>Welcome <%= username%></h3>
                <a href="ShoppingCart.jsp" class="btn btn-primary">
                    <i class="fas fa-shopping-cart"></i> Cart: <%= cart.getNumOfItems() %>
                </a>
            </div>
            <hr>
            <h3 class="text-center">AYO ELECTRONIC</h3>
            <form action="index.jsp" method="POST">
                <table class="table table-bordered table-hover mt-4">
                    <thead class="table-primary">
                        <tr>
                            <th class="text-center">No</th>
                            <th>Description</th>
                            <th class="text-center">Image</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <form action="index.jsp" method="POST">
                        <tr>
                            <td class="text-center"><input type="hidden" name="id" value="1">1</td>
                            <td><input type="hidden" name="desc" value="ASUS B365-FMotherboard">ASUS B365-FMotherboard</td>
                            <td class="limited-width-td"><img src="image/ASUS B365-FMotherboard_275.png" alt="motherboard"></td>
                            <td class="text-center"><input type="hidden" name="price" value="275.99">$275.99</td>
                            <td class="text-center">
                                <button type="submit" name="action" value="Add" class="btn btn-success btn-sm">
                                    <i class="fas fa-plus"></i> Add
                                </button>
                                <button type="submit" name="action" value="Remove" class="btn btn-danger btn-sm">
                                    <i class="fas fa-minus"></i> Remove
                                </button>
                            </td>
                        </tr>
                    </form>
                    <form action="index.jsp" method="POST">
                        <tr>
                            <td class="text-center"><input type="hidden" name="id" value="2">2</td>
                            <td><input type="hidden" name="desc" value="Sennheiser HD600">Sennheiser HD600</td>
                            <td class="limited-width-td"><img src="image/Sennheiser HD600.png" alt="hd600"></td>
                            <td class="text-center"><input type="hidden" name="price" value="399.99">$399.99</td>
                            <td class="text-center">
                                <button type="submit" name="action" value="Add" class="btn btn-success btn-sm">
                                    <i class="fas fa-plus"></i> Add
                                </button>
                                <button type="submit" name="action" value="Remove" class="btn btn-danger btn-sm">
                                    <i class="fas fa-minus"></i> Remove
                                </button>
                            </td>
                        </tr>
                    </form>
                    <form action="index.jsp" method="POST">
                        <tr>
                            <td class="text-center"><input type="hidden" name="id" value="3">3</td>
                            <td><input type="hidden" name="desc" value="Hyperx cloud 3">Hyperx cloud 3</td>
                            <td class="limited-width-td"><img src="image/hyperx cloud 3_129.png" alt="hyperx"/>
                            <td class="text-center"><input type="hidden" name="price" value="129.95">$129.95</td>
                            <td class="text-center">
                                <button type="submit" name="action" value="Add" class="btn btn-success btn-sm">
                                    <i class="fas fa-plus"></i> Add
                                </button>
                                <button type="submit" name="action" value="Remove" class="btn btn-danger btn-sm">
                                    <i class="fas fa-minus"></i> Remove
                                </button>
                            </td>
                        </tr>
                    </form>
                    <form action="index.jsp" method="POST">
                        <tr>
                            <td class="text-center"><input type="hidden" name="id" value="4">4</td>
                            <td><input type="hidden" name="desc" value="Monsgeek m7w">Monsgeek m7w</td>
                            <td class="limited-width-td"><img src="image/monsgeek m7w_89.png" alt="monsgeek"></td>
                            <td class="text-center"><input type="hidden" name="price" value="89.75">$89.75</td>
                            <td class="text-center">
                                <button type="submit" name="action" value="Add" class="btn btn-success btn-sm">
                                    <i class="fas fa-plus"></i> Add
                                </button>
                                <button type="submit" name="action" value="Remove" class="btn btn-danger btn-sm">
                                    <i class="fas fa-minus"></i> Remove
                                </button>
                            </td>
                        </tr>
                    </form>
                    <form action="index.jsp" method="POST">
                        <tr>
                            <td class="text-center"><input type="hidden" name="id" value="5">5</td>
                            <td><input type="hidden" name="desc" value="MSI RTX 4090">MSI RTX 4090</td>
                            <td class="limited-width-td"><img src="image/msi rtx 4090_2000.png" alt="msi rtx"></td>
                            <td class="text-center"><input type="hidden" name="price" value="2000.75">$2000.75</td>
                            <td class="text-center">
                                <button type="submit" name="action" value="Add" class="btn btn-success btn-sm">
                                    <i class="fas fa-plus"></i> Add
                                </button>
                                <button type="submit" name="action" value="Remove" class="btn btn-danger btn-sm">
                                    <i class="fas fa-minus"></i> Remove
                                </button>
                            </td>
                        </tr>
                    </form>
                    <form action="index.jsp" method="POST">
                        <tr>
                            <td class="text-center"><input type="hidden" name="id" value="6">6</td>
                            <td><input type="hidden" name="desc" value="Nintendo Swtich">Nintendo Swtich</td>
                            <td class="limited-width-td"><img src="image/nintendo switch_349.png" alt="nintendo"></td>
                            <td class="text-center"><input type="hidden" name="price" value="349">$349</td>
                            <td class="text-center">
                                <button type="submit" name="action" value="Add" class="btn btn-success btn-sm">
                                    <i class="fas fa-plus"></i> Add
                                </button>
                                <button type="submit" name="action" value="Remove" class="btn btn-danger btn-sm">
                                    <i class="fas fa-minus"></i> Remove
                                </button>
                            </td>
                        </tr>
                    </form>
                    <form action="index.jsp" method="POST">
                        <tr>
                            <td class="text-center"><input type="hidden" name="id" value="7">7</td>
                            <td><input type="hidden" name="desc" value="Origin PC">Origin PC</td>
                            <td class="limited-width-td"><img src="image/origin pc_5200.png" alt="origin pc"></td>
                            <td class="text-center"><input type="hidden" name="price" value="5200">$5200</td>
                            <td class="text-center">
                                <button type="submit" name="action" value="Add" class="btn btn-success btn-sm">
                                    <i class="fas fa-plus"></i> Add
                                </button>
                                <button type="submit" name="action" value="Remove" class="btn btn-danger btn-sm">
                                    <i class="fas fa-minus"></i> Remove
                                </button>
                            </td>
                        </tr>
                    </form>
                    <form action="index.jsp" method="POST">
                        <tr>
                            <td class="text-center"><input type="hidden" name="id" value="8">8</td>
                            <td><input type="hidden" name="desc" value="ROG Phone 8">ROG Phone 8</td>
                            <td class="limited-width-td"><img src="image/rogphone_899.png" alt=""></td>
                            <td class="text-center"><input type="hidden" name="price" value="899.99">$899.99</td>
                            <td class="text-center">
                                <button type="submit" name="action" value="Add" class="btn btn-success btn-sm">
                                    <i class="fas fa-plus"></i> Add
                                </button>
                                <button type="submit" name="action" value="Remove" class="btn btn-danger btn-sm">
                                    <i class="fas fa-minus"></i> Remove
                                </button>
                            </td>
                        </tr>
                    </form>
                    <form action="index.jsp" method="POST">
                        <tr>
                            <td class="text-center"><input type="hidden" name="id" value="9">9</td>
                            <td><input type="hidden" name="desc" value="XBOX Series X">XBOX Series X</td>
                            <td class="limited-width-td"><img src="image/xbox series x_449.png" alt="xbox"></td>
                            <td class="text-center"><input type="hidden" name="price" value="449.99">$449.99</td>
                            <td class="text-center">
                                <button type="submit" name="action" value="Add" class="btn btn-success btn-sm">
                                    <i class="fas fa-plus"></i> Add
                                </button>
                                <button type="submit" name="action" value="Remove" class="btn btn-danger btn-sm">
                                    <i class="fas fa-minus"></i> Remove
                                </button>
                            </td>
                        </tr>
                    </form>
                    <form action="index.jsp" method="POST">
                        <tr>
                            <td class="text-center"><input type="hidden" name="id" value="10">10</td>
                            <td><input type="hidden" name="desc" value="Samsung s24">Samsung s24</td>
                            <td class="limited-width-td"><img src="image/samsung s24_850.png" alt="samsung"></td>
                            <td class="text-center"><input type="hidden" name="price" value="850">$850</td>
                            <td class="text-center">
                                <button type="submit" name="action" value="Add" class="btn btn-success btn-sm">
                                    <i class="fas fa-plus"></i> Add
                                </button>
                                <button type="submit" name="action" value="Remove" class="btn btn-danger btn-sm">
                                    <i class="fas fa-minus"></i> Remove
                                </button>
                            </td>
                        </tr>
                    </form>
                    </tbody>
                </table>
            </form>
        </div>
    </body>
</html>
