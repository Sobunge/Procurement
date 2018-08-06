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


    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th> Item id </th>
                    <th> Requisition Id </th>
                    <th> Item </th>
                    <th> Description </th>
                    <th> Quantity </th>
                </tr>
            </thead>

        </table>

        <form>
            <br><br><br>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal"> Add New Item </button>
            <button type="button" class="btn btn-primary"> Submit Requisition </button>
            
            
            <div class="modal fade" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Modal Heading</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <form  method="POST" class="form-group" action="CreateTender">
                                <table class="table">
                                    <tr>
                                        <td><label> Item Name </label></td>
                                        <td><input type="text" name="item" required=""></td>
                                    </tr>
                                    <tr>
                                        <td><label> Tender Description</label></td>
                                        <td><textarea name="description" rows="7" cols="10" required class="form-control" ></textarea></td>
                                    </tr>

                                    <tr>
                                        <td><label> Quantity </label></td>
                                        <td><input type="text" name="quantity" required="" class="form-control" /></td>
                                    </tr>


                                </table>

                                <input type="button" class="btn btn-success" value="Add item" onclick="confirmTenderCreation(this.form)" />
                            </form>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal"> close </button>
                        </div>

                    </div>
                </div>
            </div>

        </form>
    </div>

</div>

<script>


    function confirmTenderCreation(form) {

        if (form.description.value === "") {
            form.description.focus();
            alert("Provide a description of the tender");
        } else if (form.closingdate.value === "") {
            form.closingdate.focus();
            alert("Please provide tender expiration date");
        } else {
            form.submit();
        }
    }


</script>

<c:import url="/include/Footer.jsp" />