<x-admin-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
<section>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    You're logged in! Please observe confidentiality.
                </div>
            </div>
        </div>
    </div>
</section>
<section>
    <div class="col-md-10 col-md-offset-1">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Total Percentage of Rating from the feedback form </h3>
                <p>
                    The color number beside the piechart indicates the ratings of the customer:
                <p>
            </div>
            <div class="panel-body" align="center">
                <div id="pie_chart" style="width:750px; height:450px;">

                </div>
            </div>
        </div>
    </div>
</section>
<link rel="stylesheet" href="https://maxcdm.bootstrapcdn.com/bootstrap/3.3.6/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    var analytics = <?php echo $rating; ?>

    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart()
    {
        var data = google.visualization.arrayToDataTable(analytics);
        var options = {
            title : 'Percentage of Ratings in the Feedback form',
            is3D: true,
        };
        var chart = new google.visualization.PieChart(document.getElementById('pie_chart'));
        chart.draw(data, options);
    }
</script>
</x-admin-layout>
