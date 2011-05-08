regions = Region.create([
{ :name => 'Andalucía', :population => 8105608},
{ :name => 'Aragón', :population => 1306631 },
{ :name => 'Asturias', :population => 1059089 },
{ :name => 'Balears', :population => 1058668 },
{ :name => 'Canarias', :population => 2061499 },
{ :name => 'Cantabria', :population => 573758 },
{ :name => 'Castilla y León', :population => 2506454 },
{ :name => 'Castilla-La Mancha', :population => 2001643 },
{ :name => 'Catalunya', :population => 7270468 },
{ :name => 'Comunitat Valenciana', :population => 4950566 },
{ :name => 'Extremadura', :population => 1079725 },
{ :name => 'Galicia', :population => 2738098 },
{ :name => 'Madrid', :population => 6245883 },
{ :name => 'Murcia', :population => 1430986 },
{ :name => 'Navarra', :population => 610384 },
{ :name => 'País Vasco', :population => 2138453 },
{ :name => 'Rioja', :population => 313772 },
{ :name => 'Ceuta y Melilla', :population => 141700 }
])

#Tasa de paro por Comunidades Autónomas 
Unemployment.create(:region_id => 1, :value => 29.7)
Unemployment.create(:region_id => 2, :value => 18)
Unemployment.create(:region_id => 3, :value => 18.2)
Unemployment.create(:region_id => 4, :value => 25.4)
Unemployment.create(:region_id => 5, :value => 28.5)
Unemployment.create(:region_id => 6, :value => 16.4)
Unemployment.create(:region_id => 7, :value => 21.8)
Unemployment.create(:region_id => 8, :value => 17.4)
Unemployment.create(:region_id => 9, :value => 19)
Unemployment.create(:region_id => 10, :value => 24.1)
Unemployment.create(:region_id => 11, :value => 25.1)
Unemployment.create(:region_id => 12, :value => 17.3)
Unemployment.create(:region_id => 13, :value => 15.4)
Unemployment.create(:region_id => 14, :value => 26.2)
Unemployment.create(:region_id => 15, :value => 13.4)
Unemployment.create(:region_id => 16, :value => 11.6)
Unemployment.create(:region_id => 17, :value => 14.4)
Unemployment.create(:region_id => 18, :value => 24.5)

#Recursos humanos professionales colegiados por 100.000 habitantes 2009
Health.create(:region_id => 1, :value => 400.36)
Health.create(:region_id => 2, :value => 587.64)
Health.create(:region_id => 3, :value => 539.23)
Health.create(:region_id => 4, :value => 436.89)
Health.create(:region_id => 5, :value => 403.26)
Health.create(:region_id => 6, :value => 536.59)
Health.create(:region_id => 7, :value => 516.26)
Health.create(:region_id => 8, :value => 371.44)
Health.create(:region_id => 9, :value => 489.20)
Health.create(:region_id => 10, :value => 418.75)
Health.create(:region_id => 11, :value => 437.14)
Health.create(:region_id => 12, :value => 440.06)
Health.create(:region_id => 13, :value => 568.20)
Health.create(:region_id => 14, :value => 386.80)
Health.create(:region_id => 15, :value => 566.29)
Health.create(:region_id => 16, :value => 524.19)
Health.create(:region_id => 17, :value => 444.70)
Health.create(:region_id => 18, :value => 368.07)

#CANTIDADES DE RESIDUOS PELIGROSOS GENERADOS POR COMUNIDADES AUTÓNOMAS AÑO 2005
DangerousWaste.create(:region_id => 1, :value => 298)
DangerousWaste.create(:region_id => 2, :value => 71)
DangerousWaste.create(:region_id => 3, :value => 150)
DangerousWaste.create(:region_id => 4, :value => 64)
DangerousWaste.create(:region_id => 5, :value => 31)
DangerousWaste.create(:region_id => 6, :value => 44)
DangerousWaste.create(:region_id => 7, :value => 131)
DangerousWaste.create(:region_id => 8, :value => 104)
DangerousWaste.create(:region_id => 9, :value => 792)
DangerousWaste.create(:region_id => 10, :value => 324)
DangerousWaste.create(:region_id => 11, :value => 33)
DangerousWaste.create(:region_id => 12, :value => 137)
DangerousWaste.create(:region_id => 13, :value => 266)
DangerousWaste.create(:region_id => 14, :value => 122)
DangerousWaste.create(:region_id => 15, :value => 94)
DangerousWaste.create(:region_id => 16, :value => 324)
DangerousWaste.create(:region_id => 17, :value => 19)
DangerousWaste.create(:region_id => 18, :value => 3)   

#numero de bibliotecas, museos y cinemas
Culture.create( :region_id => 1, :value => 1497)
Culture.create( :region_id => 2, :value => 389)
Culture.create( :region_id => 3, :value => 242)
Culture.create( :region_id => 4, :value => 277)
Culture.create( :region_id => 5, :value => 362)
Culture.create( :region_id => 6, :value => 107)
Culture.create( :region_id => 7, :value => 687)
Culture.create( :region_id => 8, :value => 795)
Culture.create( :region_id => 9, :value => 1280)
Culture.create( :region_id => 10, :value => 1100)
Culture.create( :region_id => 11, :value => 555)
Culture.create( :region_id => 12, :value => 563)
Culture.create( :region_id => 13, :value => 806)
Culture.create( :region_id => 14, :value => 270)
Culture.create( :region_id => 15, :value => 191)
Culture.create( :region_id => 16, :value => 499)
Culture.create( :region_id => 17, :value => 78)
Culture.create( :region_id => 18, :value => 22)

#PIB
Economy.create(:region_id => 1, :value => 144774.8)
Economy.create(:region_id => 2, :value => 32831.1)
Economy.create(:region_id => 3, :value => 22905.7)
Economy.create(:region_id => 4, :value => 26130.3)
Economy.create(:region_id => 5, :value => 41805.6)
Economy.create(:region_id => 6, :value => 13336.9)
Economy.create(:region_id => 7, :value => 56392.7)
Economy.create(:region_id => 8, :value => 35490.4)
Economy.create(:region_id => 9, :value => 197118.8)
Economy.create(:region_id => 10, :value => 102573.2)
Economy.create(:region_id => 11, :value => 17391.7)
Economy.create(:region_id => 12, :value => 54072.8)
Economy.create(:region_id => 13, :value => 186671.4)
Economy.create(:region_id => 14, :value => 26995.5)
Economy.create(:region_id => 15, :value => 17722.3)
Economy.create(:region_id => 16, :value => 65062.3)
Economy.create(:region_id => 17, :value => 17391.7)
Economy.create(:region_id => 18, :value => 54072.8)

# Cobertura del sistema de protección social. Beneficiarios de prestaciones económicas por desempleo
SocialProtection.create(:region_id => 1, :value => 511545)
SocialProtection.create(:region_id => 2, :value => 34125)
SocialProtection.create(:region_id => 3, :value => 34793)
SocialProtection.create(:region_id => 4, :value => 44963)
SocialProtection.create(:region_id => 5, :value => 110310)
SocialProtection.create(:region_id => 6, :value => 16162)
SocialProtection.create(:region_id => 7, :value => 68459)
SocialProtection.create(:region_id => 8, :value => 66029)
SocialProtection.create(:region_id => 9, :value => 267611)
SocialProtection.create(:region_id => 10, :value => 177843)
SocialProtection.create(:region_id => 11, :value => 71528)
SocialProtection.create(:region_id => 12, :value => 94279)
SocialProtection.create(:region_id => 13, :value => 189831)
SocialProtection.create(:region_id => 14, :value => 43860)
SocialProtection.create(:region_id => 15, :value => 17486)
SocialProtection.create(:region_id => 16, :value => 51869)
SocialProtection.create(:region_id => 17, :value => 8335)
SocialProtection.create(:region_id => 18, :value => 5605)

# % analfavetos 
Education.create(:region_id => 1, :value => 16.31)
Education.create(:region_id => 2, :value => 8.30)
Education.create(:region_id => 3, :value => 7.82)
Education.create(:region_id => 4, :value => 9.63)
Education.create(:region_id => 5, :value => 13.2)
Education.create(:region_id => 6, :value => 3.33)
Education.create(:region_id => 7, :value => 8.29)
Education.create(:region_id => 8, :value => 19.72)
Education.create(:region_id => 9, :value => 10)
Education.create(:region_id => 10, :value => 11.48)
Education.create(:region_id => 11, :value => 19.04)
Education.create(:region_id => 12, :value => 10.33)
Education.create(:region_id => 13, :value => 7.56)
Education.create(:region_id => 14, :value => 16.96)
Education.create(:region_id => 15, :value => 4.51)
Education.create(:region_id => 16, :value => 3.83)
Education.create(:region_id => 17, :value => 6.74)
Education.create(:region_id => 18, :value => 21.91)

#milers de euros gastados por las empresas en protección del medio ambiente
Environment.create(:region_id => 1, :value => 313010.5)
Environment.create(:region_id => 2, :value => 143620.4)
Environment.create(:region_id => 3, :value => 215247.2)
Environment.create(:region_id => 4, :value => 34066.0)
Environment.create(:region_id => 5, :value => 35108.4)
Environment.create(:region_id => 6, :value => 64195.6)
Environment.create(:region_id => 7, :value => 264475.1)
Environment.create(:region_id => 8, :value => 113100.2)
Environment.create(:region_id => 9, :value => 659082.5)
Environment.create(:region_id => 10, :value => 263224.5)
Environment.create(:region_id => 11, :value => 20852.4)
Environment.create(:region_id => 12, :value => 310964.2)
Environment.create(:region_id => 13, :value => 170127.1)
Environment.create(:region_id => 14, :value => 72009.6)
Environment.create(:region_id => 15, :value => 70688.3)
Environment.create(:region_id => 16, :value => 230180.4)
Environment.create(:region_id => 17, :value => 32032.4)
Environment.create(:region_id => 18, :value => 0)

#Hogares con inmigrantes por comunidad autónoma, según personas con nacionalidad extranjera 2007
Immigration.create(:region_id => 1, :value => 294788)
Immigration.create(:region_id => 2, :value => 46677)
Immigration.create(:region_id => 3, :value => 30393)
Immigration.create(:region_id => 4, :value => 94290)
Immigration.create(:region_id => 5, :value => 164762)
Immigration.create(:region_id => 6, :value => 16662)
Immigration.create(:region_id => 7, :value => 65417)
Immigration.create(:region_id => 8, :value => 57646)
Immigration.create(:region_id => 9, :value => 404474)
Immigration.create(:region_id => 10, :value => 336951)
Immigration.create(:region_id => 11, :value => 17364)
Immigration.create(:region_id => 12, :value => 104308)
Immigration.create(:region_id => 13, :value => 348782)
Immigration.create(:region_id => 14, :value => 73097)
Immigration.create(:region_id => 15, :value => 22727)
Immigration.create(:region_id => 16, :value => 55581)
Immigration.create(:region_id => 17, :value => 13223)
Immigration.create(:region_id => 18, :value => 11552)
 
Unemployment.ponderation
Health.ponderation
DangerousWaste.ponderation
Culture.ponderation
Economy.ponderation 
SocialProtection.ponderation
Education.ponderation
Environment.ponderation
Immigration.ponderation