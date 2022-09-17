<!DOCTYPE html>
<html>
    <head>
        <title>Carpe Diem - Reservation List</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    </head>
    <style type="text/css">

    /* Table */
    #id{
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 80%;
        height: 30px;
        font-size: 14px;
    }

    #id td, #id th{
        border: 1px solid #ddd;
        padding: 8px;
    }

    #id tr:nth-child(even){
        background-color: #f2f2f2;
    }

    #id tr:hover{
        background-color: #ddd;
    }

    #id th{
        padding-top: 10px;
        padding-bottom: 10px;
        text-align: left;
        background-color: #021230;
        color: rgb(255, 255, 255);
    }

    /* Heading */
    h2{
        margin-top: 20px;
    }

    /* Body */
    body{
        background: #f2f2f2;
        display: flex;
    }

    .section{
        margin-top: 30px;
        padding: 50px;
        background: #fff;
    }

    /* Dropdown */
    .dropbtn{
        background-color: #0e1d3b;
        color: white;
        padding: 8px;
        font-size: 15px;
        border: none;
    }

    .dropdown{
        position: relative;
    }

    .dropdown-content{
        display: none;
        position: absolute;
        background-color: #f4f4f4;
        min-width: 150px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
        font-size: 15px;
    }

    .dropdown-content a{
        color: black;
        padding: 15px 15px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {
        background-color: #06122a;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover .dropbtn {
        background-color: #495464;
    }
    </style>

    <body>
        <div class="container">
            <div class="col-md-8 section offset-md-2">
                <div class="panel panel-primary">
                <!-- Dropwdown button -->
                <div class="row">
                <div class="column px-3">


                </div>

                </div>

                <!-- Table -->
                    <div class="panel-heading">
                        <h4>Carpe Diem - Reservation List</h4>
                        <br>
                    </div> <!-- end of panel heading -->
                    <div class="panel-body">
                        <div class="main-div">
                        <table id="id">
                            <thead>
                                <tr>
                                    <th class="text-left">First Name</th>
                                    <th class="text-left">Last Name</th>
                                    <th class="text-left">Email</th>
                                    <th class="text-left">Tel Number</th>
                                    <th class="text-left">Reservation Date</th>
                                    <th class="text-left">Guest Number</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach($reservations as $reservation)
                                <tr>
                                    <td class="text-left">{{ $reservation->first_name }}</td>
                                    <td class="text-left">{{ $reservation->last_name }}</td>
                                    <td class="text-left">{{ $reservation->email }}</td>
                                    <td class="text-left">{{ $reservation->tel_number }}</td>
                                    <td class="text-left">{{ $reservation->res_date }}</td>
                                    <td class="text-left">{{ $reservation->guest_number }}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        </div><!-- end of main-div -->
                    </div><!-- end of panel body -->`

                </div> <!-- end of panel primary -->
            </div> <!-- end of col-md-8 -->
        </div> <!-- container -->
    </body>
</html>
