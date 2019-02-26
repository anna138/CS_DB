<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.4/css/dataTables.responsive.css">


<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.js"></script>
<script src="https://cdn.datatables.net/responsive/1.0.4/js/dataTables.responsive.js"></script>

<style>
body { 
  font-size: 140%; 
}

h2 {
  text-align: center;
  padding: 20px 0;
}

table caption {
	padding: .5em 0;
}

table.dataTable th,
table.dataTable td {
  white-space: nowrap;
}

.p {
  text-align: center;
  padding-top: 140px;
  font-size: 14px;
}
</style>
</head>
<body>


<div class="container">
  <div class="row">
    <div class="col-xs-12">
      <table summary="This table shows how to create responsive tables using Datatables' extended functionality" class="table table-bordered table-hover dt-responsive">
        <thead>
          <tr>
            <th>Country</th>
            <th>Languages</th>
            <th>Population</th>
            <th>Median Age</th>
            <th>Area (Km²)</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Argentina</td>
            <td>Spanish (official), English, Italian, German, French</td>
            <td>41,803,125</td>
            <td>31.3</td>
            <td>2,780,387</td>
          </tr>
          <tr>
            <td>Australia</td>
            <td>English 79%, native and other languages</td>
            <td>23,630,169</td>
            <td>37.3</td>
            <td>7,739,983</td>
          </tr>
          <tr>
            <td>Greece</td>
            <td>Greek 99% (official), English, French</td>
            <td>11,128,404</td>
            <td>43.2</td>
            <td>131,956</td>
          </tr>
          <tr>
            <td>Luxembourg</td>
            <td>Luxermbourgish (national) French, German (both administrative)</td>
            <td>536,761</td>
            <td>39.1</td>
            <td>2,586</td>
          </tr>
          <tr>
            <td>Russia</td>
            <td>Russian, others</td>
            <td>142,467,651</td>
            <td>38.4</td>
            <td>17,076,310</td>
          </tr>
          <tr>
            <td>Sweden</td>
            <td>Swedish, small Sami- and Finnish-speaking minorities</td>
            <td>9,631,261</td>
            <td>41.1</td>
            <td>449,954</td>
          </tr>
        </tbody>

      </table>
    </div>
  </div>
</div>
			

<script>

$('.table').DataTable();
</script>

</body>
</html>
