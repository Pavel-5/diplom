<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/webgl', function () {
    return view('webgl');
})->name('webgl');

Route::get('/graph', function () {
    return view('graph');
})->name('graph');

Route::get('/assembly', function () {
    return view('assembly');
})->name('assembly');

Route::get('/session', function () {
    return view('session');
})->name('session');

Route::get('/three', function () {
    return view('three');
})->name('three');

Route::get('/data', function () {
    function parse_csv_file( $file_path, $file_encodings = ['cp1251','UTF-8'], $col_delimiter = '', $row_delimiter = '' ) {

        if( ! file_exists( $file_path ) ){
            return false;
        }

        $cont = trim( file_get_contents( $file_path ) );

        $encoded_cont = mb_convert_encoding( $cont, 'UTF-8', mb_detect_encoding( $cont, $file_encodings ) );

        unset( $cont );

        // определим разделитель
        if( ! $row_delimiter ){
            $row_delimiter = "\r\n";
            if( false === strpos($encoded_cont, "\r\n") )
                $row_delimiter = "\n";
        }

        $lines = explode( $row_delimiter, trim($encoded_cont) );
        $lines = array_filter( $lines );
        $lines = array_map( 'trim', $lines );

        // авто-определим разделитель из двух возможных: ';' или ','.
        // для расчета берем не больше 30 строк
        if( ! $col_delimiter ){
            $lines10 = array_slice( $lines, 0, 30 );

            // если в строке нет одного из разделителей, то значит другой точно он...
            foreach( $lines10 as $line ){
                if( ! strpos( $line, ',') ) $col_delimiter = ';';
                if( ! strpos( $line, ';') ) $col_delimiter = ',';

                if( $col_delimiter ) break;
            }

            // если первый способ не дал результатов, то погружаемся в задачу и считаем кол разделителей в каждой строке.
            // где больше одинаковых количеств найденного разделителя, тот и разделитель...
            if( ! $col_delimiter ){
                $delim_counts = array( ';'=>array(), ','=>array() );
                foreach( $lines10 as $line ){
                    $delim_counts[','][] = substr_count( $line, ',' );
                    $delim_counts[';'][] = substr_count( $line, ';' );
                }

                $delim_counts = array_map( 'array_filter', $delim_counts ); // уберем нули

                // кол-во одинаковых значений массива - это потенциальный разделитель
                $delim_counts = array_map( 'array_count_values', $delim_counts );

                $delim_counts = array_map( 'max', $delim_counts ); // берем только макс. значения вхождений

                if( $delim_counts[';'] === $delim_counts[','] )
                    return array('Не удалось определить разделитель колонок.');

                $col_delimiter = array_search( max($delim_counts), $delim_counts );
            }

        }

        $data = [];
        $keys = str_getcsv( $lines[0], $col_delimiter );
        unset($lines[0]);
        $count = 0;
        foreach ($lines as $line) {
            $arr = str_getcsv( $line, $col_delimiter );

            for ($i = 0; $i < count($keys); $i++) {
                $data[$count][$keys[$i]] = $arr[$i];
            }

            $count++;
        }

        return $data;
    }

    $data = parse_csv_file( '../sales_data_sample.csv', 'UTF-8', ',' );
    dump( $data );
//    $url = 'https://www.kaggle.com/fadeevpavel/account/datasets';
//    //  Initiate curl
//    $ch = curl_init();
//    // Will return the response, if false it print the response
//    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
//    // Set the url
//    curl_setopt($ch, CURLOPT_URL,$url);
//    // Execute
//    $result = curl_exec($ch);
//    // Closing
//    curl_close($ch);
//
//    dump($result);
//
//    // Will dump a beauty json :3
//    var_dump(json_decode($result, true));
})->name('data');

Route::post('/data', function () {
    function parse_csv_file( $file_path, $file_encodings = ['cp1251','UTF-8'], $col_delimiter = '', $row_delimiter = '' ) {

        if( ! file_exists( $file_path ) ){
            return false;
        }

        $cont = trim( file_get_contents( $file_path ) );

        $encoded_cont = mb_convert_encoding( $cont, 'UTF-8', mb_detect_encoding( $cont, $file_encodings ) );

        unset( $cont );

        // определим разделитель
        if( ! $row_delimiter ){
            $row_delimiter = "\r\n";
            if( false === strpos($encoded_cont, "\r\n") )
                $row_delimiter = "\n";
        }

        $lines = explode( $row_delimiter, trim($encoded_cont) );
        $lines = array_filter( $lines );
        $lines = array_map( 'trim', $lines );

        // авто-определим разделитель из двух возможных: ';' или ','.
        // для расчета берем не больше 30 строк
        if( ! $col_delimiter ){
            $lines10 = array_slice( $lines, 0, 30 );

            // если в строке нет одного из разделителей, то значит другой точно он...
            foreach( $lines10 as $line ){
                if( ! strpos( $line, ',') ) $col_delimiter = ';';
                if( ! strpos( $line, ';') ) $col_delimiter = ',';

                if( $col_delimiter ) break;
            }

            // если первый способ не дал результатов, то погружаемся в задачу и считаем кол разделителей в каждой строке.
            // где больше одинаковых количеств найденного разделителя, тот и разделитель...
            if( ! $col_delimiter ){
                $delim_counts = array( ';'=>array(), ','=>array() );
                foreach( $lines10 as $line ){
                    $delim_counts[','][] = substr_count( $line, ',' );
                    $delim_counts[';'][] = substr_count( $line, ';' );
                }

                $delim_counts = array_map( 'array_filter', $delim_counts ); // уберем нули

                // кол-во одинаковых значений массива - это потенциальный разделитель
                $delim_counts = array_map( 'array_count_values', $delim_counts );

                $delim_counts = array_map( 'max', $delim_counts ); // берем только макс. значения вхождений

                if( $delim_counts[';'] === $delim_counts[','] )
                    return array('Не удалось определить разделитель колонок.');

                $col_delimiter = array_search( max($delim_counts), $delim_counts );
            }

        }

        $data = [];
        $keys = str_getcsv( $lines[0], $col_delimiter );
        unset($lines[0]);
        $count = 0;
        foreach ($lines as $line) {
            $arr = str_getcsv( $line, $col_delimiter );

            for ($i = 0; $i < count($keys); $i++) {
                $data[$count][$keys[$i]] = $arr[$i];
            }

            $count++;
        }

        return $data;
    }

    $data = parse_csv_file( '../sales_data_sample.csv', 'UTF-8', ',' );
    echo json_encode($data);
})->name('data');

Route::get('/', function () {
    return view('welcome');
});
