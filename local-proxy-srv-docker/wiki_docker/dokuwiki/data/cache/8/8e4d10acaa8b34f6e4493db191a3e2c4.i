a:271:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:75:"Установка и настройка MikroTik RouterOS CHR на Proxmox";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:90;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:63:"Подготовка Proxmox к установке MikroTik CHR";i:1;i:3;i:2;i:90;}i:2;i:90;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:90;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:90;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:154:"После обычной установки PVE первым делом нужно убрать производственные репозитории. ";}i:2;i:165;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:319;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:319;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"Файлы с репозиториями находятся в /etc/apt/source.list.d/";}i:2;i:321;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:407;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:407;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:"Там существуют два файла:";}i:2;i:409;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:455;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:31:"
pve-enterprise.list
ceph.list
";i:1;N;i:2;N;}i:2;i:462;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:462;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:146:"В этих файлах нужно закомментировать все, что в них находится. И добавить в файл ";}i:2;i:503;}i:18;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:649;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:" /etc/apt/source.list ";}i:2;i:651;}i:20;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:673;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:" следующее:";}i:2;i:675;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:695;}i:23;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:73:"
deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription
";i:1;N;i:2;N;}i:2;i:702;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:702;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"После этого просто обновляем пакеты:";}i:2;i:785;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:852;}i:27;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:30:"
apt update && apt upgrade -y
";i:1;s:4:"bash";i:2;N;}i:2;i:859;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:859;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:159:"и устанавливаем нужный пакет, который пригодится для разархивирования образа диска CHR:";}i:2;i:904;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1063;}i:31;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:20:"
apt install zip -y
";i:1;s:4:"bash";i:2;N;}i:2;i:1070;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1070;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:215:"Так же сразу создадим несколько виртуальных сетевых интерфейсов. для этого переходим на веб-интерфейс Proxmox по адресу ";}i:2;i:1105;}i:34;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:26:"https://192.168.0.100:8006";i:1;N;}i:2;i:1320;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:", который был указан во время ";}i:2;i:1346;}i:36;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:28:"instructions:install_proxmox";i:1;s:26:"установки Proxmox";}i:2;i:1399;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:". Переходим в раздел ";}i:2;i:1458;}i:38;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1495;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Система - Сеть";}i:2;i:1496;}i:40;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1521;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:". Здесь будет следующие интерфейсы.";}i:2;i:1522;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1586;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1586;}i:44;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:61:":instructions:изображение_2024-03-04_113543960.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:1588;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1667;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1667;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"Нажимаем на ";}i:2;i:1669;}i:48;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1691;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Создать - Linux Bridge";}i:2;i:1692;}i:50;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1721;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:247:", оставляем все поля пустые по умолчанию. Создаться новый сетевой интерфейс, дальше нужно применить эту конфигурацию, нажав на клавишу ";}i:2;i:1722;}i:52;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1969;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"Применить конфигурацию";}i:2;i:1970;}i:54;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2013;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:". Итоговый результат показан на скриншоте.";}i:2;i:2014;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2091;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2091;}i:58;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:61:":instructions:изображение_2024-03-04_113938970.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:2093;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2172;}i:60;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2172;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:130:"Теперь можно приступить к установке Mikrotik Cloud Hosted Router на гипервизор Proxmox.";}i:2;i:2174;}i:62;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2304;}i:63;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2306;}i:64;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:102:"Создание виртуальной машины и подготовка образа MikroTik CHR";i:1;i:3;i:2;i:2306;}i:2;i:2306;}i:65;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2306;}i:66;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2306;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:228:"Перед началом загрузки и создания шаблона виртуальной машины, необходимо для начала ее создать. Переходим в веб-интерфейс PVE";}i:2;i:2420;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2648;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2648;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"Создаём виртуальную машину. Задаем ей имя.";}i:2;i:2651;}i:71;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2728;}i:72;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2728;}i:73;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:61:":instructions:изображение_2024-03-01_172153978.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:2730;}i:74;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2809;}i:75;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2809;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:150:"Нажимаем далее и переходим в раздел выбора операционной системы и выбираем пункт ";}i:2;i:2811;}i:77;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2961;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"Do not use any media";}i:2;i:2963;}i:79;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2983;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:". Образ системы добавим позже.";}i:2;i:2985;}i:81;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3039;}i:82;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3039;}i:83;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:61:":instructions:изображение_2024-03-01_172346151.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:3041;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3120;}i:85;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3120;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"Далее на вкладке ";}i:2;i:3122;}i:87;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3153;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"System";}i:2;i:3155;}i:89;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3161;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:" оставляем по умолчанию. На вкладке ";}i:2;i:3163;}i:91;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3228;}i:92;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"Disk";}i:2;i:3230;}i:93;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3234;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:" удаляем диск по умолчанию.";}i:2;i:3236;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3285;}i:96;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3285;}i:97;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:61:":instructions:изображение_2024-03-01_172924182.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:3287;}i:98;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3366;}i:99;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3366;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"На вкладке ";}i:2;i:3368;}i:101;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3388;}i:102;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"CPU";}i:2;i:3390;}i:103;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3393;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:" и ";}i:2;i:3395;}i:105;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3399;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"Memory";}i:2;i:3401;}i:107;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3407;}i:108;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:240:" выбираем нужное количество виртуальных процессоров и количество оперативной памяти, которая будет доступная виртуальной машине.";}i:2;i:3409;}i:109;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3649;}i:110;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3649;}i:111;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"На вкладке ";}i:2;i:3651;}i:112;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3671;}i:113;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"Network";}i:2;i:3673;}i:114;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3680;}i:115;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:133:" ставим, что не будем использовать сетевое устройство, его добавим позже.";}i:2;i:3682;}i:116;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3815;}i:117;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3815;}i:118;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:61:":instructions:изображение_2024-03-01_173133639.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:3817;}i:119;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3896;}i:120;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3896;}i:121;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:334:"Далее подтверждаем введенную информацию. На этом этапе мы закончили создание виртуальной машины, теперь нужно загрузить необработанный образ CHR на гипервизор. Для этого нужно зайти ";}i:2;i:3898;}i:122;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:29:"https://mikrotik.com/download";i:1;s:10:" сюда ";}i:2;i:4232;}i:123;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:225:", загрузить нужную версию ОС. На момент написания, актуальная версия 7.14 Stable, ее и будем загружать. Копируем ссылку из строки ";}i:2;i:4277;}i:124;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:4502;}i:125;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"Raw disk image";}i:2;i:4504;}i:126;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:4518;}i:127;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:4520;}i:128;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4521;}i:129;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:62:"
https://download.mikrotik.com/routeros/7.14/chr-7.14.img.zip
";i:1;N;i:2;N;}i:2;i:4528;}i:130;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4528;}i:131;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:46:":instructions:install_chr_proxmox_download.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:4600;}i:132;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4664;}i:133;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4664;}i:134;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:115:"На Proxmox, к которому мы подключены через удаленную консоль, либо ";}i:2;i:4667;}i:135;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:9:"terms:ssh";i:1;s:3:"SSH";}i:2;i:4782;}i:136;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:", переходим в директорию ";}i:2;i:4799;}i:137;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:4844;}i:138;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:" /var/lib/vz/images ";}i:2;i:4846;}i:139;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:4866;}i:140;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:162:". Здесь будет директория созданной ранее виртуальной машиной, в моем случае ее имя будет ";}i:2;i:4868;}i:141;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:5030;}i:142;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:" 100 ";}i:2;i:5032;}i:143;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:5037;}i:144;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:". Если ее нет, то нужно создать этот каталог:";}i:2;i:5039;}i:145;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5118;}i:146;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:30:"
mkdir /var/lib/vz/images/100
";i:1;s:4:"bash";i:2;N;}i:2;i:5125;}i:147;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5125;}i:148;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:97:"Далее скачиваем образ CHR с помощью следующей команды:";}i:2;i:5170;}i:149;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5273;}i:150;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:67:"
wget https://download.mikrotik.com/routeros/7.14/chr-7.14.img.zip
";i:1;s:4:"bash";i:2;N;}i:2;i:5273;}i:151;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5273;}i:152;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"Распаковываем архив:";}i:2;i:5355;}i:153;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5399;}i:154;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:24:"
unzip chr-7.14.img.zip
";i:1;s:4:"bash";i:2;N;}i:2;i:5399;}i:155;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5399;}i:156;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"Затем конвертируем образ img в образ формата qcow2:";}i:2;i:5438;}i:157;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5530;}i:158;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:50:"
qemu-img convert -f raw  -O qcow2 chr-7.14.qcow2
";i:1;s:4:"bash";i:2;N;}i:2;i:5530;}i:159;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5530;}i:160;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:393:"У нас появится конвертированный образ системы, остается только добавить его к виртуальной машине. Так же, размер созданного диска будет размером в 40М, если этого недостаточно, его можно увеличить следующим образом:";}i:2;i:5595;}i:161;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5988;}i:162;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:36:"
qemu-img resize chr-7.14.qcow2 +1G
";i:1;s:4:"bash";i:2;N;}i:2;i:5995;}i:163;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5995;}i:164;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:172:"Теперь можно присоединить готовый образ к виртуальной машине (образ должен находится по пути ";}i:2;i:6046;}i:165;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:6218;}i:166;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" /var/lib/vz/images/100/chr-7.14.qcow2 ";}i:2;i:6220;}i:167;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:6259;}i:168;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:" :";}i:2;i:6261;}i:169;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6263;}i:170;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:45:"
qm set  100 --ide2 local:100/chr-7.14.qcow2
";i:1;s:4:"bash";i:2;N;}i:2;i:6270;}i:171;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6270;}i:172;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:73:"При успешном добавлении увидим надпись ";}i:2;i:6330;}i:173;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:6403;}i:174;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"update VM 100: -ide2 local:100/chr-7.14.qcow2";}i:2;i:6405;}i:175;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:6450;}i:176;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:6452;}i:177;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6453;}i:178;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6453;}i:179;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:147:"Удаляем все временные файлы, такие как архив и необработанный образ в формате img:";}i:2;i:6455;}i:180;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6602;}i:181;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:34:"
rm chr-7.14.img chr-7.14.img.zip
";i:1;s:4:"bash";i:2;N;}i:2;i:6609;}i:182;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6609;}i:183;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:134:"Теперь мы можем возвращаться на веб-интерфейс PVE и закончить установку CHR.";}i:2;i:6658;}i:184;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6792;}i:185;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6794;}i:186;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:67:"Настройка виртуальной машины MikroTik CHR";i:1;i:3;i:2;i:6794;}i:2;i:6794;}i:187;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:6794;}i:188;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6794;}i:189;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:134:"Переходим в веб-интерфейс и открываю созданную ранее виртуальную машину.";}i:2;i:6873;}i:190;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7007;}i:191;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7007;}i:192;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:61:":instructions:изображение_2024-03-04_112727840.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:7009;}i:193;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7088;}i:194;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7088;}i:195;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:279:"Во вкладке оборудование должен отобразиться раньше добавленный диск CHR. Так же не забываем добавить сетевые интерфейсы. Итоговый результат на картинке.";}i:2;i:7090;}i:196;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7369;}i:197;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7369;}i:198;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:61:":instructions:изображение_2024-03-04_114134610.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:7371;}i:199;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7450;}i:200;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7450;}i:201;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:300:"Еще нужно удостовериться, что в случае перезагрузки самого гипервизора, CHR будет стартовать автоматически, иначе мы не сможем получить доступ к самому гипервизору.";}i:2;i:7452;}i:202;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7752;}i:203;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7752;}i:204;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:262:"Перед первый запуском виртуальной машины лучше сделать шаблон виртуальной машины, копируем виртуальную машину, выбираем полное клонирование.";}i:2;i:7754;}i:205;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8016;}i:206;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8016;}i:207;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:61:":instructions:изображение_2024-03-04_114658699.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:8018;}i:208;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8097;}i:209;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8097;}i:210;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:405:"Теперь можно приступать к настройке непосредственно CHR и замене интерфейсов. Это нужно для того, что бы CHR выступал маршрутизирующим устройством, NATом, фаерволлом. Вот приблизительная как это будет выглядеть на самом деле.";}i:2;i:8099;}i:211;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8504;}i:212;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8504;}i:213;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:46:":instructions:default-network-setup-routed.svg";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:8506;}i:214;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8559;}i:215;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8559;}i:216;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:698:"На схеме видно vmbr0 - это основной интерфейс, которые создается по умолчанию при установке PVE. Так же он связан с физическим интерфейсом eno0.
VM100 будет выступать в роли маршрутизатора, значит нам нужно подменить интерфейсы таким образом: мы убираем адресацию с внешнего bridge vmbr0, далее на созданный vmbr1 назначаем адресацию непосредственно самого PVE, он будет находится на этом интерфейсе.";}i:2;i:8561;}i:217;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9259;}i:218;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9259;}i:219;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"Для этого нужно перейти в консоль PVE, изменяем файл ";}i:2;i:9261;}i:220;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:9354;}i:221;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" /etc/network/interfaces ";}i:2;i:9356;}i:222;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:9381;}i:223;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:" следующим образом.";}i:2;i:9383;}i:224;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9418;}i:225;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9418;}i:226;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:61:":instructions:изображение_2024-03-05_110946008.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:9420;}i:227;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:". Сохраняем файл, но пока что не применяем настройки.";}i:2;i:9499;}i:228;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9594;}i:229;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9594;}i:230;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:182:"Далее запускаем нашу виртуальную машину, переходим в консоль и настраиваем ее. Пароль по умолчанию ";}i:2;i:9596;}i:231;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:9778;}i:232;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:" admin ";}i:2;i:9780;}i:233;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:9787;}i:234;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:", пароль ";}i:2;i:9789;}i:235;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:9804;}i:236;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"пустой";}i:2;i:9806;}i:237;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:9818;}i:238;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9820;}i:239;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9820;}i:240;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:232:"Здесь мы назначаем пока еще не проброшенному интерфейсу ether1 внешний адрес PVE и создаем локальную адресацию для интерфейса ether2.";}i:2;i:9822;}i:241;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10060;}i:242;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:116:"
ip address add interfaces=ether1 address=192.168.70.12/24
ip address add interfaces=ether2 address=192.168.80.2/24
";i:1;N;i:2;N;}i:2;i:10060;}i:243;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10060;}i:244;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:177:"Далее отключаем правило, которое отвечает за DHCP-client, так как адресация у нас назначается вручную.";}i:2;i:10186;}i:245;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10363;}i:246;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:31:"
ip dhcp-client disable ether1
";i:1;N;i:2;N;}i:2;i:10370;}i:247;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10370;}i:248;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:87:"После этого нам нужно добавить правило NAT masquerade.";}i:2;i:10411;}i:249;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10498;}i:250;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:73:"
ip firewall/nat add action=masquerade out-interface=ether1 chain=srcnat
";i:1;N;i:2;N;}i:2;i:10505;}i:251;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10505;}i:252;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:154:"И наконец, добавляем правило глобальное правило маршрутизации к шлюзу по умолчанию.";}i:2;i:10588;}i:253;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10742;}i:254;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:68:"
ip route add dst-address=0.0.0.0/0 gateway=192.168.70.1 distance=1
";i:1;N;i:2;N;}i:2;i:10749;}i:255;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10749;}i:256;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:111:"Для проверки веденых параметров можно использовать команду ";}i:2;i:10827;}i:257;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:10938;}i:258;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"export";}i:2;i:10940;}i:259;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:10946;}i:260;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:", которая выведет все существующие правила и настройки.";}i:2;i:10948;}i:261;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11049;}i:262;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11049;}i:263;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:48:":изображение_2024-03-05_112116989.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:11051;}i:264;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11117;}i:265;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11117;}i:266;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:188:"На этом настройку можно считать законченной, остается только применить сетевые настройки в консоли PVE.";}i:2;i:11119;}i:267;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11307;}i:268;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:13:"
ifreload -a
";i:1;N;i:2;N;}i:2;i:11314;}i:269;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:11335;}i:270;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:11335;}}