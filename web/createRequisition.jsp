<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

    body
    {
        background:url(assets/img/procurement2.jpg) no-repeat;
        background-size:cover;
        font-family:Arial,sans-serif;
    }

    footer{
        float: left;
        margin-top: 10px;
    }

</style>

<c:import url="/include/Header1.jsp"/>

<c:import url="/include/sideBar3.jsp"/>

<div class="container" id="mainbody">

    <h1> Create Requisition </h1>

    <c:if test="${CTMsg != null}">
        <script>
            alert('${CTMsg}');
        </script>
    </c:if>

    <form action="CreateRequisition" method="POST">
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th> Item </th>
                        <th> Description </th>
                        <th> Quantity </th>
                    </tr>
                </thead>
                <tbody>

                    <c:choose>
                        <c:when test="${empty items}"> <tr><td> No item added</td> </tr> </c:when>
                        <c:otherwise>
                            <c:forEach var="item" items="${items}" >
                                <tr>
                                    <td> ${item.getItem()}</td>
                                    <td> ${item.getDescription()}</td>
                                    <td> ${item.getQuantity()}</td>
                                </tr>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>

                </tbody>
            </table>

            <br><br><br>
            <a href="javaScript:{openPopUp();}" class="btn btn-primary pull-right"> Add new item </a>


            <br><br>
            <div class="text-center">
                <input type="submit" value="Submit Requisiton" class="btn btn-primary" >
            </div>
    </form>

    <form action="AddItem" method="POST" class="card text-center" style="width: 30rem; margin: 0 auto;" >
        <div id="Adding" style="display:none; background-color: rgba(0,0,0,0.4);  padding: 10px; ">

            <div class="form-group">
                <label> Item </label>
                <input type="text" class="form-control" required="" placeholder="Item" name="item">
            </div>
            <div class="form-group">
                <label> Description </label>
                <textarea class="form-control" rows="3" required="" name="description" placeholder="Description"></textarea>
            </div>
            <div class="form-group">
                <label> Quantity </label>
                <input type="text" placeholder="Quantity" required="" name="quantity">
            </div>

            <input type="submit" value="Add" class="btn btn-success"/>

        </div>
    </form>

    <script>
        function openPopUp() {
            $('#Adding').css('display', 'block');
            $('#Adding').dialog();
        }
    </script>

</div>

</div>

<c:import url="/include/Footer.jsp" />