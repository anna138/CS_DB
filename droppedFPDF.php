<?php
 session_start();
$dom->validateOnParse = true;
$string = $_SESSION['string'];
require_once('fpdf.php');

$rowLabels = array();
$array;

class PDF extends FPDF
{
	
	// Simple table
	function BasicTable($header, $data)
	{
		
		// Header
		foreach($header as $col){
			$this->Cell(45,8,$col,1,C);
			}
			$this->Ln();
		
		// Data
		foreach($data as $row)
		{
			foreach($row as $col){
			$this->Cell(45,6,$col,1,C);		
			}
			$this->Ln();
			
		}
	}
}

$reportName = "Call Problems Report";
$reportNameYPos = 160;

$chartWidth = 160;
$chartXPos = 20;
$chartYPos = 250;
$chartWidth = 160;
$chartHeight = 80;
$pdf = new PDF();
$pdf->AddPage();


$pdf->Image( 'https://1.bp.blogspot.com/-nzm908Pfunw/VqXgeRNp4LI/AAAAAAAACJI/wgeVntLSIT8/w1200-h630-p-k-no-nu/status-report.png', 50,108,110);

// Report Cover
$pdf->SetFont( 'Arial', 'B', 24 );
$pdf->Ln( $reportNameYPos );
$pdf->Cell( 0, 15, $reportName, 0, 0, 'C' );

//Data
$pdf->AddPage('');
$pdf->Write( 19, "OXYSQUARE AGENT SUMMARY REPORT" );
$pdf->Ln( 16 );
$pdf->Ln( 5 );
$pdf->SetFont("Arial", "B", "20");
$pdf->Cell(180, 10, "Call Problem Summary", 1, 1, C);

// Table's Column headings
$header = array('Zip Code', 'Dropped Percentage', 'Time', 'Cost');
// Data loading
	$result = array();
foreach (explode('/', $string) as $piece) {
    $result[] = explode(',', $piece);
}

$pdf->SetFont('Arial','',9);
$pdf->BasicTable($header,$result,C);
$pdf->Ln( 15 );

$cnt = 0;
$cnt2 = 0;
$cnt3 = 0;
$maxTotal = 0;

foreach($result as $row){
			foreach($row as $col){
			
			
				if($cnt%4 == 0){
					$rowLabels[$cnt2] = $col;
					$cnt2++;
				}
				if($cnt%4 == 1){
					$array[$cnt3] = $col;
					$cnt3++;
					if($col > $maxTotal){
						$maxTotal = floatval($col);
						//$pdf->Cell(45,8,$maxTotal,1,C);
					}
				}
				$cnt++;
				
			}
			
}

//Graphs 
/*
$pdf->SetFont( 'Arial', '', 19 );
$pdf->Write( 19, "            ");
$pdf->Ln( 16 );
*/

$pdf->SetFont( 'Arial', 'B', 19 );
$chartTitle = "Chats Dropped";
$pdf->Cell( 180, 50, $chartTitle, 0, 0, 'C' );
$chartColours = array(
                  array( 255, 100, 100 ),
                  array( 100, 255, 100 ),
                  array( 100, 100, 255 ),
                  array( 255, 255, 100 ),
                );
$data = array(
          array( 2,  1, 0,  1 ),
          array( 1, 2, 2, 2 ),
          array( 2, 2, 2, 2 ),
          array( 2, 2, 3, 3 ),
        );
//$columnLabels = array( "Q1", "Q2", "Q3", "Q4" );
//$rowLabels = array( "Account Issues", "Troubleshooting", "Billing", "Repair",);
$chartXPos = 0;
$chartYPos = 250;
$chartWidth = 200;
$chartHeight = 100;
$chartXLabel = "Area";
$chartYStep = 5;
//$pdf->AddPage('');

$xScale = count($rowLabels)/ ($chartWidth -30);


$yScale = ($maxTotal) / $chartHeight;
// Compute the bar width
$barWidth = /*$xScale-1;*/( 1 / $xScale ) / 1.5;
// Add the axes:
$pdf->SetFont( 'Arial', '', 10 );
// X axis

$pdf->Line( $chartXPos + 30, $chartYPos, $chartXPos + $chartWidth, $chartYPos );
for ( $i=0; $i < count( $rowLabels ); $i++ ) {
  $pdf->SetXY( $chartXPos + 40 +  $i / $xScale, $chartYPos );
  $pdf->Cell( $barWidth, 10, $rowLabels[$i], 0, 0, 'C' );
}
// Y axis
$pdf->Line( $chartXPos + 30, $chartYPos, $chartXPos + 30, $chartYPos - $chartHeight - 8 );

for ( $i=0; $i <= $maxTotal; $i += $chartYStep ) {
  $pdf->SetXY( $chartXPos + 7, $chartYPos - 5 - $i / $yScale );
  $pdf->Cell( 20, 10, ' ' . number_format( $i ) .'.00' , 0, 0, 'R' );
  $pdf->Line( $chartXPos + 28, $chartYPos - $i / $yScale, $chartXPos + 30, $chartYPos - $i / $yScale );
}

// Add the axis labels
$pdf->SetFont( 'Arial', 'B', 12 );
$pdf->SetXY( $chartWidth / 2 + 20, $chartYPos + 8 );
$pdf->Cell( -50, 10, $chartXLabel, 0, 0, 'C' );
$pdf->SetXY( $chartXPos + 7, $chartYPos - $chartHeight - 12 );
$pdf->Cell( 20, 10, $chartYLabel, 0, 0, 'R' );

// Create the bars
$xPos = $chartXPos + 40;
$bar = 0;

foreach ( $array as $dataRow ) {

  // Total up the sales figures for this product
  $totalSales = 0;
  //foreach ( $dataRow as $dataCell ) 
  $totalSales = $dataRow;

  // Create the bar
  $colourIndex = $bar % count( $chartColours );
  $pdf->SetFillColor( $chartColours[$colourIndex][0], $chartColours[$colourIndex][1], $chartColours[$colourIndex][2] );
  $pdf->Rect( $xPos, $chartYPos - ( $totalSales / $yScale ), $barWidth, $totalSales / $yScale, 'DF' );
  $xPos += ( 1 / $xScale );
  $bar++;
}



date_default_timezone_set('America/Los_Angeles');
$date = date('m/d/Y');
$fileName = 'Consumer_Call_Report_'.strtotime("now").'.pdf';
$pdf->Output($fileName, 'I');
$f = "/home/stu/apoon/public_html/pdf/";
$f .= $fileName;
$pdf->Output($f, 'F');

?>
