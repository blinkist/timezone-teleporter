# frozen_string_literal => true

module TimezoneTeleporter
  TIMEZONE_LOCATIONS = {
    "Indian/Mauritius" => [
      -20.348404,
      57.55215200000001
    ],
    "Indian/Chagos" => [
      -6.343194,
      71.876519
    ],
    "Indian/Mayotte" => [
      -12.8275,
      45.166244
    ],
    "Indian/Christmas" => [
      -10.447525,
      105.690449
    ],
    "Indian/Cocos" => [
      -12.164165,
      96.87095599999999
    ],
    "Indian/Maldives" => [
      3.202778,
      73.22068
    ],
    "Indian/Comoro" => [
      -11.6455,
      43.3333
    ],
    "Indian/Reunion" => [
      -21.115141,
      55.536384
    ],
    "Indian/Mahe" => [
      -4.679574,
      55.491977
    ],
    "Indian/Kerguelen" => [
      -49.280366,
      69.3485571
    ],
    "Indian/Antananarivo" => [
      -18.766947,
      46.869107
    ],
    "Atlantic/Faroe" => [
      61.89263500000001,
      -6.9118061
    ],
    "Atlantic/Canary" => [
      28.729454,
      -13.866048
    ],
    "Atlantic/Stanley" => [
      -51.796253,
      -59.523613
    ],
    "Atlantic/Bermuda" => [
      32.3078,
      -64.7505
    ],
    "Atlantic/South_Georgia" => [
      -54.429579,
      -36.587909
    ],
    "Atlantic/St_Helena" => [
      -15.9650104,
      -5.7089241
    ],
    "Atlantic/Reykjavik" => [
      64.963051,
      -19.020835
    ],
    "Atlantic/Cape_Verde" => [
      14.9452652,
      -23.5014213
    ],
    "Atlantic/Azores" => [
      37.7401299,
      -25.6644397
    ],
    "Atlantic/Madeira" => [
      32.6382416,
      -16.9307524
    ],
    "Pacific/Port_Moresby" => [
      -6.314992999999999,
      143.95555
    ],
    "Pacific/Chuuk" => [
      7.1386759,
      151.5593065
    ],
    "Pacific/Easter" => [
      -27.112723,
      -109.3496865
    ],
    "Pacific/Kwajalein" => [
      8.716667,
      167.733333
    ],
    "Pacific/Tongatapu" => [
      -21.178986,
      -175.198242
    ],
    "Pacific/Yap" => [
      9.5556503,
      138.1399232
    ],
    "Pacific/Wallis" => [
      -14.2938,
      -178.1165
    ],
    "Pacific/Apia" => [
      -13.759029,
      -172.104629
    ],
    "Pacific/Norfolk" => [
      -29.040835,
      167.954712
    ],
    "Pacific/Efate" => [
      -15.376706,
      166.959158
    ],
    "Pacific/Fiji" => [
      -17.713371,
      178.065032
    ],
    "Pacific/Funafuti" => [
      -7.109534999999999,
      177.64933
    ],
    "Pacific/Palau" => [
      7.514979999999999,
      134.58252
    ],
    "Pacific/Guam" => [
      13.444304,
      144.793731
    ],
    "Pacific/Saipan" => [
      15.0979,
      145.6739
    ],
    "Pacific/Kosrae" => [
      5.346693999999999,
      163.02097
    ],
    "Pacific/Niue" => [
      -19.054445,
      -169.867233
    ],
    "Pacific/Wake" => [
      19.2823192,
      166.647047
    ],
    "Pacific/Galapagos" => [
      -0.383106,
      -90.4233344
    ],
    "Pacific/Johnston" => [
      16.7295035,
      -169.5336477
    ],
    "Pacific/Midway" => [
      28.2072168,
      -177.3734926
    ],
    "Pacific/Nauru" => [
      -0.522778,
      166.931503
    ],
    "Pacific/Guadalcanal" => [
      -9.64571,
      160.156194
    ],
    "Pacific/Chatham" => [
      -44.0237474,
      -175.9304546
    ],
    "Pacific/Auckland" => [
      -40.900557,
      174.885971
    ],
    "Pacific/Noumea" => [
      -20.904305,
      165.618042
    ],
    "Pacific/Fakaofo" => [
      -9.200199999999999,
      -171.8484
    ],
    "Pacific/Tahiti" => [
      -17.679742,
      -149.406843
    ],
    "Pacific/Gambier" => [
      -23.1096583,
      -134.9743477
    ],
    "Pacific/Majuro" => [
      7.131474,
      171.184478
    ],
    "Pacific/Honolulu" => [
      21.3145797,
      -157.8713845
    ],
    "Pacific/Pohnpei" => [
      6.982228,
      158.203691
    ],
    "Pacific/Pago_Pago" => [
      -14.270972,
      -170.132217
    ],
    "Pacific/Pitcairn" => [
      -24.3767537,
      -128.3242376
    ],
    "Pacific/Marquesas" => [
      -9.781216200000001,
      -139.0817124
    ],
    "Pacific/Bougainville" => [
      -6.375391899999999,
      155.3807101
    ],
    "Pacific/Tarawa" => [
      1.4518171,
      172.9716617
    ],
    "Pacific/Rarotonga" => [
      -21.236736,
      -159.777671
    ],
    "Pacific/Kiritimati" => [
      1.8721347,
      -157.4278119
    ],
    "Pacific/Enderbury" => [
      -3.122106,
      -171.08711
    ],
    "Arctic/Longyearbyen" => [
      77.55360399999999,
      23.6702719
    ],
    "America/Puerto_Rico" => [
      18.220833,
      -66.590149
    ],
    "America/Recife" => [
      -8.0522404,
      -34.9286096
    ],
    "America/Resolute" => [
      74.697299,
      -94.82972889999999
    ],
    "America/Manaus" => [
      -3.1190275,
      -60.0217314
    ],
    "America/New_York" => [
      40.7127753,
      -74.0059728
    ],
    "America/Rankin_Inlet" => [
      62.808375,
      -92.0852853
    ],
    "America/Lima" => [
      -9.189967,
      -75.015152
    ],
    "America/St_Barthelemy" => [
      17.9,
      -62.833333
    ],
    "America/Santo_Domingo" => [
      18.735693,
      -70.162651
    ],
    "America/Detroit" => [
      42.331427,
      -83.0457538
    ],
    "America/Paramaribo" => [
      3.919305,
      -56.027783
    ],
    "America/Yakutat" => [
      59.5469878,
      -139.7272808
    ],
    "America/Santarem" => [
      -2.4506291,
      -54.7009228
    ],
    "America/Scoresbysund" => [
      70.486916,
      -21.962528
    ],
    "America/Santiago" => [
      -35.675147,
      -71.542969
    ],
    "America/Guyana" => [
      4.860416,
      -58.93018
    ],
    "America/Coral_Harbour" => [
      64.138834,
      -83.16989699999999
    ],
    "America/Rio_Branco" => [
      -9.975337399999999,
      -68.42932139999999
    ],
    "America/Nipigon" => [
      49.0157351,
      -88.268316
    ],
    "America/Edmonton" => [
      53.544389,
      -113.4909267
    ],
    "America/Port_of_Spain" => [
      10.691803,
      -61.222503
    ],
    "America/Lower_Princes" => [
      18.04248,
      -63.05483
    ],
    "America/St_Thomas" => [
      18.335765,
      -64.896335
    ],
    "America/Guatemala" => [
      15.783471,
      -90.23075899999999
    ],
    "America/Antigua" => [
      17.060816,
      -61.796428
    ],
    "America/Porto_Velho" => [
      -8.761160499999999,
      -63.9004303
    ],
    "America/Chicago" => [
      37.09024,
      -95.712891
    ],
    "America/Creston" => [
      49.0955401,
      -116.5135079
    ],
    "America/Managua" => [
      12.865416,
      -85.207229
    ],
    "America/Nassau" => [
      25.03428,
      -77.39627999999999
    ],
    "America/Bogota" => [
      4.570868,
      -74.297333
    ],
    "America/Cancun" => [
      21.161908,
      -86.8515279
    ],
    "America/Chihuahua" => [
      28.4854458,
      -105.7820674
    ],
    "America/Campo_Grande" => [
      -20.4697105,
      -54.6201211
    ],
    "America/Halifax" => [
      44.64876350000001,
      -63.5752387
    ],
    "America/Boise" => [
      43.6150186,
      -116.2023137
    ],
    "America/Montreal" => [
      45.5016889,
      -73.567256
    ],
    "America/Goose_Bay" => [
      53.3016826,
      -60.3260842
    ],
    "America/Sao_Paulo" => [
      -23.5505199,
      -46.63330939999999
    ],
    "America/Blanc-Sablon" => [
      51.4264451,
      -57.1313148
    ],
    "America/Phoenix" => [
      33.4483771,
      -112.0740373
    ],
    "America/Atikokan" => [
      48.7597531,
      -91.6181716
    ],
    "America/Cayenne" => [
      3.933889,
      -53.125782
    ],
    "America/Boa_Vista" => [
      2.8235098,
      -60.6758331
    ],
    "America/Bahia_Banderas" => [
      20.8074834,
      -105.2480864
    ],
    "America/Indiana/Vevay" => [
      38.7478401,
      -85.0671725
    ],
    "America/Indiana/Indianapolis" => [
      39.768403,
      -86.158068
    ],
    "America/Indiana/Winamac" => [
      41.0514299,
      -86.6030648
    ],
    "America/Indiana/Tell_City" => [
      37.9514447,
      -86.76776629999999
    ],
    "America/Indiana/Petersburg" => [
      38.4919935,
      -87.2786244
    ],
    "America/Indiana/Vincennes" => [
      38.677269,
      -87.5286325
    ],
    "America/Indiana/Knox" => [
      41.2958751,
      -86.6250139
    ],
    "America/Indiana/Marengo" => [
      38.36922759999999,
      -86.34359169999999
    ],
    "America/Dominica" => [
      15.414999,
      -61.37097600000001
    ],
    "America/Argentina/Salta" => [
      -38.416097,
      -63.61667199999999
    ],
    "America/Argentina/Ushuaia" => [
      -54.8019121,
      -68.3029511
    ],
    "America/Argentina/Catamarca" => [
      -28.4715877,
      -65.7877209
    ],
    "America/Argentina/San_Juan" => [
      -31.5351074,
      -68.5385941
    ],
    "America/Argentina/San_Luis" => [
      -33.3017267,
      -66.3377522
    ],
    "America/Argentina/Rio_Gallegos" => [
      -51.6230485,
      -69.2168291
    ],
    "America/Argentina/Jujuy" => [
      -24.1857864,
      -65.2994767
    ],
    "America/Argentina/Tucuman" => [
      -26.8082848,
      -65.2175903
    ],
    "America/Argentina/Buenos_Aires" => [
      -34.6036844,
      -58.3815591
    ],
    "America/Argentina/Cordoba" => [
      -31.42008329999999,
      -64.1887761
    ],
    "America/Argentina/La_Rioja" => [
      -29.4193793,
      -66.8559932
    ],
    "America/Argentina/Mendoza" => [
      -32.8894587,
      -68.8458386
    ],
    "America/La_Paz" => [
      -16.290154,
      -63.58865299999999
    ],
    "America/Dawson" => [
      64.06006959999999,
      -139.4320347
    ],
    "America/Moncton" => [
      46.0878165,
      -64.7782313
    ],
    "America/Matamoros" => [
      25.8690294,
      -97.50273759999999
    ],
    "America/St_Vincent" => [
      12.984305,
      -61.287228
    ],
    "America/Regina" => [
      56.130366,
      -106.346771
    ],
    "America/Yellowknife" => [
      62.4539717,
      -114.3717887
    ],
    "America/Rainy_River" => [
      48.7216623,
      -94.5695247
    ],
    "America/Kralendijk" => [
      12.1783611,
      -68.2385339
    ],
    "America/Monterrey" => [
      25.6866142,
      -100.3161126
    ],
    "America/Jamaica" => [
      18.109581,
      -77.297508
    ],
    "America/Havana" => [
      21.521757,
      -77.781167
    ],
    "America/Tegucigalpa" => [
      15.199999,
      -86.241905
    ],
    "America/Guayaquil" => [
      -1.831239,
      -78.18340599999999
    ],
    "America/Metlakatla" => [
      55.1291667,
      -131.5722222
    ],
    "America/Mazatlan" => [
      23.2494148,
      -106.4111425
    ],
    "America/Belize" => [
      17.189877,
      -88.49765
    ],
    "America/Cuiaba" => [
      -14.235004,
      -51.92528
    ],
    "America/Merida" => [
      20.9673702,
      -89.5925857
    ],
    "America/Cayman" => [
      19.3133,
      -81.2546
    ],
    "America/Belem" => [
      -1.4557292,
      -48.4901785
    ],
    "America/Eirunepe" => [
      -6.6618796,
      -69.8674865
    ],
    "America/St_Lucia" => [
      13.909444,
      -60.978893
    ],
    "America/Bahia" => [
      -12.579738,
      -41.7007272
    ],
    "America/Whitehorse" => [
      60.7211871,
      -135.0568448
    ],
    "America/Tortola" => [
      18.420695,
      -64.639968
    ],
    "America/Vancouver" => [
      49.2827291,
      -123.1207375
    ],
    "America/Inuvik" => [
      68.3607437,
      -133.7230178
    ],
    "America/Port-au-Prince" => [
      18.971187,
      -72.285215
    ],
    "America/Fortaleza" => [
      -3.7327144,
      -38.5269981
    ],
    "America/Noronha" => [
      -3.8447976,
      -32.4268917
    ],
    "America/Los_Angeles" => [
      34.0522342,
      -118.2436849
    ],
    "America/El_Salvador" => [
      13.794185,
      -88.89653
    ],
    "America/Denver" => [
      39.7392358,
      -104.990251
    ],
    "America/Kentucky/Louisville" => [
      38.2775702,
      -85.7371847
    ],
    "America/Kentucky/Monticello" => [
      36.8297937,
      -84.8491126
    ],
    "America/North_Dakota/New_Salem" => [
      46.844999,
      -101.4112545
    ],
    "America/North_Dakota/Center" => [
      47.1163849,
      -101.2995941
    ],
    "America/North_Dakota/Beulah" => [
      47.2633403,
      -101.7779462
    ],
    "America/Glace_Bay" => [
      46.1969191,
      -59.9570044
    ],
    "America/Montserrat" => [
      16.742498,
      -62.187366
    ],
    "America/Toronto" => [
      43.653226,
      -79.3831843
    ],
    "America/Panama" => [
      8.537981,
      -80.782127
    ],
    "America/Ojinaga" => [
      29.5458844,
      -104.4082908
    ],
    "America/Thule" => [
      77.4670434,
      -69.2284827
    ],
    "America/Caracas" => [
      6.42375,
      -66.58973
    ],
    "America/Araguaina" => [
      -7.192773300000001,
      -48.20482699999999
    ],
    "America/Cambridge_Bay" => [
      69.1168641,
      -105.0596814
    ],
    "America/Winnipeg" => [
      49.895136,
      -97.13837439999999
    ],
    "America/Grand_Turk" => [
      21.694025,
      -71.797928
    ],
    "America/Anchorage" => [
      61.2180556,
      -149.9002778
    ],
    "America/Costa_Rica" => [
      9.748916999999999,
      -83.753428
    ],
    "America/Nome" => [
      64.5011111,
      -165.4063889
    ],
    "America/Grenada" => [
      12.1165,
      -61.67899999999999
    ],
    "America/St_Johns" => [
      47.5615096,
      -52.7125768
    ],
    "America/Asuncion" => [
      -23.442503,
      -58.443832
    ],
    "America/Hermosillo" => [
      29.0729673,
      -110.9559192
    ],
    "America/Tijuana" => [
      32.5149469,
      -117.0382471
    ],
    "America/Marigot" => [
      18.0708298,
      -63.0500809
    ],
    "America/Juneau" => [
      58.3019444,
      -134.4197221
    ],
    "America/Montevideo" => [
      -32.522779,
      -55.765835
    ],
    "America/Godthab" => [
      71.706936,
      -42.604303
    ],
    "America/Guadeloupe" => [
      16.265,
      -61.55099999999999
    ],
    "America/Maceio" => [
      -9.6498487,
      -35.7089492
    ],
    "America/Pangnirtung" => [
      66.1465578,
      -65.7012182
    ],
    "America/St_Kitts" => [
      17.357822,
      -62.782998
    ],
    "America/Barbados" => [
      13.193887,
      -59.543198
    ],
    "America/Iqaluit" => [
      63.74669300000001,
      -68.5169669
    ],
    "America/Menominee" => [
      45.10776269999999,
      -87.6142737
    ],
    "America/Martinique" => [
      14.641528,
      -61.024174
    ],
    "America/Mexico_City" => [
      23.634501,
      -102.552784
    ],
    "America/Swift_Current" => [
      50.285069,
      -107.7971722
    ],
    "America/Miquelon" => [
      46.8852,
      -56.3159
    ],
    "America/Curacao" => [
      12.16957,
      -68.99002
    ],
    "America/Dawson_Creek" => [
      55.75962740000001,
      -120.2376623
    ],
    "America/Adak" => [
      51.88,
      -176.6580556
    ],
    "America/Thunder_Bay" => [
      48.3808951,
      -89.2476823
    ],
    "America/Aruba" => [
      12.52111,
      -69.968338
    ],
    "America/Fort_Nelson" => [
      58.8050174,
      -122.697236
    ],
    "America/Sitka" => [
      57.0530556,
      -135.33
    ],
    "America/Anguilla" => [
      18.220554,
      -63.06861499999999
    ],
    "America/Danmarkshavn" => [
      79.059994,
      -19.77234
    ],
    "Australia/Melbourne" => [
      -37.8136276,
      144.9630576
    ],
    "Australia/Lord_Howe" => [
      -31.5553263,
      159.0821211
    ],
    "Australia/Adelaide" => [
      -34.9284989,
      138.6007456
    ],
    "Australia/Sydney" => [
      -33.8688197,
      151.2092955
    ],
    "Australia/Eucla" => [
      -31.6772316,
      128.8897862
    ],
    "Australia/Brisbane" => [
      -27.4697707,
      153.0251235
    ],
    "Australia/Hobart" => [
      -42.8821377,
      147.3271949
    ],
    "Australia/Perth" => [
      -31.9505269,
      115.8604572
    ],
    "Australia/Lindeman" => [
      -20.4447841,
      149.0410504
    ],
    "Australia/Darwin" => [
      -25.274398,
      133.775136
    ],
    "Australia/Broken_Hill" => [
      -31.9539135,
      141.4539396
    ],
    "Australia/Currie" => [
      -39.931111,
      143.8505559
    ],
    "Asia/Dushanbe" => [
      38.861034,
      71.276093
    ],
    "Asia/Yangon" => [
      "16.7833",
      "96.1667"
    ],
    "Asia/Famagusta" => [
      "35.0375",
      "33.9833"
    ],
    "Asia/Urumqi" => [
      43.825592,
      87.61684799999999
    ],
    "Asia/Karachi" => [
      30.375321,
      69.34511599999999
    ],
    "Asia/Khandyga" => [
      62.65640789999999,
      135.5539801
    ],
    "Asia/Thimphu" => [
      27.514162,
      90.433601
    ],
    "Asia/Vladivostok" => [
      43.1198091,
      131.8869243
    ],
    "Asia/Vientiane" => [
      19.85627,
      102.495496
    ],
    "Asia/Shanghai" => [
      31.2303904,
      121.4737021
    ],
    "Asia/Aden" => [
      15.552727,
      48.516388
    ],
    "Asia/Muscat" => [
      21.4735329,
      55.975413
    ],
    "Asia/Damascus" => [
      34.80207499999999,
      38.996815
    ],
    "Asia/Jerusalem" => [
      31.046051,
      34.851612
    ],
    "Asia/Brunei" => [
      4.535277,
      114.727669
    ],
    "Asia/Ulaanbaatar" => [
      46.862496,
      103.846656
    ],
    "Asia/Amman" => [
      30.585164,
      36.238414
    ],
    "Asia/Kuching" => [
      1.553504,
      110.3592927
    ],
    "Asia/Seoul" => [
      35.907757,
      127.766922
    ],
    "Asia/Pyongyang" => [
      40.339852,
      127.510093
    ],
    "Asia/Hovd" => [
      47.9795218,
      91.634756
    ],
    "Asia/Hebron" => [
      31.952162,
      35.233154
    ],
    "Asia/Kuwait" => [
      29.31166,
      47.481766
    ],
    "Asia/Tomsk" => [
      56.5010397,
      84.9924506
    ],
    "Asia/Manila" => [
      12.879721,
      121.774017
    ],
    "Asia/Chita" => [
      52.0515032,
      113.4711906
    ],
    "Asia/Gaza" => [
      31.3546763,
      34.3088255
    ],
    "Asia/Samarkand" => [
      41.377491,
      64.585262
    ],
    "Asia/Taipei" => [
      23.69781,
      120.960515
    ],
    "Asia/Tashkent" => [
      41.2994958,
      69.2400734
    ],
    "Asia/Yekaterinburg" => [
      56.83892609999999,
      60.6057025
    ],
    "Asia/Macau" => [
      22.198745,
      113.543873
    ],
    "Asia/Qyzylorda" => [
      44.6922613,
      62.6571885
    ],
    "Asia/Tokyo" => [
      36.204824,
      138.252924
    ],
    "Asia/Baku" => [
      40.143105,
      47.576927
    ],
    "Asia/Barnaul" => [
      53.3547792,
      83.7697833
    ],
    "Asia/Irkutsk" => [
      52.28697409999999,
      104.3050183
    ],
    "Asia/Qatar" => [
      25.354826,
      51.183884
    ],
    "Asia/Bahrain" => [
      26.0667,
      50.5577
    ],
    "Asia/Yerevan" => [
      40.069099,
      45.038189
    ],
    "Asia/Almaty" => [
      48.019573,
      66.923684
    ],
    "Asia/Dili" => [
      -8.874217,
      125.727539
    ],
    "Asia/Chongqing" => [
      29.4315861,
      106.912251
    ],
    "Asia/Ust-Nera" => [
      64.5596103,
      143.2244252
    ],
    "Asia/Magadan" => [
      59.5611525,
      150.8301413
    ],
    "Asia/Colombo" => [
      7.873053999999999,
      80.77179699999999
    ],
    "Asia/Krasnoyarsk" => [
      61.52401,
      105.318756
    ],
    "Asia/Kamchatka" => [
      56.1327377,
      159.5314398
    ],
    "Asia/Jakarta" => [
      -6.17511,
      106.8650395
    ],
    "Asia/Kolkata" => [
      20.593684,
      78.96288
    ],
    "Asia/Kabul" => [
      33.93911,
      67.709953
    ],
    "Asia/Oral" => [
      51.227821,
      51.3865431
    ],
    "Asia/Jayapura" => [
      -2.5916025,
      140.6689995
    ],
    "Asia/Pontianak" => [
      -0.789275,
      113.921327
    ],
    "Asia/Makassar" => [
      -5.147665099999999,
      119.4327314
    ],
    "Asia/Tbilisi" => [
      41.7151377,
      44.827096
    ],
    "Asia/Singapore" => [
      1.352083,
      103.819836
    ],
    "Asia/Harbin" => [
      45.80377499999999,
      126.534967
    ],
    "Asia/Kashgar" => [
      39.467685,
      75.99378999999999
    ],
    "Asia/Dhaka" => [
      23.684994,
      90.356331
    ],
    "Asia/Yakutsk" => [
      62.0354523,
      129.6754745
    ],
    "Asia/Kuala_Lumpur" => [
      4.210484,
      101.975766
    ],
    "Asia/Tehran" => [
      32.427908,
      53.688046
    ],
    "Asia/Beirut" => [
      33.854721,
      35.862285
    ],
    "Asia/Aqtobe" => [
      50.2839339,
      57.166978
    ],
    "Asia/Anadyr" => [
      64.7336613,
      177.4968265
    ],
    "Asia/Bishkek" => [
      41.20438,
      74.766098
    ],
    "Asia/Dubai" => [
      23.424076,
      53.847818
    ],
    "Asia/Riyadh" => [
      23.885942,
      45.079162
    ],
    "Asia/Novokuznetsk" => [
      53.7595935,
      87.12157049999999
    ],
    "Asia/Aqtau" => [
      43.6410973,
      51.1985113
    ],
    "Asia/Omsk" => [
      54.9884804,
      73.3242361
    ],
    "Asia/Sakhalin" => [
      50.6909848,
      142.9505689
    ],
    "Asia/Hong_Kong" => [
      22.396428,
      114.109497
    ],
    "Asia/Phnom_Penh" => [
      12.565679,
      104.990963
    ],
    "Asia/Nicosia" => [
      35.126413,
      33.429859
    ],
    "Asia/Baghdad" => [
      33.223191,
      43.679291
    ],
    "Asia/Srednekolymsk" => [
      67.43730699999999,
      153.728674
    ],
    "Asia/Ashgabat" => [
      38.969719,
      59.556278
    ],
    "Asia/Kathmandu" => [
      28.394857,
      84.12400799999999
    ],
    "Asia/Choibalsan" => [
      48.0951271,
      114.5356247
    ],
    "Asia/Bangkok" => [
      15.870032,
      100.992541
    ],
    "Asia/Novosibirsk" => [
      55.00835259999999,
      82.9357327
    ],
    "Asia/Rangoon" => [
      21.916221,
      95.955974
    ],
    "Asia/Ho_Chi_Minh" => [
      14.058324,
      108.277199
    ],
    "Antarctica/Macquarie" => [
      -54.62081149999999,
      158.855615
    ],
    "Europe/Zurich" => [
      46.818188,
      8.227511999999999
    ],
    "Europe/Paris" => [
      46.227638,
      2.213749
    ],
    "Europe/Moscow" => [
      55.755826,
      37.6172999
    ],
    "Europe/Luxembourg" => [
      49.815273,
      6.129582999999999
    ],
    "Europe/Ljubljana" => [
      46.151241,
      14.995463
    ],
    "Europe/Helsinki" => [
      61.92410999999999,
      25.7481511
    ],
    "Europe/Minsk" => [
      53.709807,
      27.953389
    ],
    "Europe/Skopje" => [
      41.608635,
      21.745275
    ],
    "Europe/Dublin" => [
      53.1423672,
      -7.692053599999999
    ],
    "Europe/Jersey" => [
      49.214439,
      -2.13125
    ],
    "Europe/San_Marino" => [
      43.94236,
      12.457777
    ],
    "Europe/Gibraltar" => [
      36.140751,
      -5.353585
    ],
    "Europe/Belgrade" => [
      44.016521,
      21.005859
    ],
    "Europe/Guernsey" => [
      49.465691,
      -2.585278
    ],
    "Europe/Ulyanovsk" => [
      54.3181598,
      48.3837915
    ],
    "Europe/Vaduz" => [
      47.166,
      9.555373
    ],
    "Europe/Istanbul" => [
      38.963745,
      35.243322
    ],
    "Europe/Lisbon" => [
      39.39987199999999,
      -8.224454
    ],
    "Europe/Uzhgorod" => [
      48.6208,
      22.287883
    ],
    "Europe/Kirov" => [
      58.6035321,
      49.6667983
    ],
    "Europe/Tirane" => [
      41.153332,
      20.168331
    ],
    "Europe/Sarajevo" => [
      43.915886,
      17.679076
    ],
    "Europe/Madrid" => [
      40.46366700000001,
      -3.74922
    ],
    "Europe/Podgorica" => [
      42.708678,
      19.37439
    ],
    "Europe/Busingen" => [
      47.6969939,
      8.6904196
    ],
    "Europe/Vatican" => [
      41.902916,
      12.453389
    ],
    "Europe/Bratislava" => [
      48.669026,
      19.699024
    ],
    "Europe/Kiev" => [
      48.379433,
      31.1655799
    ],
    "Europe/Kaliningrad" => [
      54.7104264,
      20.4522144
    ],
    "Europe/Zaporozhye" => [
      47.8388,
      35.139567
    ],
    "Europe/Vienna" => [
      47.516231,
      14.550072
    ],
    "Europe/Budapest" => [
      47.162494,
      19.5033041
    ],
    "Europe/Vilnius" => [
      55.169438,
      23.881275
    ],
    "Europe/Oslo" => [
      60.47202399999999,
      8.468945999999999
    ],
    "Europe/Astrakhan" => [
      46.3588045,
      48.0599345
    ],
    "Europe/Simferopol" => [
      44.952117,
      34.102417
    ],
    "Europe/Volgograd" => [
      48.708048,
      44.5133035
    ],
    "Europe/Isle_of_Man" => [
      54.236107,
      -4.548056
    ],
    "Europe/London" => [
      55.378051,
      -3.435973
    ],
    "Europe/Riga" => [
      56.879635,
      24.603189
    ],
    "Europe/Andorra" => [
      42.506285,
      1.521801
    ],
    "Europe/Prague" => [
      49.81749199999999,
      15.472962
    ],
    "Europe/Berlin" => [
      51.165691,
      10.451526
    ],
    "Europe/Tallinn" => [
      58.595272,
      25.0136071
    ],
    "Europe/Rome" => [
      41.87194,
      12.56738
    ],
    "Europe/Malta" => [
      35.937496,
      14.375416
    ],
    "Europe/Zagreb" => [
      45.1,
      15.2000001
    ],
    "Europe/Amsterdam" => [
      52.132633,
      5.291265999999999
    ],
    "Europe/Bucharest" => [
      45.943161,
      24.96676
    ],
    "Europe/Copenhagen" => [
      56.26392,
      9.501785
    ],
    "Europe/Chisinau" => [
      47.411631,
      28.369885
    ],
    "Europe/Mariehamn" => [
      60.1785247,
      19.9156105
    ],
    "Europe/Sofia" => [
      42.733883,
      25.48583
    ],
    "Europe/Athens" => [
      39.074208,
      21.824312
    ],
    "Europe/Stockholm" => [
      60.12816100000001,
      18.643501
    ],
    "Europe/Samara" => [
      53.2415041,
      50.2212463
    ],
    "Europe/Brussels" => [
      50.503887,
      4.469936
    ],
    "Europe/Warsaw" => [
      51.919438,
      19.145136
    ],
    "Africa/Sao_Tome" => [
      0.18636,
      6.613080999999999
    ],
    "Africa/Conakry" => [
      9.945587,
      -9.696645
    ],
    "Africa/Dakar" => [
      14.497401,
      -14.452362
    ],
    "Africa/Ndjamena" => [
      15.454166,
      18.732207
    ],
    "Africa/Casablanca" => [
      31.791702,
      -7.092619999999999
    ],
    "Africa/Lome" => [
      8.619543,
      0.824782
    ],
    "Africa/Algiers" => [
      28.033886,
      1.659626
    ],
    "Africa/Mogadishu" => [
      5.152149,
      46.199616
    ],
    "Africa/Lagos" => [
      9.081999,
      8.675277
    ],
    "Africa/Brazzaville" => [
      -0.228021,
      15.827659
    ],
    "Africa/Nouakchott" => [
      21.00789,
      -10.940835
    ],
    "Africa/Maseru" => [
      -29.609988,
      28.233608
    ],
    "Africa/Libreville" => [
      -0.803689,
      11.609444
    ],
    "Africa/Harare" => [
      -19.015438,
      29.154857
    ],
    "Africa/Malabo" => [
      1.650801,
      10.267895
    ],
    "Africa/Bangui" => [
      6.611110999999999,
      20.939444
    ],
    "Africa/Nairobi" => [
      -0.023559,
      37.906193
    ],
    "Africa/Kinshasa" => [
      -4.4419311,
      15.2662931
    ],
    "Africa/Porto-Novo" => [
      9.30769,
      2.315834
    ],
    "Africa/Cairo" => [
      26.820553,
      30.802498
    ],
    "Africa/Douala" => [
      7.369721999999999,
      12.354722
    ],
    "Africa/Juba" => [
      6.876991899999999,
      31.3069788
    ],
    "Africa/Gaborone" => [
      -22.328474,
      24.684866
    ],
    "Africa/Tunis" => [
      33.886917,
      9.537499
    ],
    "Africa/Kampala" => [
      1.373333,
      32.290275
    ],
    "Africa/Mbabane" => [
      -26.522503,
      31.465866
    ],
    "Africa/Addis_Ababa" => [
      9.145000000000001,
      40.489673
    ],
    "Africa/Maputo" => [
      -18.665695,
      35.529562
    ],
    "Africa/Bissau" => [
      11.803749,
      -15.180413
    ],
    "Africa/Blantyre" => [
      -13.254308,
      34.301525
    ],
    "Africa/Niamey" => [
      17.607789,
      8.081666
    ],
    "Africa/Banjul" => [
      13.443182,
      -15.310139
    ],
    "Africa/Abidjan" => [
      7.539988999999999,
      -5.547079999999999
    ],
    "Africa/Asmara" => [
      15.179384,
      39.782334
    ],
    "Africa/Bamako" => [
      17.570692,
      -3.996166
    ],
    "Africa/Ouagadougou" => [
      12.238333,
      -1.561593
    ],
    "Africa/Lusaka" => [
      -13.133897,
      27.849332
    ],
    "Africa/Luanda" => [
      -11.202692,
      17.873887
    ],
    "Africa/Lubumbashi" => [
      -4.038333,
      21.758664
    ],
    "Africa/Accra" => [
      7.946527,
      -1.023194
    ],
    "Africa/Khartoum" => [
      12.862807,
      30.217636
    ],
    "Africa/Ceuta" => [
      35.897395,
      -5.288314
    ],
    "Africa/Bujumbura" => [
      -3.373056,
      29.918886
    ],
    "Africa/Windhoek" => [
      -22.95764,
      18.49041
    ],
    "Africa/El_Aaiun" => [
      24.215527,
      -12.885834
    ],
    "Africa/Tripoli" => [
      26.3351,
      17.228331
    ],
    "Africa/Monrovia" => [
      6.428055,
      -9.429499000000002
    ],
    "Africa/Dar_es_Salaam" => [
      -6.369028,
      34.888822
    ],
    "Africa/Johannesburg" => [
      -30.559482,
      22.937506
    ],
    "Africa/Kigali" => [
      -1.940278,
      29.873888
    ],
    "Africa/Djibouti" => [
      11.825138,
      42.590275
    ],
    "Africa/Freetown" => [
      8.460555,
      -11.779889
    ]
  }.freeze
end
