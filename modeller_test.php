<?php
//long term modeller call

$url = "https://4uv2sp6uzb.execute-api.ap-southeast-2.amazonaws.com/prod/predictions/long?number_of_companies=20";
$data = json_decode(file_get_contents($url), true);

$fp = fopen("modellers_tickers_long.json", "w");
fwrite($fp, json_encode($data));
fclose($fp);


$data = json_decode(file_get_contents("modellers_tickers_long.json"), true);
foreach ($data as $ticker) {
	$url = "https://query1.finance.yahoo.com/v8/finance/chart/$ticker?region=US&lang=en-US&includePrePost=false&interval=1h&useYfid=true&range=1d";
    $stock_data = json_decode(file_get_contents($url), true);
    $current = $stock_data['chart']['result'][0]['meta']['regularMarketPrice'];
    echo 'stock: '. $ticker ;
	echo ' price: '. $current .'<br>';
}
//short term modeller call
$url = "https://4uv2sp6uzb.execute-api.ap-southeast-2.amazonaws.com/prod/predictions/short?number_of_companies=20";
$data = json_decode(file_get_contents($url), true);

$fp = fopen("modellers_tickers_short.json", "w");
fwrite($fp, json_encode($data));
fclose($fp);

$data = json_decode(file_get_contents("modellers_tickers_short.json"), true);
foreach ($data as $ticker) {
	$url = "https://query1.finance.yahoo.com/v8/finance/chart/$ticker?region=US&lang=en-US&includePrePost=false&interval=1h&useYfid=true&range=1d";
    $stock_data = json_decode(file_get_contents($url), true);
    $current = $stock_data['chart']['result'][0]['meta']['regularMarketPrice'];
    echo 'stock: '. $ticker ;
	echo ' price: '. $current .'<br>';
}

?>

