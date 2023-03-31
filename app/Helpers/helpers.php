<?php

use Illuminate\Support\Str;

/**
 *
 */
function addSuffixe(string $image, $suffixe = 'mini'): string
{
    $extension = pathinfo($image)["extension"];
    $fin = "-$suffixe.$extension";
    if (!Str::of($image)->endsWith($fin)) :
        return Str::replace(".$extension", "-$suffixe.$extension", $image);
    else :
        return $image;
    endif;
}

function cutterString(string $text, int $limit = 0): string
{
    $length = $limit ?? Str::length($text);
    return Str::limit($text, $length);
}
function camelCase(string $str): string
{
    return Str::camel($str);
}
function pushUniqueInArray(array &$tab,  $var)
{
    if (!in_array($var, $tab)) :
        $tab[] = $var;
    endif;
}
function convertDateEn2Fr($date, $enSeparator = '-', $frSeparator = '/')
{
    $d = explode($enSeparator, $date);
    if (count($d) == 3) :
        return $d[2] . $frSeparator . $d[1] . $frSeparator . $d[0];
    endif;
    return $date;
}

function convertDateFr2En($date, $frSeparator = '/', $enSeparator = '-')
{
    return convertDateEn2Fr($date, $enSeparator, $frSeparator);
}

function english_days($n)
{
    $english_days = [
        'Monday', 'Tuesday', 'Wednesday', 'Thursday',
        'Friday', 'Saturday', 'Sunday'
    ];
    return $english_days[intval($n) % 7];
}

function french_days($n)
{
    $french_days = [
        'Lundi', 'Mardi', 'Mercredi',
        'Jeudi', 'Vendredi', 'Samedi', 'Dimanche'
    ];
    return $french_days[intval($n) % 7];
}

function english_months($n)
{
    $english_months = [
        'January', 'February', 'March', 'April',
        'May', 'June', 'July', 'August',
        'September', 'October', 'November', 'December'
    ];
    return $english_months[intval($n) % 12];
}

function french_months($n)
{
    $french_months = [
        'Janvier', 'Février', 'Mars', 'Avril',
        'Mai', 'Juin', 'Juillet', 'Août',
        'Septembre', 'Octobre', 'Novembre', 'Décembre'
    ];
    return $french_months[intval($n) % 12];
}
function english_short_months($n)
{
    $english_months = [
        'Jan', 'Feb', 'Mar', 'Apr',
        'May', 'Jun', 'Jul', 'Aug',
        'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return $english_months[intval($n) % 12];
}
function french_short_months($n)
{
    $french_months = [
        'Janv', 'Fév', 'Mars', 'Avril',
        'Mai', 'Juin', 'Juil', 'Août',
        'Sep', 'Oct', 'Nov', 'Déc'
    ];
    return $french_months[intval($n) % 12];
}

function getEventDate($dateEn, $enSeparator = '-')
{
    $d = explode($enSeparator, $dateEn);
    $jour = $d[2] == '01' ? "1er" : $d[2];
    return $jour . ' ' . french_short_months(intval($d[1]) - 1);
}
