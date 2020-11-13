<?php
declare(strict_types=1);

$cfg['blowfish_secret'] = 'i0ULtq/xlL:x;F7AjIYH=2I82cI[Vrly'; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */
$i = 0;
$i++;
$cfg['Servers'][$i]['auth_type'] = 'cookie';
$cfg['Servers'][$i]['host'] = 'mysql-service';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = false;
$cfg['PmaAbsoluteUri'] = '/phpmyadmin/';

$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';
