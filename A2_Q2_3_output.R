
> load("/Users/aisha/projects/quantitative/Countries.Rdata")

> library(relimp, pos=4)

> showData(Countries, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> MobileUsers <- read.table("/Users/aisha/projects/quantitative/mobile_Indicator2.csv", 
+   header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)

> showData(MobileUsers, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> MobileUsers$mobile_growth_2011 <- ((MobileUsers$X2011 - MobileUsers$X2010)/MobileUsers$X2010)*100

> showData(MobileUsers, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> Countries_MobileMerge <- mergeRows(Countries, MobileUsers, common.only=TRUE)

> Countries_MobileMerge <- merge(Countries, MobileUsers, all=FALSE, by="row.names")

> rownames(Countries_MobileMerge) <- Countries_MobileMerge$Row.names

> Countries_MobileMerge$Row.names <- NULL

> showData(Countries_MobileMerge, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> showData(Countries_MobileMerge, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> MobileUsersSort <-MobileUsers[order(Country)]

> Countries_MobileMerge[order(Country)]

> Countries_MobileMerge[order(Countries_MobileMerge$Country)]

> showData(Countries_MobileMerge, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> names(Countries_MobileMerge)
 [1] "Country"             "infant.mortality"    "fertility_rate"      "contraception"      
 [5] "region"              "Country_Code"        "internet_users_2010" "internet_users_2011"
 [9] "gdp2010"             "gdp2011"             "gdp2012"             "Country.Name"       
[13] "Country.Code"        "X2010"               "X2011"               "X2012"              
[17] "mobile_growth_2011" 

> Countries_MobileMerge$Country
  [1] "Afghanistan"                    "Aruba"                          "Kiribati"                      
  [4] "Korea Dem. Rep."                "Korea Rep."                     "Kosovo"                        
  [7] "Kuwait"                         "Kyrgyz Republic"                "Lao PDR"                       
 [10] "Latvia"                         "Lebanon"                        "Lesotho"                       
 [13] "Australia"                      "Liberia"                        "Libya"                         
 [16] "Liechtenstein"                  "Lithuania"                      "Luxembourg"                    
 [19] "Macao"                          "Macedonia"                      "Madagascar"                    
 [22] "Malawi"                         "Malaysia"                       "Austria"                       
 [25] "Maldives"                       "Mali"                           "Malta"                         
 [28] "Marshall Islands"               "Mauritania"                     "Mauritius"                     
 [31] "Mexico"                         "Micronesia"                     "Moldova"                       
 [34] "Monaco"                         "Azerbaijan"                     "Mongolia"                      
 [37] "Montenegro"                     "Morocco"                        "Mozambique"                    
 [40] "Myanmar"                        "Namibia"                        "Nepal"                         
 [43] "Netherlands"                    "New Caledonia"                  "New Zealand"                   
 [46] "Bahamas"                        "Nicaragua"                      "Niger"                         
 [49] "Nigeria"                        "Northern Mariana Islands"       "Norway"                        
 [52] "Oman"                           "Pakistan"                       "Palau"                         
 [55] "Panama"                         "Papua New Guinea"               "Bahrain"                       
 [58] "Paraguay"                       "Peru"                           "Philippines"                   
 [61] "Poland"                         "Portugal"                       "Puerto Rico"                   
 [64] "Qatar"                          "Romania"                        "Russian Federation"            
 [67] "Rwanda"                         "Bangladesh"                     "Samoa"                         
 [70] "San Marino"                     "Sao Tome and Principe"          "Saudi Arabia"                  
 [73] "Senegal"                        "Serbia"                         "Seychelles"                    
 [76] "Sierra Leone"                   "Singapore"                      "Sint Maarten (Dutch part)"     
 [79] "Barbados"                       "Slovak Republic"                "Slovenia"                      
 [82] "Solomon Islands"                "Somalia"                        "South Africa"                  
 [85] "South Sudan"                    "Spain"                          "Sri Lanka"                     
 [88] "St. Kitts and Nevis"            "St. Lucia"                      "Belarus"                       
 [91] "St. Martin (French part)"       "St. Vincent and the Grenadines" "Sudan"                         
 [94] "Suriname"                       "Swaziland"                      "Sweden"                        
 [97] "Switzerland"                    "Syrian Arab Republic"           "Tajikistan"                    
[100] "Tanzania"                       "Belgium"                        "Thailand"                      
[103] "Timor-Leste"                    "Togo"                           "Tonga"                         
[106] "Trinidad and Tobago"            "Tunisia"                        "Turkey"                        
[109] "Turkmenistan"                   "Turks and Caicos Islands"       "Tuvalu"                        
[112] "Albania"                        "Belize"                         "Uganda"                        
[115] "Ukraine"                        "United Arab Emirates"           "United Kingdom"                
[118] "United States"                  "Uruguay"                        "Uzbekistan"                    
[121] "Vanuatu"                        "Venezuela"                      "Vietnam"                       
[124] "Benin"                          "Yemen"                          "Yemen, Rep."                   
[127] "Zambia"                         "Zimbabwe"                       "Bermuda"                       
[130] "Bhutan"                         "Bolivia"                        "Bosnia and Herzegovina"        
[133] "Botswana"                       "Brazil"                         "Brunei Darussalam"             
[136] "Bulgaria"                       "Algeria"                        "Burkina Faso"                  
[139] "Burundi"                        "Cambodia"                       "Cameroon"                      
[142] "Canada"                         "Cape Verde"                     "Cayman Islands"                
[145] "Central African Republic"       "Chad"                           "Channel Islands"               
[148] "American Samoa"                 "Chile"                          "China"                         
[151] "Colombia"                       "Comoros"                        "Congo Dem. Rep."               
[154] "Congo Rep."                     "Costa Rica"                     "Cote d Ivoire"                 
[157] "Croatia"                        "Cuba"                           "Andorra"                       
[160] "Curacao"                        "Cyprus"                         "Czech Republic"                
[163] "Denmark"                        "Djibouti"                       "Dominica"                      
[166] "Dominican Republic"             "Ecuador"                        "Egypt"                         
[169] "El Salvador"                    "Angola"                         "Equatorial Guinea"             
[172] "Eritrea"                        "Estonia"                        "Ethiopia"                      
[175] "Faeroe Islands"                 "Fiji"                           "Finland"                       
[178] "France"                         "French Polynesia"               "Gabon"                         
[181] "Antigua and Barbuda"            "Gambia"                         "Georgia"                       
[184] "Germany"                        "Ghana"                          "Greece"                        
[187] "Greenland"                      "Grenada"                        "Guam"                          
[190] "Guatemala"                      "Guinea"                         "Argentina"                     
[193] "Guinea-Bissau"                  "Guyana"                         "Haiti"                         
[196] "Honduras"                       "Hong Kong"                      "Hungary"                       
[199] "Iceland"                        "India"                          "Indonesia"                     
[202] "Iran"                           "Armenia"                        "Iraq"                          
[205] "Ireland"                        "Isle of Man"                    "Israel"                        
[208] "Italy"                          "Jamaica"                        "Japan"                         
[211] "Jordan"                         "Kazakhstan"                     "Kenya"                         

> Countries_MobileMerge[order(Countries_MobileMerge$Country),]
                           Country infant.mortality fertility_rate contraception   region Country_Code
1                      Afghanistan              154           6.90            NA     Asia          AFG
2                          Albania               32           2.60            NA   Europe          ALB
3                          Algeria               44           3.81            52   Africa          DZA
4                   American Samoa               NA             NA            NA     <NA>         <NA>
5                          Andorra               NA             NA            NA   Europe          AND
6                           Angola              124           6.69            NA   Africa          AGO
7              Antigua and Barbuda               NA             NA            NA     <NA>         <NA>
8                        Argentina               22           2.62            NA Americas          ARG
9                          Armenia               25           1.70            22   Europe          ARM
10                           Aruba               NA             NA            NA     <NA>         <NA>
11                       Australia                6           1.89            76  Oceania          AUS
12                         Austria                6           1.42            71   Europe          AUT
13                      Azerbaijan               33           2.30            17     Asia          AZE
14                         Bahamas               14           1.95            62 Americas          BHS
15                         Bahrain               18           2.97            53     Asia          BHR
16                      Bangladesh               78           3.14            49     Asia          BGD
17                        Barbados                9           1.73            55 Americas          BRB
18                         Belarus               15           1.40            50   Europe          BLR
19                         Belgium                7           1.62            79   Europe          BEL
20                          Belize               30           3.66            47 Americas          BLZ
21                           Benin               84           5.83            16   Africa          BEN
22                         Bermuda               NA             NA            NA     <NA>         <NA>
23                          Bhutan              104           5.89            19     Asia          BTN
24                         Bolivia               66           4.36            45 Americas          BOL
25          Bosnia and Herzegovina               NA             NA            NA     <NA>         <NA>
26                        Botswana               56           4.45            33   Africa          BWA
27                          Brazil               42           2.17            74 Americas          BRA
28               Brunei Darussalam               NA             NA            NA     <NA>         <NA>
29                        Bulgaria               16           1.45            NA   Europe          BGR
30                    Burkina Faso               NA             NA            NA     <NA>         <NA>
31                         Burundi              114           6.28             9   Africa          BDI
32                        Cambodia              102           4.50            NA     Asia          KHM
33                        Cameroon               58           5.30            16   Africa          CMR
34                          Canada                6           1.61            66 Americas          CAN
35                      Cape Verde               NA             NA            NA     <NA>         <NA>
36                  Cayman Islands               NA             NA            NA     <NA>         <NA>
37        Central African Republic               NA             NA            NA     <NA>         <NA>
38                            Chad              115           5.51            NA   Africa          TCD
39                 Channel Islands               NA             NA            NA     <NA>         <NA>
40                           Chile               13           2.44            30 Americas          CHL
41                           China               38           1.80            83     Asia          CHN
42                        Colombia               24           2.69            72 Americas          COL
43                         Comoros               82           5.51            21   Africa          COM
44                 Congo Dem. Rep.               NA             NA            NA     <NA>         <NA>
45                      Congo Rep.               NA             NA            NA     <NA>         <NA>
46                      Costa Rica               NA             NA            NA     <NA>         <NA>
47                   Cote d Ivoire               NA             NA            NA     <NA>         <NA>
48                         Croatia               10           1.60            NA   Europe          HRV
49                            Cuba                9           1.55            70 Americas          CUB
50                         Curacao               NA             NA            NA     <NA>         <NA>
51                          Cyprus                7           2.31            NA   Europe          CYP
52                  Czech Republic               NA             NA            NA     <NA>         <NA>
53                         Denmark                7           1.82            78   Europe          DNK
54                        Djibouti              106           5.39            NA   Africa          DJI
55                        Dominica               NA             NA            50 Americas          DMA
56              Dominican Republic               NA             NA            NA     <NA>         <NA>
57                         Ecuador               46           3.10            57 Americas          ECU
58                           Egypt               54           3.40            47   Africa          EGY
59                     El Salvador               NA             NA            NA     <NA>         <NA>
60               Equatorial Guinea               NA             NA            NA     <NA>         <NA>
61                         Eritrea               98           5.34             5   Africa          ERI
62                         Estonia               12           1.30            70   Europe          EST
63                        Ethiopia              107           7.00             4   Africa          ETH
64                  Faeroe Islands               NA             NA            NA     <NA>         <NA>
65                            Fiji               20           2.76            40  Oceania          FJI
66                         Finland                5           1.83            NA   Europe          FIN
67                          France                7           1.63            77   Europe          FRA
68                French Polynesia               NA             NA            NA     <NA>         <NA>
69                           Gabon               85           5.40            NA   Africa          GAB
70                          Gambia              122           5.20            12   Africa          GMB
71                         Georgia               23           1.90            17   Europe          GEO
72                         Germany                6           1.30            75   Europe          DEU
73                           Ghana               73           5.28            20   Africa          GHA
74                          Greece                8           1.38            NA   Europe          GRC
75                       Greenland               NA             NA            NA     <NA>         <NA>
76                         Grenada               14             NA            54 Americas          GRD
77                            Guam               10           3.04            NA  Oceania          GUM
78                       Guatemala               40           4.90            31 Americas          GTM
79                          Guinea              124           6.61             2   Africa          GIN
80                   Guinea-Bissau               NA             NA            NA     <NA>         <NA>
81                          Guyana               58           2.32            NA Americas          GUY
82                           Haiti               82           4.60            18 Americas          HTI
83                        Honduras               35           4.30            47 Americas          HND
84                       Hong Kong               NA             NA            NA     <NA>         <NA>
85                         Hungary               14           1.40            73   Europe          HUN
86                         Iceland                5           2.19            NA   Europe          ISL
87                           India               72           3.07            41     Asia          IND
88                       Indonesia               48           2.63            55  Oceania          IDN
89                            Iran               39           4.77            65     Asia          IRN
90                            Iraq               95           5.25            14     Asia          IRQ
91                         Ireland                6           1.80            NA   Europe          IRL
92                     Isle of Man               NA             NA            NA     <NA>         <NA>
93                          Israel                7           2.75            NA     Asia          ISR
94                           Italy                7           1.19            NA   Europe          ITA
95                         Jamaica               12           2.44            62 Americas          JAM
96                           Japan                4           1.48            59  Oceania          JPN
97                          Jordan               30           5.13            35     Asia          JOR
98                      Kazakhstan               34           2.30            59     Asia          KAZ
99                           Kenya               65           4.85            33   Africa          KEN
100                       Kiribati               65           3.80            37  Oceania          KIR
101                Korea Dem. Rep.               NA             NA            NA     <NA>         <NA>
102                     Korea Rep.               NA             NA            NA     <NA>         <NA>
103                         Kosovo               NA             NA            NA     <NA>         <NA>
104                         Kuwait               14           2.77            35     Asia          KWT
105                Kyrgyz Republic               NA             NA            NA     <NA>         <NA>
106                        Lao PDR               NA             NA            NA     <NA>         <NA>
107                         Latvia               16           1.40            47   Europe          LVA
108                        Lebanon               29           2.75            NA     Asia          LBN
109                        Lesotho               72           4.86            23   Africa          LSO
110                        Liberia              153           6.33             6   Africa          LBR
111                          Libya               56           5.92            40   Africa          LBY
112                  Liechtenstein               NA           1.45            NA   Europe          LIE
113                      Lithuania               13           1.50            59   Europe          LTU
114                     Luxembourg                6           1.76            NA   Europe          LUX
115                          Macao               NA             NA            NA     <NA>         <NA>
116                      Macedonia               23           1.90            NA   Europe          MKD
117                     Madagascar               77           5.65            17   Africa          MDG
118                         Malawi              142           6.69            22   Africa          MWI
119                       Malaysia               11           3.24            48  Oceania          MYS
120                       Maldives               49           6.80            NA     Asia          MDV
121                           Mali              149           6.60             7   Africa          MLI
122                          Malta                8           2.10            NA   Europe          MLT
123               Marshall Islands               NA             NA            NA     <NA>         <NA>
124                     Mauritania               92           5.03             3   Africa          MRT
125                      Mauritius               15           2.28            75   Africa          MUS
126                         Mexico               31           2.75            53 Americas          MEX
127                     Micronesia               NA             NA            NA     <NA>         <NA>
128                        Moldova               26           1.80            22   Europe          MDA
129                         Monaco               NA             NA            NA   Europe          MCO
130                       Mongolia               52           3.27            61     Asia          MNG
131                     Montenegro               NA             NA            NA     <NA>         <NA>
132                        Morocco               51           3.10            50   Africa          MAR
133                     Mozambique              110           6.06            NA   Africa          MOZ
134                        Myanmar               78           3.30            17     Asia          MMR
135                        Namibia               60           4.90            29   Africa          NAM
136                          Nepal               82           4.95            29     Asia          NPL
137                    Netherlands                6           1.55            78   Europe          NLD
138                  New Caledonia               NA             NA            NA     <NA>         <NA>
139                    New Zealand               NA             NA            NA     <NA>         <NA>
140                      Nicaragua               44           3.85            49 Americas          NIC
141                          Niger              114           7.10             4   Africa          NER
142                        Nigeria               77           5.97             6   Africa          NGA
143       Northern Mariana Islands               NA             NA            NA     <NA>         <NA>
144                         Norway                5           1.88            76   Europe          NOR
145                           Oman               25           7.20             9     Asia          OMN
146                       Pakistan               74           5.02            18     Asia          PAK
147                          Palau               25           3.00            NA  Oceania          PLW
148                         Panama               21           2.63            64 Americas          PAN
149               Papua New Guinea               NA             NA            NA     <NA>         <NA>
150                       Paraguay               39           4.17            56 Americas          PRY
151                           Peru               45           2.98            64 Americas          PER
152                    Philippines               35           3.62            40  Oceania          PHL
153                         Poland               13           1.65            NA   Europe          POL
154                       Portugal                8           1.48            66   Europe          PRT
155                    Puerto Rico               NA             NA            NA     <NA>         <NA>
156                          Qatar               17           3.77            32     Asia          QAT
157                        Romania               24           1.40            57   Europe          ROU
158             Russian Federation               NA             NA            NA     <NA>         <NA>
159                         Rwanda              125           6.00            21   Africa          RWA
160                          Samoa               58           3.80            34  Oceania          WSM
161                     San Marino               NA             NA            NA     <NA>         <NA>
162          Sao Tome and Principe               NA             NA            NA     <NA>         <NA>
163                   Saudi Arabia               NA             NA            NA     <NA>         <NA>
164                        Senegal               62           5.62            13   Africa          SEN
165                         Serbia               NA             NA            NA     <NA>         <NA>
166                     Seychelles               12           2.59            NA   Africa          SYC
167                   Sierra Leone               NA             NA            NA     <NA>         <NA>
168                      Singapore                5           1.79            74  Oceania          SGP
169      Sint Maarten (Dutch part)               NA             NA            NA     <NA>         <NA>
170                Slovak Republic               NA             NA            NA     <NA>         <NA>
171                       Slovenia                7           1.30            NA   Europe          SVN
172                Solomon Islands               NA             NA            NA     <NA>         <NA>
173                        Somalia              112           7.00            NA   Africa          SOM
174                   South Africa               NA             NA            NA     <NA>         <NA>
175                    South Sudan               NA             NA            NA     <NA>         <NA>
176                          Spain                7           1.22            59   Europe          ESP
177                      Sri Lanka               NA             NA            NA     <NA>         <NA>
178            St. Kitts and Nevis               NA             NA            NA     <NA>         <NA>
179                      St. Lucia               NA             NA            NA     <NA>         <NA>
180       St. Martin (French part)               NA             NA            NA     <NA>         <NA>
181 St. Vincent and the Grenadines               NA             NA            NA     <NA>         <NA>
182                          Sudan               71           4.61             8   Africa          SDN
183                       Suriname               24           2.39            NA Americas          SUR
184                      Swaziland               65           4.46            20   Africa          SWZ
185                         Sweden                5           1.80            78   Europe          SWE
186                    Switzerland                5           1.46            71   Europe          CHE
187           Syrian Arab Republic               NA             NA            NA     <NA>         <NA>
188                     Tajikistan               56           3.93            21     Asia          TJK
189                       Tanzania               80           5.48            18   Africa          TZA
190                       Thailand               30           1.74            74     Asia          THA
191                    Timor-Leste               NA             NA            NA     <NA>         <NA>
192                           Togo               86           6.08            12   Africa          TGO
193                          Tonga                3           4.02            74  Oceania          TON
194            Trinidad and Tobago               NA             NA            NA     <NA>         <NA>
195                        Tunisia               37           2.92            60   Africa          TUN
196                         Turkey               44           2.50            63     Asia          TUR
197                   Turkmenistan               57           3.58            20     Asia          TKM
198       Turks and Caicos Islands               NA             NA            NA     <NA>         <NA>
199                         Tuvalu               NA             NA            NA  Oceania          TUV
200                         Uganda              113           7.10            15   Africa          UGA
201                        Ukraine               18           1.38            23   Europe          UKR
202           United Arab Emirates               NA             NA            NA     <NA>         <NA>
203                 United Kingdom               NA             NA            NA     <NA>         <NA>
204                  United States               NA             NA            NA     <NA>         <NA>
205                        Uruguay               17           2.25            NA Americas          URY
206                     Uzbekistan               43           3.48            56     Asia          UZB
207                        Vanuatu               38           4.36            15  Oceania          VUT
208                      Venezuela               21           2.98            52 Americas          VEN
209                        Vietnam               NA             NA            NA     <NA>         <NA>
210                          Yemen               80           7.60             7     Asia          YEM
211                    Yemen, Rep.               NA             NA            NA     <NA>         <NA>
212                         Zambia              103           5.49            25   Africa          ZMB
213                       Zimbabwe               68           4.68            48   Africa          ZWE
    internet_users_2010 internet_users_2011      gdp2010      gdp2011      gdp2012
1                  4.00             5.00000 1.593678e+04 1.803353e+04           NA
2                 45.00            49.00000 1.185817e+04 1.295956e+04 1.311901e+04
3                 12.50            14.00000 1.620000e+05 1.990000e+05 2.080000e+05
4                    NA                  NA           NA           NA           NA
5                 81.00            81.00000           NA           NA           NA
6                 10.00            14.77600 8.247089e+04 1.040000e+05 1.140000e+05
7                    NA                  NA 1.135539e+03 1.124587e+03 1.176349e+03
8                 40.00            47.70400 3.690000e+05 4.460000e+05 4.750000e+05
9                 25.00            32.00000 9.260286e+03 1.013808e+04 9.910388e+03
10                   NA                  NA 2.467704e+03 2.584464e+03           NA
11                76.00            79.00000 1.140000e+06 1.380000e+06 1.520000e+06
12                75.17            79.80000 3.770000e+05 4.180000e+05 4.000000e+05
13                46.00            50.00000 5.290600e+04 6.340365e+04 6.719774e+04
14                43.00            65.00000 7.888087e+03 7.872584e+03 8.149004e+03
15                55.00            77.00000 2.294546e+04           NA           NA
16                 3.70             5.00000 1.000000e+05 1.120000e+05 1.160000e+05
17                70.20            71.76570 4.109500e+03 3.685000e+03           NA
18                31.80            39.60000 5.522093e+04 6.427158e+04 6.326702e+04
19                75.00            78.00000 4.690000e+05 5.140000e+05 4.840000e+05
20                14.00                  NA 1.398500e+03 1.447500e+03           NA
21                 3.13             3.50000 6.558416e+03 7.294900e+03 7.557287e+03
22                   NA                  NA 5.757433e+03 5.557128e+03           NA
23                13.60            21.00000 1.585319e+03 1.833738e+03 1.779561e+03
24                22.40            30.00000 1.964972e+04 2.394867e+04 2.703511e+04
25                   NA                  NA 1.677547e+04 1.824247e+04 1.704758e+04
26                 6.00             7.00000 1.389598e+04 1.604025e+04 1.441099e+04
27                40.65            45.00000 2.140000e+06 2.480000e+06 2.250000e+06
28                   NA                  NA 1.236971e+04 1.635980e+04 1.695395e+04
29                46.23            51.00000 4.772733e+04 5.354465e+04 5.103048e+04
30                   NA                  NA 9.209288e+03 1.039576e+04 1.044101e+04
31                 1.00             1.11000 2.026864e+03 2.355652e+03 2.471954e+03
32                 1.26             3.10000 1.124227e+04 1.282954e+04 1.406180e+04
33                 4.30             5.00000 2.248842e+04 2.532074e+04 2.498398e+04
34                80.30            83.00000 1.580000e+06 1.780000e+06 1.820000e+06
35                   NA                  NA 1.659053e+03 1.901136e+03 1.897350e+03
36                   NA                  NA           NA           NA           NA
37                   NA                  NA 1.984748e+03 2.165869e+03 2.138966e+03
38                 1.70             1.90000 8.540675e+03 1.058139e+04 1.101802e+04
39                   NA                  NA           NA           NA           NA
40                45.00            53.89380 2.180000e+05 2.510000e+05 2.680000e+05
41                34.30            38.30000 5.930000e+06 7.320000e+06 8.230000e+06
42                36.50            40.40000 2.870000e+05 3.360000e+05 3.700000e+05
43                 5.10             5.50000 5.433762e+02 6.103727e+02 5.959004e+02
44                   NA                  NA 1.310798e+04 1.565363e+04 1.786972e+04
45                   NA                  NA 1.200788e+04 1.442561e+04 1.367793e+04
46                   NA                  NA 3.629827e+04 4.103225e+04 4.512729e+04
47                   NA                  NA 2.292078e+04 2.407381e+04 2.468037e+04
48                60.32            70.71000 5.887384e+04 6.178918e+04 5.644161e+04
49                15.90            23.23000           NA           NA           NA
50                   NA                  NA           NA           NA           NA
51                52.99            57.68000 2.313245e+04 2.499208e+04 2.298096e+04
52                   NA                  NA 1.980000e+05 2.160000e+05 1.960000e+05
53                88.72            90.00000 3.130000e+05 3.340000e+05 3.140000e+05
54                 6.50             7.00000 1.128612e+03 1.239145e+03           NA
55                47.45            51.31350 4.748867e+02 4.764757e+02 4.796388e+02
56                   NA                  NA 5.165390e+04 5.566855e+04 5.895124e+04
57                29.03            31.40000 6.762652e+04 7.769972e+04 8.453244e+04
58                30.20            38.69000 2.190000e+05 2.360000e+05 2.570000e+05
59                   NA                  NA 2.142790e+04 2.309510e+04 2.378680e+04
60                   NA                  NA 1.226142e+04 1.680689e+04 1.769739e+04
61                 5.40             6.20000 2.117040e+03 2.607740e+03 3.091837e+03
62                74.10            76.50000 1.884566e+04 2.215467e+04 2.185420e+04
63                 0.75             1.10000 2.970622e+04 3.170885e+04 4.313307e+04
64                   NA                  NA           NA           NA           NA
65                20.00            28.00000 3.173316e+03 3.818109e+03 3.881891e+03
66                86.89            89.37000 2.350000e+05 2.630000e+05 2.500000e+05
67                80.10            79.58000 2.550000e+06 2.780000e+06 2.610000e+06
68                   NA                  NA           NA           NA           NA
69                 7.23             8.00000 1.453934e+04 1.879135e+04 1.866110e+04
70                 9.20            10.87030 9.518058e+02 8.982829e+02 9.172921e+02
71                26.90            36.56000 1.163824e+04 1.443462e+04 1.582930e+04
72                82.00            83.00000 3.280000e+06 3.600000e+06 3.400000e+06
73                12.70            14.11000 3.229923e+04 3.917783e+04 4.071045e+04
74                44.40            53.00000 2.920000e+05 2.900000e+05 2.490000e+05
75                   NA                  NA           NA           NA           NA
76                33.46                  NA 7.697086e+02 7.803342e+02 7.895424e+02
77                   NA                  NA           NA           NA           NA
78                10.50            11.72740 4.134051e+04 4.698015e+04 5.080643e+04
79                 1.00             1.30000 4.735956e+03 5.095825e+03 6.767919e+03
80                   NA                  NA 8.353909e+02 9.677625e+02 8.974082e+02
81                29.90            32.00000 2.259288e+03 2.576732e+03 2.850572e+03
82                 8.37                  NA 6.634579e+03 7.346157e+03 7.843484e+03
83                11.09            15.90000 1.539629e+04 1.742374e+04 1.796750e+04
84                   NA                  NA 2.290000e+05 2.490000e+05 2.630000e+05
85                53.00            59.00000 1.290000e+05 1.390000e+05 1.260000e+05
86                95.00            95.02000 1.256446e+04 1.407476e+04 1.365653e+04
87                 7.50            10.07000 1.710000e+06 1.870000e+06 1.840000e+06
88                10.92            18.00000 7.090000e+05 8.460000e+05 8.780000e+05
89                16.00            21.00000 4.230000e+05 5.140000e+05           NA
90                 2.50             5.00000 1.350000e+05 1.810000e+05 2.100000e+05
91                69.85            76.82000 2.060000e+05 2.210000e+05 2.100000e+05
92                   NA                  NA           NA           NA           NA
93                67.50            70.00000 2.170000e+05 2.430000e+05           NA
94                53.68            56.80000 2.040000e+06 2.190000e+06 2.010000e+06
95                27.67            31.50000 1.320286e+04 1.442592e+04 1.483986e+04
96                78.21            79.53000 5.500000e+06 5.900000e+06 5.960000e+06
97                27.20            34.90000 2.642538e+04 2.884020e+04 3.124332e+04
98                31.60            45.00000 1.480000e+05 1.880000e+05 2.020000e+05
99                14.00            28.00000 3.219815e+04 3.362068e+04 3.722941e+04
100                9.07            10.00000 1.416107e+02 1.666839e+02 1.757093e+02
101                  NA                  NA           NA           NA           NA
102                  NA                  NA 1.010000e+06 1.110000e+06 1.130000e+06
103                  NA                  NA 5.593654e+03 6.452514e+03 6.237564e+03
104               61.40            74.20000 1.240000e+05 1.770000e+05           NA
105                  NA                  NA 4.794362e+03 6.197766e+03 6.473176e+03
106                  NA                  NA 7.181441e+03 8.226922e+03 9.298927e+03
107               68.42            71.68000 2.400968e+04 2.848034e+04 2.837386e+04
108               43.68            52.00000 3.712438e+04 4.009433e+04 4.294527e+04
109                3.86             4.22480 2.203867e+03 2.524537e+03 2.447573e+03
110                2.30             3.00000 1.292696e+03 1.545413e+03 1.767122e+03
111               14.00            16.99810           NA           NA           NA
112               80.00            85.00000           NA           NA           NA
113               62.12            65.05000 3.630638e+04 4.287207e+04 4.224553e+04
114               90.62            90.89000 5.250724e+04 5.920083e+04 5.711713e+04
115                  NA                  NA 2.835971e+04 3.679700e+04 4.358227e+04
116               51.90            56.70000 9.338666e+03 1.043910e+04 9.663204e+03
117                1.70             1.90000 8.837042e+03 9.911781e+03 9.975125e+03
118                2.26             3.33000 5.398617e+03 5.621001e+03 4.263795e+03
119               56.30            61.00000 2.470000e+05 2.880000e+05 3.040000e+05
120               28.30            34.00000 2.134105e+03 2.153637e+03 2.222429e+03
121                1.90             2.00000 9.422267e+03 1.065640e+04 1.030815e+04
122               63.00            69.22000 8.163841e+03 9.151793e+03 8.721923e+03
123                  NA                  NA 1.629358e+02 1.737000e+02 1.869012e+02
124                4.00             4.50000 3.671380e+03 4.273233e+03 4.199052e+03
125               28.33            34.95000 9.718331e+03 1.124189e+04 1.049201e+04
126               31.05            36.15000 1.040000e+06 1.160000e+06 1.180000e+06
127                  NA                  NA 2.941172e+02 3.102875e+02 3.272000e+02
128               32.30            38.00000 5.811622e+03 7.015201e+03 7.254114e+03
129               75.00                  NA 5.350993e+03 6.074507e+03           NA
130               12.90            20.00000 6.200357e+03 8.761426e+03 1.027139e+04
131                  NA                  NA 4.114781e+03 4.501812e+03 4.231452e+03
132               49.00            51.00000 9.077067e+04 9.921134e+04 9.672945e+04
133                4.17             4.30000 9.274449e+03 1.256844e+04 1.458771e+04
134                0.25             0.98000           NA           NA           NA
135               11.60            12.00000 1.103299e+04 1.247781e+04 1.280711e+04
136                7.93             9.00000 1.595571e+04 1.897726e+04 1.941466e+04
137               90.72            92.30000 7.750000e+05 8.360000e+05 7.720000e+05
138                  NA                  NA           NA           NA           NA
139                  NA                  NA 1.400000e+05           NA           NA
140               10.00            10.60000 8.586296e+03 9.635568e+03 1.050736e+04
141                0.83             1.30000 5.410608e+03 6.016972e+03 6.568232e+03
142               24.00            28.43000 2.290000e+05 2.440000e+05 2.630000e+05
143                  NA                  NA           NA           NA           NA
144               93.39            93.97000 4.210000e+05 4.910000e+05 5.000000e+05
145               62.00            68.00000 5.784916e+04 7.178154e+04           NA
146                8.00             9.00000 1.760000e+05 2.110000e+05 2.310000e+05
147                  NA                  NA 1.965433e+02 2.129033e+02 2.284157e+02
148               40.10            42.70000 2.705300e+04 3.131580e+04 3.625250e+04
149                  NA                  NA 9.480048e+03 1.239360e+04 1.565392e+04
150               19.80            23.90000 2.002838e+04 2.600797e+04 2.550206e+04
151               34.77            36.50000 1.540000e+05 1.770000e+05 1.970000e+05
152               25.00            29.00000 2.000000e+05 2.250000e+05 2.500000e+05
153               62.32            64.88000 4.700000e+05 5.160000e+05 4.900000e+05
154               51.10            55.30000 2.270000e+05 2.380000e+05 2.120000e+05
155                  NA                  NA 9.714730e+04 9.875700e+04 1.010000e+05
156               81.60            86.20000 1.270000e+05 1.730000e+05           NA
157               39.93            44.02000 1.640000e+05 1.900000e+05 1.690000e+05
158                  NA                  NA 1.520000e+06 1.900000e+06 2.010000e+06
159                8.00             7.00000 5.624506e+03 6.354119e+03 7.103001e+03
160                7.00                  NA 5.721604e+02 6.341560e+02 6.770414e+02
161                  NA                  NA           NA           NA           NA
162                  NA                  NA 2.010379e+02 2.482868e+02 2.637290e+02
163                  NA                  NA 4.510000e+05 5.770000e+05           NA
164               16.00            17.50000 1.285530e+04 1.444839e+04 1.415976e+04
165                  NA                  NA 3.699000e+04 4.329185e+04 3.748894e+04
166               41.00            43.16400 9.733375e+02 1.059605e+03 1.032178e+03
167                  NA                  NA 2.575466e+03 2.938747e+03 3.796030e+03
168               71.00            71.00000 2.170000e+05 2.450000e+05 2.750000e+05
169                  NA                  NA           NA           NA           NA
170                  NA                  NA 8.707744e+04 9.606380e+04 9.161923e+04
171               70.00            72.00000 4.690833e+04 5.027940e+04 4.546923e+04
172                  NA                  NA 6.786255e+02 8.666724e+02 1.008424e+03
173                  NA             1.25000           NA           NA           NA
174                  NA                  NA 3.630000e+05 4.020000e+05 3.840000e+05
175                  NA                  NA 1.497158e+04 1.917262e+04 9.337313e+03
176               65.80            67.60000 1.380000e+06 1.480000e+06 1.350000e+06
177                  NA                  NA 4.956555e+04 5.918688e+04 5.942143e+04
178                  NA                  NA 7.154707e+02 7.480753e+02 7.484926e+02
179                  NA                  NA 1.199537e+03 1.210998e+03 1.186225e+03
180                  NA                  NA           NA           NA           NA
181                  NA                  NA 6.809601e+02 6.911198e+02 7.125891e+02
182                8.00            19.00000 6.479171e+04 6.405337e+04 5.876880e+04
183               31.59            32.00000 4.366915e+03 4.304468e+03 4.738182e+03
184               11.04            18.13000 3.691051e+03 3.969078e+03 3.746506e+03
185               90.00            91.00000 4.630000e+05 5.390000e+05 5.260000e+05
186               83.90            85.20000 5.520000e+05 6.590000e+05 6.320000e+05
187                  NA                  NA 5.914703e+04           NA 7.367241e+04
188               11.55            13.03000 5.641742e+03 6.522200e+03 6.986537e+03
189               11.00            12.00000 2.291500e+04 2.387417e+04 2.824884e+04
190               22.40            23.70000 3.190000e+05 3.460000e+05 3.660000e+05
191                  NA                  NA 8.751000e+02 1.091000e+03 1.292700e+03
192                3.00             3.50000 3.172945e+03 3.685781e+03 3.813835e+03
193               16.00            25.00000 3.687828e+02 4.287243e+02 4.715912e+02
194                  NA                  NA 2.068201e+04 2.349765e+04 2.398571e+04
195               36.80            39.10000 4.437774e+04 4.643462e+04 4.566204e+04
196               39.82            42.10000 7.310000e+05 7.750000e+05 7.890000e+05
197                3.00             5.00000 2.258326e+04 2.806179e+04 3.367895e+04
198                  NA                  NA           NA           NA           NA
199               25.00            30.00000 3.181652e+01 3.580437e+01 3.687458e+01
200               12.50            13.01354 1.719711e+04 1.682241e+04 1.988141e+04
201               23.30            30.60000 1.360000e+05 1.630000e+05 1.760000e+05
202                  NA                  NA 2.980000e+05 3.600000e+05           NA
203                  NA                  NA 2.260000e+06 2.440000e+06 2.440000e+06
204                  NA                  NA 1.440000e+07 1.500000e+07 1.570000e+07
205               46.40            51.40000 3.884615e+04 4.643470e+04 4.905971e+04
206               20.00            30.20000 3.898161e+04 4.532432e+04 5.111275e+04
207                8.00                  NA 7.008040e+02 7.862947e+02 7.853567e+02
208               37.37            40.22000 3.940000e+05 3.160000e+05 3.820000e+05
209                  NA                  NA 1.060000e+05 1.240000e+05 1.420000e+05
210               12.35            14.90500           NA           NA           NA
211                  NA                  NA 3.188341e+04 3.172463e+04 3.564582e+04
212               10.00            11.50000 1.619020e+04 1.920404e+04 2.067803e+04
213               11.50            15.70000 7.433314e+03 9.656200e+03 1.081391e+04
                      Country.Name Country.Code      X2010      X2011      X2012 mobile_growth_2011
1                      Afghanistan          AFG  41.385796  54.262080  53.896963       31.112809111
2                          Albania          ALB  84.024138  96.393394 108.447335       14.721075574
3                          Algeria          DZA  92.421261  98.987590 103.305864        7.104782381
4                   American Samoa          ASM         NA         NA         NA                 NA
5                          Andorra          AND  77.176423  75.487727  74.270436       -2.188098819
6                           Angola          AGO  46.689242  48.377974  48.610002        3.616963290
7              Antigua and Barbuda          ATG 189.347311 196.411195 198.617832        3.730648903
8                        Argentina          ARG 132.880086 134.921114 142.511758        1.535992684
9                          Armenia          ARM 125.008538 103.566374 106.878962      -17.152559852
10                           Aruba          ABW 122.618339         NA 124.324275                 NA
11                       Australia          AUS 101.040111 108.335355 106.192815        7.220145939
12                         Austria          AUT 145.836540 154.783240 161.206988        6.134745033
13                      Azerbaijan          AZE  99.045798 108.747904 107.472132        9.795575871
14                    Bahamas, The          BHS 124.936056  86.062977  72.308021      -31.114379953
15                         Bahrain          BHR 124.184224 127.964126 156.228498        3.043786468
16                      Bangladesh          BGD  45.680889  56.061299  63.762733       22.723748935
17                        Barbados          BRB 128.072191 127.011773 126.397844       -0.827984274
18                         Belarus          BLR 107.685739 111.877881 112.059546        3.892940554
19                         Belgium          BEL 113.461222 120.490111 119.385902        6.194970114
20                          Belize          BLZ  62.318413  69.955147  50.618270       12.254378805
21                           Benin          BEN  79.943507  85.332665  89.905813        6.741208955
22                         Bermuda          BMU 135.815586         NA 139.553429                 NA
23                          Bhutan          BTN  54.317988  65.584538  74.741186       20.741840051
24                         Bolivia          BOL  72.300123  82.821546  92.638408       14.552428064
25          Bosnia and Herzegovina          BIH  82.715685  84.517332  89.533136        2.178120342
26                        Botswana          BWA 117.761623 142.818177 150.091100       21.277351657
27                          Brazil          BRA 101.017463 119.171895 125.187801       17.971578061
28               Brunei Darussalam          BRN 109.070490 109.169627 113.768249        0.090892229
29                        Bulgaria          BGR 136.102083 140.678124 145.727454        3.362211645
30                    Burkina Faso          BFA  34.658747  45.274459  57.065062       30.629241155
31                         Burundi          BDI  20.017407  22.327086  25.683239       11.538351163
32                        Cambodia          KHM  57.650424  96.167941 131.956712       66.812200409
33                        Cameroon          CMR  44.067049  52.353592  64.038764       18.804397655
34                          Canada          CAN  75.920008  79.730859  75.741085        5.019561179
35                      Cape Verde          CPV  74.974143  79.193144  84.163970        5.627274626
36                  Cayman Islands          CYM 177.647163 167.674382 168.274994       -5.613814209
37        Central African Republic          CAF  22.249958  22.119012  23.389791       -0.588523987
38                            Chad          TCD  25.610143  31.804800  35.489760       24.188297897
39                 Channel Islands          CHI         NA         NA         NA                 NA
40                           Chile          CHL 116.002127 129.708078 138.497719       11.815259007
41                           China          CHN  64.040892  73.187769  81.264734       14.282869340
42                        Colombia          COL  96.074751  98.451420 103.187442        2.473771315
43                         Comoros          COM  22.494454  28.707475  32.327140       27.620236337
44                Congo, Dem. Rep.          COD  17.918905  23.089487  28.008567       28.855459475
45                     Congo, Rep.          COG  91.982214  93.840422 101.182855        2.020182320
46                      Costa Rica          CRI  65.144465  92.204757 128.319647       41.538897402
47                   Cote d Ivoire          CIV  79.031321  86.063282  96.271948        8.897689379
48                         Croatia          HRV 111.923294 116.370610 113.310348        3.973539131
49                            Cuba          CUB   8.909370  11.686335  14.948931       31.169040145
50                         Curacao          CUW         NA         NA         NA                 NA
51                          Cyprus          CYP  93.695810  97.705461  98.385446        4.279433963
52                  Czech Republic          CZE 123.634151 126.112488 122.785116        2.004573236
53                         Denmark          DNK 115.686950 116.745343 117.955892        0.914877089
54                        Djibouti          DJI  18.635087  21.318096  22.650719       14.397618091
55                        Dominica          DMA 155.802353 160.951607 161.531072        3.304991431
56              Dominican Republic          DOM  89.578889  87.217802  88.753532       -2.635763534
57                         Ecuador          ECU 102.184561 104.545599 110.708069        2.310562363
58                Egypt, Arab Rep.          EGY  87.105605 101.076339 115.293808       16.038845446
59                     El Salvador          SLV 124.339491 133.539334 138.071869        7.398970670
60               Equatorial Guinea          GNQ  57.008771  66.488664  67.670037       16.628832661
61                         Eritrea          ERI   3.526578   4.467710   5.470176       26.686818064
62                         Estonia          EST 123.239110 138.983109 154.545882       12.775164475
63                        Ethiopia          ETH   8.262855  16.671720  23.716474      101.767074822
64                  Faeroe Islands          FRO 122.045660 122.792297 124.299542        0.611768498
65                            Fiji          FJI  81.094742  83.716603  98.057482        3.233083565
66                         Finland          FIN 156.397205 166.023804 172.508670        6.155224645
67                          France          FRA  92.032757  94.756678  98.143999        2.959729888
68                French Polynesia          PYF  79.733643  81.389963  81.667757        2.077317336
69                           Gabon          GAB 106.943844 154.486457 187.355367       44.455679791
70                     Gambia, The          GMB  85.532986  78.889738  83.637124       -7.766884569
71                         Georgia          GEO  91.447079 102.340434 109.158591       11.912196053
72                         Germany          DEU 127.043582 132.298779 131.304916        4.136530312
73                           Ghana          GHA  71.486863  84.779296 100.283755       18.594232144
74                          Greece          GRC 108.216758 106.478946 116.944125       -1.605862093
75                       Greenland          GRL 100.092502 102.523736 103.760908        2.428987436
76                         Grenada          GRD 116.709256 119.172466 121.553992        2.110553002
77                            Guam          GUM         NA         NA         NA                 NA
78                       Guatemala          GTM 125.568553 131.996259 137.321125        5.118881381
79                          Guinea          GIN  40.073776  44.023523  45.617139        9.856189339
80                   Guinea-Bissau          GNB  47.187743  56.178586  69.446555       19.053345924
81                          Guyana          GUY  74.274645  69.937702  72.205701       -5.839063423
82                           Haiti          HTI  40.027030  41.486452  59.430173        3.646089657
83                        Honduras          HND 125.058101 103.965885  93.149699      -16.865933259
84            Hong Kong SAR, China          HKG 195.567268 214.722304 227.932884        9.794602361
85                         Hungary          HUN 120.315005 117.296819 116.380938       -2.508570477
86                         Iceland          ISL 106.541282 106.079244 105.394621       -0.433671051
87                           India          IND  61.422603  71.999055  68.718507       17.219152302
88                       Indonesia          IDN  88.084967 102.488561 115.195772       16.351932717
89              Iran, Islamic Rep.          IRN  73.068963  74.925208  76.915958        2.540402307
90                            Iraq          IRQ  73.455129  78.123512  79.387431        6.355422022
91                         Ireland          IRL 105.180742 108.408455 107.128423        3.068729246
92                     Isle of Man          IMN         NA         NA         NA                 NA
93                          Israel          ISR 122.816241 121.657815 119.888182       -0.943218497
94                           Italy          ITA 154.689824 157.991550 159.480626        2.134417392
95                         Jamaica          JAM 116.086634 108.121404  96.538445       -6.861452893
96                           Japan          JPN  97.432512 104.951795 109.434257        7.717427399
97                          Jordan          JOR 106.994620 118.204759 139.134122       10.477292346
98                      Kazakhstan          KAZ 121.066740 155.742515 175.391485       28.641867465
99                           Kenya          KEN  61.632283  67.486072  71.888123        9.497925832
100                       Kiribati          KIR  10.643321  13.638927  15.585428       28.145406308
101               Korea, Dem. Rep.          PRK   1.774069   4.089765   6.923608      130.530135714
102                    Korea, Rep.          KOR 105.362111 108.504517 110.364837        2.982482493
103                         Kosovo          KSV         NA         NA         NA                 NA
104                         Kuwait          KWT 145.397686 175.091784 191.108377       20.422675503
105                Kyrgyz Republic          KGZ  98.898696 116.402687 124.775072       17.698909248
106                        Lao PDR          LAO  64.561578  87.163148 101.852325       35.007772602
107                         Latvia          LVA 102.399581 102.935971 103.375501        0.523820797
108                        Lebanon          LBN  67.745341  79.518149  93.202747       17.378033075
109                        Lesotho          LSO  45.476895  56.173300  59.170896       23.520526072
110                        Liberia          LBR  39.340511  49.167751  56.391336       24.979950387
111                          Libya          LBY 171.515467 155.696014 148.187718       -9.223338754
112                  Liechtenstein          LIE  98.523535 101.834509 103.870544        3.360591936
113                      Lithuania          LTU 147.158588 151.297921 151.779341        2.812838768
114                     Luxembourg          LUX 143.265911 148.267535 145.466045        3.491146962
115               Macao SAR, China          MAC 206.428514 243.498023 284.339165       17.957552982
116                 Macedonia, FYR          MKD 104.506632 107.235356 108.161226        2.611052751
117                     Madagascar          MDG  37.229837  40.725860  39.054367        9.390379771
118                         Malawi          MWI  20.920725  25.691443  27.826295       22.803785539
119                       Malaysia          MYS 119.216505 127.035255 140.935082        6.558445802
120                       Maldives          MDV 156.497143 165.723364 172.841360        5.895456447
121                           Mali          MLI  48.409079  68.322258  89.545482       41.135214968
122                          Malta          MLT 109.378774 124.863410 128.682385       14.156892739
123               Marshall Islands          MHL         NA         NA         NA                 NA
124                     Mauritania          MRT  80.237923  93.596769 111.062360       16.649042000
125                      Mauritius          MUS  91.666077  99.043849 113.091537        8.048531024
126                         Mexico          MEX  80.568716  82.394373  86.774620        2.265961595
127          Micronesia, Fed. Sts.          FSM  24.776705  24.744043  24.621313       -0.131828343
128                        Moldova          MDA  88.585331 101.200808 115.937329       14.241044958
129                         Monaco          MCO  66.128167  89.730996  93.654779       35.692550603
130                       Mongolia          MNG  90.280093 104.646604 117.622593       15.913266442
131                     Montenegro          MNE 185.276093 181.570586 177.940442       -1.999992195
132                        Morocco          MAR 100.096606 113.264873 119.687387       13.155557829
133                     Mozambique          MOZ  30.884736  32.826748  33.129391        6.287935649
134                        Myanmar          MMR   1.238454   2.572822  11.164840      107.744621463
135                        Namibia          NAM  85.504507  96.393251 103.003215       12.734701511
136                          Nepal          NPL  30.693449  43.805568  52.819734       42.719603190
137                    Netherlands          NLD 115.445819 118.989566 117.522628        3.069619792
138                  New Caledonia          NCL  88.018097  89.205544  89.280538        1.349094573
139                    New Zealand          NZL 107.826313 109.185416 110.327650        1.260455320
140                      Nicaragua          NIC  68.454309  82.174614  89.774837       20.043011638
141                          Niger          NER  23.650310  29.515718  32.416667       24.800554645
142                        Nigeria          NGA  55.104176  58.575045  67.681812        6.298741208
143       Northern Mariana Islands          MNP         NA         NA         NA                 NA
144                         Norway          NOR 114.666367 115.616908 115.548852        0.828962338
145                           Oman          OMN 165.543238 168.974104 181.732912        2.072488999
146                       Pakistan          PAK  57.136881  61.610961  66.768811        7.830460383
147                          Palau          PLW  70.887065  74.942986  82.623567        5.721665575
148                         Panama          PAN 188.987437 188.604875 186.734422       -0.202427529
149               Papua New Guinea          PNG  27.836161  34.218114  37.781837       22.926840901
150                       Paraguay          PRY  91.731567  99.402630 101.657354        8.362512002
151                           Peru          PER 101.904565 110.413663  98.837176        8.350066277
152                    Philippines          PHL  89.158725  99.301823 106.767327       11.376450887
153                         Poland          POL 122.665120 130.970231 132.682310        6.770556199
154                       Portugal          PRT 114.376794 115.388062 115.069351        0.884155137
155                    Puerto Rico          PRI  78.260362  82.988931  81.747325        6.042100539
156                          Qatar          QAT 124.315198 123.110937 134.106751       -0.968715748
157                        Romania          ROU 113.374194 109.252935 106.136678       -3.635094499
158             Russian Federation          RUS 166.264883 179.308703 183.518214        7.845204455
159                         Rwanda          RWA  33.403232  40.630671  50.486684       21.636946173
160                          Samoa          WSM         NA         NA         NA                 NA
161                     San Marino          SMR  96.996892 111.753584 112.693692       15.213572125
162          Sao Tome and Principe          STP  62.111163  68.261277  70.980579        9.901785877
163                   Saudi Arabia          SAU 187.861460 191.242694 184.678893        1.799855387
164                        Senegal          SEN  67.105513  73.254960  87.509110        9.163846672
165                         Serbia          SRB 122.080354 125.392874  92.802700        2.713393601
166                     Seychelles          SYC 135.910446 145.713003 158.625199        7.212511591
167                   Sierra Leone          SLE  34.085858  35.631596  36.073093        4.534837032
168                      Singapore          SGP 145.182720 150.239026 153.397518        3.482718814
169      Sint Maarten (Dutch part)          SXM         NA         NA         NA                 NA
170                Slovak Republic          SVK 108.474605 109.349480 111.206146        0.806525639
171                       Slovenia          SVN 104.546037 106.561927 110.078591        1.928231965
172                Solomon Islands          SLB  21.462497  49.771578  53.337535      131.900217207
173                        Somalia          SOM   6.946832   6.853706   6.716037       -1.340549927
174                   South Africa          ZAF 100.477099 126.833191 134.797698       26.230944306
175                    South Sudan          SSD         NA         NA  18.823218                 NA
176                          Spain          ESP 111.529460 113.222917 108.319013        1.518393974
177                      Sri Lanka          LKA  83.218382  87.047299  95.761878        4.601047194
178            St. Kitts and Nevis          KNA 152.665929 154.568246 156.433320        1.246065127
179                      St. Lucia          LCA 113.740410 122.997660 127.675850        8.138927859
180       St. Martin (French part)          MAF         NA         NA         NA                 NA
181 St. Vincent and the Grenadines          VCT 120.540916 120.522105 123.881061       -0.015605821
182                          Sudan          SDN  41.544029  56.138997  60.492859       35.131325009
183                       Suriname          SUR 169.641428 178.875333 182.898863        5.443190163
184                      Swaziland          SWZ  61.194581  63.701561  65.961547        4.096736064
185                         Sweden          SWE 117.193751 121.327814 122.619487        3.527546200
186                    Switzerland          CHE 125.831901 130.914592 135.252050        4.039270630
187           Syrian Arab Republic          SYR  57.809219  63.166857  61.218869        9.267791846
188                     Tajikistan          TJK  86.366558  90.641222  92.219606        4.949443939
189                       Tanzania          TZA  46.795895  55.532877  57.115732       18.670402895
190                       Thailand          THA 103.767335 111.631690 120.292545        7.578835397
191                    Timor-Leste          TLS  42.070343  53.226981  52.308216       26.519009435
192                           Togo          TGO  40.685388  50.445708  55.991540       23.989743411
193                          Tonga          TON  52.182437  52.627046  53.388756        0.852029491
194            Trinidad and Tobago          TTO 141.206815 135.640807 139.428897       -3.941741979
195                        Tunisia          TUN 106.042133 116.930237 119.956463       10.267715069
196                         Turkey          TUR  84.904001  88.704649  90.835678        4.476405563
197                   Turkmenistan          TKM  63.419817  68.771655  76.465377        8.438747519
198       Turks and Caicos Islands          TCA         NA         NA         NA                 NA
199                         Tuvalu          TUV  16.281673  21.630954  28.377420       32.854613096
200                         Uganda          UGA  38.379613  48.384169  45.917851       26.067370030
201                        Ukraine          UKR 118.659654 122.983535 132.050154        3.643935534
202           United Arab Emirates          ARE 145.453540 148.618856 169.941621        2.176170210
203                 United Kingdom          GBR 130.756423 130.751937 130.750773       -0.003430501
204                  United States          USA  91.859776  95.275289  98.166104        3.718180842
205                        Uruguay          URY 131.713858 140.751886 147.296626        6.861865677
206                     Uzbekistan          UZB  76.342603  91.648214  72.207640       20.048583963
207                        Vanuatu          VUT  70.909364  55.759530  54.435500      -21.365068263
208                  Venezuela, RB          VEN  96.205209  97.775268 102.100082        1.631989344
209                        Vietnam          VNM 127.003046 143.389101 149.409997       12.902096222
210          Virgin Islands (U.S.)          VIR         NA         NA         NA                 NA
211             West Bank and Gaza          PSE  64.457991  69.477544  71.204608        7.787325299
212                    Yemen, Rep.          YEM  46.086659  47.048615  54.362146        2.087276948
213                         Zambia          ZMB  41.616395  60.590559  75.806660       45.593002537

> showData(Countries_MobileMerge, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> Countries_MobileMerge = Countries_MobileMerge[order(Countries_MobileMerge$Country),]

> showData(Countries_MobileMerge, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> Countries_MobileMergeNA = na.omit(Countries_MobileMerge)

> names(Countries_MobileMergeNA)
 [1] "Country"             "infant.mortality"    "fertility_rate"      "contraception"      
 [5] "region"              "Country_Code"        "internet_users_2010" "internet_users_2011"
 [9] "gdp2010"             "gdp2011"             "gdp2012"             "Country.Name"       
[13] "Country.Code"        "X2010"               "X2011"               "X2012"              
[17] "mobile_growth_2011" 

> showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> Countries_MobileMerge[!complete.cases(Countries_MobileMerge),]
                           Country infant.mortality fertility_rate contraception   region Country_Code
1                      Afghanistan              154           6.90            NA     Asia          AFG
2                          Albania               32           2.60            NA   Europe          ALB
4                   American Samoa               NA             NA            NA     <NA>         <NA>
5                          Andorra               NA             NA            NA   Europe          AND
6                           Angola              124           6.69            NA   Africa          AGO
7              Antigua and Barbuda               NA             NA            NA     <NA>         <NA>
8                        Argentina               22           2.62            NA Americas          ARG
10                           Aruba               NA             NA            NA     <NA>         <NA>
15                         Bahrain               18           2.97            53     Asia          BHR
17                        Barbados                9           1.73            55 Americas          BRB
20                          Belize               30           3.66            47 Americas          BLZ
22                         Bermuda               NA             NA            NA     <NA>         <NA>
25          Bosnia and Herzegovina               NA             NA            NA     <NA>         <NA>
28               Brunei Darussalam               NA             NA            NA     <NA>         <NA>
29                        Bulgaria               16           1.45            NA   Europe          BGR
30                    Burkina Faso               NA             NA            NA     <NA>         <NA>
32                        Cambodia              102           4.50            NA     Asia          KHM
35                      Cape Verde               NA             NA            NA     <NA>         <NA>
36                  Cayman Islands               NA             NA            NA     <NA>         <NA>
37        Central African Republic               NA             NA            NA     <NA>         <NA>
38                            Chad              115           5.51            NA   Africa          TCD
39                 Channel Islands               NA             NA            NA     <NA>         <NA>
44                 Congo Dem. Rep.               NA             NA            NA     <NA>         <NA>
45                      Congo Rep.               NA             NA            NA     <NA>         <NA>
46                      Costa Rica               NA             NA            NA     <NA>         <NA>
47                   Cote d Ivoire               NA             NA            NA     <NA>         <NA>
48                         Croatia               10           1.60            NA   Europe          HRV
49                            Cuba                9           1.55            70 Americas          CUB
50                         Curacao               NA             NA            NA     <NA>         <NA>
51                          Cyprus                7           2.31            NA   Europe          CYP
52                  Czech Republic               NA             NA            NA     <NA>         <NA>
54                        Djibouti              106           5.39            NA   Africa          DJI
55                        Dominica               NA             NA            50 Americas          DMA
56              Dominican Republic               NA             NA            NA     <NA>         <NA>
59                     El Salvador               NA             NA            NA     <NA>         <NA>
60               Equatorial Guinea               NA             NA            NA     <NA>         <NA>
64                  Faeroe Islands               NA             NA            NA     <NA>         <NA>
66                         Finland                5           1.83            NA   Europe          FIN
68                French Polynesia               NA             NA            NA     <NA>         <NA>
69                           Gabon               85           5.40            NA   Africa          GAB
74                          Greece                8           1.38            NA   Europe          GRC
75                       Greenland               NA             NA            NA     <NA>         <NA>
76                         Grenada               14             NA            54 Americas          GRD
77                            Guam               10           3.04            NA  Oceania          GUM
80                   Guinea-Bissau               NA             NA            NA     <NA>         <NA>
81                          Guyana               58           2.32            NA Americas          GUY
82                           Haiti               82           4.60            18 Americas          HTI
84                       Hong Kong               NA             NA            NA     <NA>         <NA>
86                         Iceland                5           2.19            NA   Europe          ISL
89                            Iran               39           4.77            65     Asia          IRN
91                         Ireland                6           1.80            NA   Europe          IRL
92                     Isle of Man               NA             NA            NA     <NA>         <NA>
93                          Israel                7           2.75            NA     Asia          ISR
94                           Italy                7           1.19            NA   Europe          ITA
101                Korea Dem. Rep.               NA             NA            NA     <NA>         <NA>
102                     Korea Rep.               NA             NA            NA     <NA>         <NA>
103                         Kosovo               NA             NA            NA     <NA>         <NA>
104                         Kuwait               14           2.77            35     Asia          KWT
105                Kyrgyz Republic               NA             NA            NA     <NA>         <NA>
106                        Lao PDR               NA             NA            NA     <NA>         <NA>
108                        Lebanon               29           2.75            NA     Asia          LBN
111                          Libya               56           5.92            40   Africa          LBY
112                  Liechtenstein               NA           1.45            NA   Europe          LIE
114                     Luxembourg                6           1.76            NA   Europe          LUX
115                          Macao               NA             NA            NA     <NA>         <NA>
116                      Macedonia               23           1.90            NA   Europe          MKD
120                       Maldives               49           6.80            NA     Asia          MDV
122                          Malta                8           2.10            NA   Europe          MLT
123               Marshall Islands               NA             NA            NA     <NA>         <NA>
127                     Micronesia               NA             NA            NA     <NA>         <NA>
129                         Monaco               NA             NA            NA   Europe          MCO
131                     Montenegro               NA             NA            NA     <NA>         <NA>
133                     Mozambique              110           6.06            NA   Africa          MOZ
134                        Myanmar               78           3.30            17     Asia          MMR
138                  New Caledonia               NA             NA            NA     <NA>         <NA>
139                    New Zealand               NA             NA            NA     <NA>         <NA>
143       Northern Mariana Islands               NA             NA            NA     <NA>         <NA>
145                           Oman               25           7.20             9     Asia          OMN
147                          Palau               25           3.00            NA  Oceania          PLW
149               Papua New Guinea               NA             NA            NA     <NA>         <NA>
153                         Poland               13           1.65            NA   Europe          POL
155                    Puerto Rico               NA             NA            NA     <NA>         <NA>
156                          Qatar               17           3.77            32     Asia          QAT
158             Russian Federation               NA             NA            NA     <NA>         <NA>
160                          Samoa               58           3.80            34  Oceania          WSM
161                     San Marino               NA             NA            NA     <NA>         <NA>
162          Sao Tome and Principe               NA             NA            NA     <NA>         <NA>
163                   Saudi Arabia               NA             NA            NA     <NA>         <NA>
165                         Serbia               NA             NA            NA     <NA>         <NA>
166                     Seychelles               12           2.59            NA   Africa          SYC
167                   Sierra Leone               NA             NA            NA     <NA>         <NA>
169      Sint Maarten (Dutch part)               NA             NA            NA     <NA>         <NA>
170                Slovak Republic               NA             NA            NA     <NA>         <NA>
171                       Slovenia                7           1.30            NA   Europe          SVN
172                Solomon Islands               NA             NA            NA     <NA>         <NA>
173                        Somalia              112           7.00            NA   Africa          SOM
174                   South Africa               NA             NA            NA     <NA>         <NA>
175                    South Sudan               NA             NA            NA     <NA>         <NA>
177                      Sri Lanka               NA             NA            NA     <NA>         <NA>
178            St. Kitts and Nevis               NA             NA            NA     <NA>         <NA>
179                      St. Lucia               NA             NA            NA     <NA>         <NA>
180       St. Martin (French part)               NA             NA            NA     <NA>         <NA>
181 St. Vincent and the Grenadines               NA             NA            NA     <NA>         <NA>
183                       Suriname               24           2.39            NA Americas          SUR
187           Syrian Arab Republic               NA             NA            NA     <NA>         <NA>
191                    Timor-Leste               NA             NA            NA     <NA>         <NA>
194            Trinidad and Tobago               NA             NA            NA     <NA>         <NA>
198       Turks and Caicos Islands               NA             NA            NA     <NA>         <NA>
199                         Tuvalu               NA             NA            NA  Oceania          TUV
202           United Arab Emirates               NA             NA            NA     <NA>         <NA>
203                 United Kingdom               NA             NA            NA     <NA>         <NA>
204                  United States               NA             NA            NA     <NA>         <NA>
205                        Uruguay               17           2.25            NA Americas          URY
207                        Vanuatu               38           4.36            15  Oceania          VUT
209                        Vietnam               NA             NA            NA     <NA>         <NA>
210                          Yemen               80           7.60             7     Asia          YEM
211                    Yemen, Rep.               NA             NA            NA     <NA>         <NA>
    internet_users_2010 internet_users_2011      gdp2010      gdp2011      gdp2012                   Country.Name
1                  4.00              5.0000 1.593678e+04 1.803353e+04           NA                    Afghanistan
2                 45.00             49.0000 1.185817e+04 1.295956e+04 1.311901e+04                        Albania
4                    NA                  NA           NA           NA           NA                 American Samoa
5                 81.00             81.0000           NA           NA           NA                        Andorra
6                 10.00             14.7760 8.247089e+04 1.040000e+05 1.140000e+05                         Angola
7                    NA                  NA 1.135539e+03 1.124587e+03 1.176349e+03            Antigua and Barbuda
8                 40.00             47.7040 3.690000e+05 4.460000e+05 4.750000e+05                      Argentina
10                   NA                  NA 2.467704e+03 2.584464e+03           NA                          Aruba
15                55.00             77.0000 2.294546e+04           NA           NA                        Bahrain
17                70.20             71.7657 4.109500e+03 3.685000e+03           NA                       Barbados
20                14.00                  NA 1.398500e+03 1.447500e+03           NA                         Belize
22                   NA                  NA 5.757433e+03 5.557128e+03           NA                        Bermuda
25                   NA                  NA 1.677547e+04 1.824247e+04 1.704758e+04         Bosnia and Herzegovina
28                   NA                  NA 1.236971e+04 1.635980e+04 1.695395e+04              Brunei Darussalam
29                46.23             51.0000 4.772733e+04 5.354465e+04 5.103048e+04                       Bulgaria
30                   NA                  NA 9.209288e+03 1.039576e+04 1.044101e+04                   Burkina Faso
32                 1.26              3.1000 1.124227e+04 1.282954e+04 1.406180e+04                       Cambodia
35                   NA                  NA 1.659053e+03 1.901136e+03 1.897350e+03                     Cape Verde
36                   NA                  NA           NA           NA           NA                 Cayman Islands
37                   NA                  NA 1.984748e+03 2.165869e+03 2.138966e+03       Central African Republic
38                 1.70              1.9000 8.540675e+03 1.058139e+04 1.101802e+04                           Chad
39                   NA                  NA           NA           NA           NA                Channel Islands
44                   NA                  NA 1.310798e+04 1.565363e+04 1.786972e+04               Congo, Dem. Rep.
45                   NA                  NA 1.200788e+04 1.442561e+04 1.367793e+04                    Congo, Rep.
46                   NA                  NA 3.629827e+04 4.103225e+04 4.512729e+04                     Costa Rica
47                   NA                  NA 2.292078e+04 2.407381e+04 2.468037e+04                  Cote d Ivoire
48                60.32             70.7100 5.887384e+04 6.178918e+04 5.644161e+04                        Croatia
49                15.90             23.2300           NA           NA           NA                           Cuba
50                   NA                  NA           NA           NA           NA                        Curacao
51                52.99             57.6800 2.313245e+04 2.499208e+04 2.298096e+04                         Cyprus
52                   NA                  NA 1.980000e+05 2.160000e+05 1.960000e+05                 Czech Republic
54                 6.50              7.0000 1.128612e+03 1.239145e+03           NA                       Djibouti
55                47.45             51.3135 4.748867e+02 4.764757e+02 4.796388e+02                       Dominica
56                   NA                  NA 5.165390e+04 5.566855e+04 5.895124e+04             Dominican Republic
59                   NA                  NA 2.142790e+04 2.309510e+04 2.378680e+04                    El Salvador
60                   NA                  NA 1.226142e+04 1.680689e+04 1.769739e+04              Equatorial Guinea
64                   NA                  NA           NA           NA           NA                 Faeroe Islands
66                86.89             89.3700 2.350000e+05 2.630000e+05 2.500000e+05                        Finland
68                   NA                  NA           NA           NA           NA               French Polynesia
69                 7.23              8.0000 1.453934e+04 1.879135e+04 1.866110e+04                          Gabon
74                44.40             53.0000 2.920000e+05 2.900000e+05 2.490000e+05                         Greece
75                   NA                  NA           NA           NA           NA                      Greenland
76                33.46                  NA 7.697086e+02 7.803342e+02 7.895424e+02                        Grenada
77                   NA                  NA           NA           NA           NA                           Guam
80                   NA                  NA 8.353909e+02 9.677625e+02 8.974082e+02                  Guinea-Bissau
81                29.90             32.0000 2.259288e+03 2.576732e+03 2.850572e+03                         Guyana
82                 8.37                  NA 6.634579e+03 7.346157e+03 7.843484e+03                          Haiti
84                   NA                  NA 2.290000e+05 2.490000e+05 2.630000e+05           Hong Kong SAR, China
86                95.00             95.0200 1.256446e+04 1.407476e+04 1.365653e+04                        Iceland
89                16.00             21.0000 4.230000e+05 5.140000e+05           NA             Iran, Islamic Rep.
91                69.85             76.8200 2.060000e+05 2.210000e+05 2.100000e+05                        Ireland
92                   NA                  NA           NA           NA           NA                    Isle of Man
93                67.50             70.0000 2.170000e+05 2.430000e+05           NA                         Israel
94                53.68             56.8000 2.040000e+06 2.190000e+06 2.010000e+06                          Italy
101                  NA                  NA           NA           NA           NA               Korea, Dem. Rep.
102                  NA                  NA 1.010000e+06 1.110000e+06 1.130000e+06                    Korea, Rep.
103                  NA                  NA 5.593654e+03 6.452514e+03 6.237564e+03                         Kosovo
104               61.40             74.2000 1.240000e+05 1.770000e+05           NA                         Kuwait
105                  NA                  NA 4.794362e+03 6.197766e+03 6.473176e+03                Kyrgyz Republic
106                  NA                  NA 7.181441e+03 8.226922e+03 9.298927e+03                        Lao PDR
108               43.68             52.0000 3.712438e+04 4.009433e+04 4.294527e+04                        Lebanon
111               14.00             16.9981           NA           NA           NA                          Libya
112               80.00             85.0000           NA           NA           NA                  Liechtenstein
114               90.62             90.8900 5.250724e+04 5.920083e+04 5.711713e+04                     Luxembourg
115                  NA                  NA 2.835971e+04 3.679700e+04 4.358227e+04               Macao SAR, China
116               51.90             56.7000 9.338666e+03 1.043910e+04 9.663204e+03                 Macedonia, FYR
120               28.30             34.0000 2.134105e+03 2.153637e+03 2.222429e+03                       Maldives
122               63.00             69.2200 8.163841e+03 9.151793e+03 8.721923e+03                          Malta
123                  NA                  NA 1.629358e+02 1.737000e+02 1.869012e+02               Marshall Islands
127                  NA                  NA 2.941172e+02 3.102875e+02 3.272000e+02          Micronesia, Fed. Sts.
129               75.00                  NA 5.350993e+03 6.074507e+03           NA                         Monaco
131                  NA                  NA 4.114781e+03 4.501812e+03 4.231452e+03                     Montenegro
133                4.17              4.3000 9.274449e+03 1.256844e+04 1.458771e+04                     Mozambique
134                0.25              0.9800           NA           NA           NA                        Myanmar
138                  NA                  NA           NA           NA           NA                  New Caledonia
139                  NA                  NA 1.400000e+05           NA           NA                    New Zealand
143                  NA                  NA           NA           NA           NA       Northern Mariana Islands
145               62.00             68.0000 5.784916e+04 7.178154e+04           NA                           Oman
147                  NA                  NA 1.965433e+02 2.129033e+02 2.284157e+02                          Palau
149                  NA                  NA 9.480048e+03 1.239360e+04 1.565392e+04               Papua New Guinea
153               62.32             64.8800 4.700000e+05 5.160000e+05 4.900000e+05                         Poland
155                  NA                  NA 9.714730e+04 9.875700e+04 1.010000e+05                    Puerto Rico
156               81.60             86.2000 1.270000e+05 1.730000e+05           NA                          Qatar
158                  NA                  NA 1.520000e+06 1.900000e+06 2.010000e+06             Russian Federation
160                7.00                  NA 5.721604e+02 6.341560e+02 6.770414e+02                          Samoa
161                  NA                  NA           NA           NA           NA                     San Marino
162                  NA                  NA 2.010379e+02 2.482868e+02 2.637290e+02          Sao Tome and Principe
163                  NA                  NA 4.510000e+05 5.770000e+05           NA                   Saudi Arabia
165                  NA                  NA 3.699000e+04 4.329185e+04 3.748894e+04                         Serbia
166               41.00             43.1640 9.733375e+02 1.059605e+03 1.032178e+03                     Seychelles
167                  NA                  NA 2.575466e+03 2.938747e+03 3.796030e+03                   Sierra Leone
169                  NA                  NA           NA           NA           NA      Sint Maarten (Dutch part)
170                  NA                  NA 8.707744e+04 9.606380e+04 9.161923e+04                Slovak Republic
171               70.00             72.0000 4.690833e+04 5.027940e+04 4.546923e+04                       Slovenia
172                  NA                  NA 6.786255e+02 8.666724e+02 1.008424e+03                Solomon Islands
173                  NA              1.2500           NA           NA           NA                        Somalia
174                  NA                  NA 3.630000e+05 4.020000e+05 3.840000e+05                   South Africa
175                  NA                  NA 1.497158e+04 1.917262e+04 9.337313e+03                    South Sudan
177                  NA                  NA 4.956555e+04 5.918688e+04 5.942143e+04                      Sri Lanka
178                  NA                  NA 7.154707e+02 7.480753e+02 7.484926e+02            St. Kitts and Nevis
179                  NA                  NA 1.199537e+03 1.210998e+03 1.186225e+03                      St. Lucia
180                  NA                  NA           NA           NA           NA       St. Martin (French part)
181                  NA                  NA 6.809601e+02 6.911198e+02 7.125891e+02 St. Vincent and the Grenadines
183               31.59             32.0000 4.366915e+03 4.304468e+03 4.738182e+03                       Suriname
187                  NA                  NA 5.914703e+04           NA 7.367241e+04           Syrian Arab Republic
191                  NA                  NA 8.751000e+02 1.091000e+03 1.292700e+03                    Timor-Leste
194                  NA                  NA 2.068201e+04 2.349765e+04 2.398571e+04            Trinidad and Tobago
198                  NA                  NA           NA           NA           NA       Turks and Caicos Islands
199               25.00             30.0000 3.181652e+01 3.580437e+01 3.687458e+01                         Tuvalu
202                  NA                  NA 2.980000e+05 3.600000e+05           NA           United Arab Emirates
203                  NA                  NA 2.260000e+06 2.440000e+06 2.440000e+06                 United Kingdom
204                  NA                  NA 1.440000e+07 1.500000e+07 1.570000e+07                  United States
205               46.40             51.4000 3.884615e+04 4.643470e+04 4.905971e+04                        Uruguay
207                8.00                  NA 7.008040e+02 7.862947e+02 7.853567e+02                        Vanuatu
209                  NA                  NA 1.060000e+05 1.240000e+05 1.420000e+05                        Vietnam
210               12.35             14.9050           NA           NA           NA          Virgin Islands (U.S.)
211                  NA                  NA 3.188341e+04 3.172463e+04 3.564582e+04             West Bank and Gaza
    Country.Code      X2010      X2011      X2012 mobile_growth_2011
1            AFG  41.385796  54.262080  53.896963       31.112809111
2            ALB  84.024138  96.393394 108.447335       14.721075574
4            ASM         NA         NA         NA                 NA
5            AND  77.176423  75.487727  74.270436       -2.188098819
6            AGO  46.689242  48.377974  48.610002        3.616963290
7            ATG 189.347311 196.411195 198.617832        3.730648903
8            ARG 132.880086 134.921114 142.511758        1.535992684
10           ABW 122.618339         NA 124.324275                 NA
15           BHR 124.184224 127.964126 156.228498        3.043786468
17           BRB 128.072191 127.011773 126.397844       -0.827984274
20           BLZ  62.318413  69.955147  50.618270       12.254378805
22           BMU 135.815586         NA 139.553429                 NA
25           BIH  82.715685  84.517332  89.533136        2.178120342
28           BRN 109.070490 109.169627 113.768249        0.090892229
29           BGR 136.102083 140.678124 145.727454        3.362211645
30           BFA  34.658747  45.274459  57.065062       30.629241155
32           KHM  57.650424  96.167941 131.956712       66.812200409
35           CPV  74.974143  79.193144  84.163970        5.627274626
36           CYM 177.647163 167.674382 168.274994       -5.613814209
37           CAF  22.249958  22.119012  23.389791       -0.588523987
38           TCD  25.610143  31.804800  35.489760       24.188297897
39           CHI         NA         NA         NA                 NA
44           COD  17.918905  23.089487  28.008567       28.855459475
45           COG  91.982214  93.840422 101.182855        2.020182320
46           CRI  65.144465  92.204757 128.319647       41.538897402
47           CIV  79.031321  86.063282  96.271948        8.897689379
48           HRV 111.923294 116.370610 113.310348        3.973539131
49           CUB   8.909370  11.686335  14.948931       31.169040145
50           CUW         NA         NA         NA                 NA
51           CYP  93.695810  97.705461  98.385446        4.279433963
52           CZE 123.634151 126.112488 122.785116        2.004573236
54           DJI  18.635087  21.318096  22.650719       14.397618091
55           DMA 155.802353 160.951607 161.531072        3.304991431
56           DOM  89.578889  87.217802  88.753532       -2.635763534
59           SLV 124.339491 133.539334 138.071869        7.398970670
60           GNQ  57.008771  66.488664  67.670037       16.628832661
64           FRO 122.045660 122.792297 124.299542        0.611768498
66           FIN 156.397205 166.023804 172.508670        6.155224645
68           PYF  79.733643  81.389963  81.667757        2.077317336
69           GAB 106.943844 154.486457 187.355367       44.455679791
74           GRC 108.216758 106.478946 116.944125       -1.605862093
75           GRL 100.092502 102.523736 103.760908        2.428987436
76           GRD 116.709256 119.172466 121.553992        2.110553002
77           GUM         NA         NA         NA                 NA
80           GNB  47.187743  56.178586  69.446555       19.053345924
81           GUY  74.274645  69.937702  72.205701       -5.839063423
82           HTI  40.027030  41.486452  59.430173        3.646089657
84           HKG 195.567268 214.722304 227.932884        9.794602361
86           ISL 106.541282 106.079244 105.394621       -0.433671051
89           IRN  73.068963  74.925208  76.915958        2.540402307
91           IRL 105.180742 108.408455 107.128423        3.068729246
92           IMN         NA         NA         NA                 NA
93           ISR 122.816241 121.657815 119.888182       -0.943218497
94           ITA 154.689824 157.991550 159.480626        2.134417392
101          PRK   1.774069   4.089765   6.923608      130.530135714
102          KOR 105.362111 108.504517 110.364837        2.982482493
103          KSV         NA         NA         NA                 NA
104          KWT 145.397686 175.091784 191.108377       20.422675503
105          KGZ  98.898696 116.402687 124.775072       17.698909248
106          LAO  64.561578  87.163148 101.852325       35.007772602
108          LBN  67.745341  79.518149  93.202747       17.378033075
111          LBY 171.515467 155.696014 148.187718       -9.223338754
112          LIE  98.523535 101.834509 103.870544        3.360591936
114          LUX 143.265911 148.267535 145.466045        3.491146962
115          MAC 206.428514 243.498023 284.339165       17.957552982
116          MKD 104.506632 107.235356 108.161226        2.611052751
120          MDV 156.497143 165.723364 172.841360        5.895456447
122          MLT 109.378774 124.863410 128.682385       14.156892739
123          MHL         NA         NA         NA                 NA
127          FSM  24.776705  24.744043  24.621313       -0.131828343
129          MCO  66.128167  89.730996  93.654779       35.692550603
131          MNE 185.276093 181.570586 177.940442       -1.999992195
133          MOZ  30.884736  32.826748  33.129391        6.287935649
134          MMR   1.238454   2.572822  11.164840      107.744621463
138          NCL  88.018097  89.205544  89.280538        1.349094573
139          NZL 107.826313 109.185416 110.327650        1.260455320
143          MNP         NA         NA         NA                 NA
145          OMN 165.543238 168.974104 181.732912        2.072488999
147          PLW  70.887065  74.942986  82.623567        5.721665575
149          PNG  27.836161  34.218114  37.781837       22.926840901
153          POL 122.665120 130.970231 132.682310        6.770556199
155          PRI  78.260362  82.988931  81.747325        6.042100539
156          QAT 124.315198 123.110937 134.106751       -0.968715748
158          RUS 166.264883 179.308703 183.518214        7.845204455
160          WSM         NA         NA         NA                 NA
161          SMR  96.996892 111.753584 112.693692       15.213572125
162          STP  62.111163  68.261277  70.980579        9.901785877
163          SAU 187.861460 191.242694 184.678893        1.799855387
165          SRB 122.080354 125.392874  92.802700        2.713393601
166          SYC 135.910446 145.713003 158.625199        7.212511591
167          SLE  34.085858  35.631596  36.073093        4.534837032
169          SXM         NA         NA         NA                 NA
170          SVK 108.474605 109.349480 111.206146        0.806525639
171          SVN 104.546037 106.561927 110.078591        1.928231965
172          SLB  21.462497  49.771578  53.337535      131.900217207
173          SOM   6.946832   6.853706   6.716037       -1.340549927
174          ZAF 100.477099 126.833191 134.797698       26.230944306
175          SSD         NA         NA  18.823218                 NA
177          LKA  83.218382  87.047299  95.761878        4.601047194
178          KNA 152.665929 154.568246 156.433320        1.246065127
179          LCA 113.740410 122.997660 127.675850        8.138927859
180          MAF         NA         NA         NA                 NA
181          VCT 120.540916 120.522105 123.881061       -0.015605821
183          SUR 169.641428 178.875333 182.898863        5.443190163
187          SYR  57.809219  63.166857  61.218869        9.267791846
191          TLS  42.070343  53.226981  52.308216       26.519009435
194          TTO 141.206815 135.640807 139.428897       -3.941741979
198          TCA         NA         NA         NA                 NA
199          TUV  16.281673  21.630954  28.377420       32.854613096
202          ARE 145.453540 148.618856 169.941621        2.176170210
203          GBR 130.756423 130.751937 130.750773       -0.003430501
204          USA  91.859776  95.275289  98.166104        3.718180842
205          URY 131.713858 140.751886 147.296626        6.861865677
207          VUT  70.909364  55.759530  54.435500      -21.365068263
209          VNM 127.003046 143.389101 149.409997       12.902096222
210          VIR         NA         NA         NA                 NA
211          PSE  64.457991  69.477544  71.204608        7.787325299

> showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> showData(Countries_MobileMerge, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> showData(Countries, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> showData(Countries_MobileMerge, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> Countries_MobileMergeNA = na.omit(Countries_MobileMerge[fertility_rate])

> Countries_MobileMergeNA = na.omit(Countries_MobileMerge["fertility_rate"])

> showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> Countries_MobileMergeNA = Countries_MobileMerge[!is.na(Countries_MobileMerge$fertility_rate),]

> showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> names(Countries_MobileMergeNA)
 [1] "Country"             "infant.mortality"    "fertility_rate"      "contraception"       "region"             
 [6] "Country_Code"        "internet_users_2010" "internet_users_2011" "gdp2010"             "gdp2011"            
[11] "gdp2012"             "Country.Name"        "Country.Code"        "X2010"               "X2011"              
[16] "X2012"               "mobile_growth_2011" 

> mobileplot = hist(Countries_MobileMergeNA$Mobile_growth_2011, nclass = 7, plot = FALSE)

> plot(mobileplot, border ="dark blue", col="light blue", main = "Histogram of Mobile growth from 2010 - 2011", xlab = "Growth")

> mobileplot = hist(Countries_MobileMergeNA$mobile_growth_2011, nclass = 7, plot = FALSE)

> plot(mobileplot, border ="dark blue", col="light blue", main = "Histogram of Mobile growth from 2010 - 2011", xlab = "Growth")

> pdf("mobileHistograph.pdf")

> mobileplot = hist(Countries_MobileMergeNA$mobile_growth_2011, nclass = 7, plot = FALSE)

> plot(mobileplot, border ="dark blue", col="light blue", main = "Histogram of Mobile growth from 2010 - 2011", xlab = "Growth")

> jpg("mobileHistograph.jpg")

> mobileplot = hist(Countries_MobileMergeNA$mobile_growth_2011, nclass = 7, plot = FALSE)

> plot(mobileplot, border ="dark blue", col="light blue", main = "Histogram of Mobile growth from 2010 - 2011", xlab = "Growth")

> pdf("mobileHistograph.pdf")

> mobileplot = hist(Countries_MobileMergeNA$mobile_growth_2011, nclass = 7, plot = FALSE)

> plot(mobileplot, border ="dark blue", col="light blue", main = "Histogram of Mobile growth from 2010 - 2011", xlab = "Growth")

> dev.off()
pdf 
  2 

> pdf("logmobileHistograph.pdf")

> mobileplot = hist(log10(Countries_MobileMergeNA$mobile_growth_2011), nclass = 7, plot = FALSE)

> plot(mobileplot, border ="dark green", col="light green", main = "Histogram of Mobile growth (log10) from 2010 - 2011", xlab = "Growth")

> dev.off()
pdf 
  2 

> pdf("scatterplot.pdf")

> plot(Countries_MobileMergeNA$fertility_rate, Countries_MobileMergeNA$internet_users_2011,main = "Fertility_rate and Percent of internet users in 2011", xlab = "fertility", ylab="internet users 2011",pch=19)

> dev.off()
pdf 
  2 

> pdf("scatterplot2.pdf")

> plot(Countries_MobileMergeNA$fertility_rate, Countries_MobileMergeNA$internet_users_2011,main = "Fertility_rate and Percent of internet users in 2011", xlab = "fertility", ylab="internet users 2011",pch=19)

> abline(lm(Countries_MobileMergeNA$internet_users_2011~Countries_MobileMergeNA$fertility_rate), col="red")

> lines(lowess(Countries_MobileMergeNA$fertility_rate,Countries_MobileMergeNA$internet_users_2011), col = "blue")

> dev.off()
pdf 
  2 

> pdf("scatterplot3.pdf")

> plot(Countries_MobileMergeNA$fertility_rate, Countries_MobileMergeNA$internet_users_2011,main = "Fertility_rate and Percent of internet users in 2011", xlab = "fertility", ylab="internet users 2011",pch=19)

> abline(lm(Countries_MobileMergeNA$internet_users_2011~Countries_MobileMergeNA$fertility_rate), col="red")

> dev.off()
pdf 
  2 

> showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> Countries_MobileMergeNA$internet_growth2011 = ((Countries_MobileMergeNA$internet_users_2011 - Countries_MobileMergeNA$internet_users_2010)/Countries_MobileMergeNA$internet_users_2010)*100

> showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

> summary(Countries_MobileMergeNA$X2011)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  2.573  65.110  99.170  93.660 119.000 188.600       3 

