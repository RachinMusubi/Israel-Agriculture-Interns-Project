
*Generates sum variables that tells how many selections a student made out of list
gen Mrg_Sum= Mrg_FamFarm+Mrg_OwnFarm+Mrg_Business+Mrg_FindJob+Mrg_FindFarmJob+Mrg_WorkGov+Mrg_Study+Mrg_Migrate+Mrg_AgExt+Mrg_Uncertain

gen Family_Grows_Sum=Family_Grows_Nothing+Family_Grows_Cereals+Family_Grows_Legumes+Family_Grows_Oilseeds+Family_Grows_Fruits+Family_Grows_Vegetables+Family_Grows_Spices+Family_Grows_Fish+Family_Grows_Cows+Family_Grows_Sheep+Family_Grows_Pigs+Family_Grows_Bees+Family_Grows_Chicken+Family_Grows_Flowers+Family_Grows_Niche

gen Demo_Wrk_Sum= Demo_Wrk_Vegetables+Demo_Wrk_Cereals+Demo_Wrk_Legumes+Demo_Wrk_Oilseeds+Demo_Wrk_Spices+Demo_Wrk_Fruits+Demo_Wrk_Flowers+Demo_Wrk_PackingStorage+Demo_Wrk_ProtectedCult+Demo_Wrk_Irrigation+Demo_Wrk_GoatsSheep+Demo_Wrk_Cows+Demo_Wrk_Chickens+Demo_Wrk_Fish+Demo_Wrk_Bees+Demo_Wrk_Niche

gen Int_Lvl2_Sum=Int_Grains+Int_Vegetables+Int_Fruits+Int_CashCrops+Int_Livestock+Int_Specialty+Int_Capital+Int_Nothing

*Collapsing the Lvl1 selections in family and work into lvl2

gen Fam_Lvl2_Grains=0
gen Fam_Lvl2_Vegetables=0
gen Fam_Lvl2_Fruits=0
gen Fam_Lvl2_CashCrops=0
gen Fam_Lvl2_Livestock=0
gen Fam_Lvl2_Specialty=0
gen Fam_Lvl2_Nothing=0

gen Wrk_Lvl2_Grains=0
gen Wrk_Lvl2_Vegetables=0
gen Wrk_Lvl2_Fruits=0
gen Wrk_Lvl2_CashCrops=0
gen Wrk_Lvl2_Livestock=0
gen Wrk_Lvl2_Specialty=0
gen Wrk_Lvl2_Capital=0

replace Fam_Lvl2_Grains=1 if Family_Grows_Legumes==1 | Family_Grows_Cereals==1
replace Fam_Lvl2_Vegetables=1 if Family_Grows_Vegetables==1
replace Fam_Lvl2_Fruits=1 if Family_Grows_Fruits==1
replace Fam_Lvl2_CashCrops=1 if Family_Grows_Flowers==1 | Family_Grows_Spices==1 | Family_Grows_Oilseeds==1
replace Fam_Lvl2_Livestock=1 if Family_Grows_Sheep==1 | Family_Grows_Pigs==1 | Family_Grows_Cows==1 | Family_Grows_Chicken==1
replace Fam_Lvl2_Specialty=1 if Family_Grows_Niche==1 | Family_Grows_Bees==1 | Family_Grows_Fish==1
replace Fam_Lvl2_Nothing=1 if Family_Grows_Nothing==1

replace Wrk_Lvl2_Grains=1 if Demo_Wrk_Cereals==1 | Demo_Wrk_Legumes==1
replace Wrk_Lvl2_Vegetables=1 if Demo_Wrk_Vegetables==1
replace Wrk_Lvl2_Fruits=1 if Demo_Wrk_Fruits==1
replace Wrk_Lvl2_CashCrops=1 if Demo_Wrk_Flowers==1 | Demo_Wrk_Spices==1 | Demo_Wrk_Oilseeds==1
replace Wrk_Lvl2_Livestock=1 if Demo_Wrk_GoatsSheep==1 | Demo_Wrk_Cows==1 | Demo_Wrk_Chickens==1
replace Wrk_Lvl2_Specialty=1 if Demo_Wrk_Bees==1 | Demo_Wrk_Fish==1 | Demo_Wrk_Niche==1
replace Wrk_Lvl2_Capital=1 if Demo_Wrk_Irrigation==1 | Demo_Wrk_PackingStorage==1 | Demo_Wrk_ProtectedCult==1

*Collapsing the Lvl2 into Lvl3s

gen Fam_Lvl3_Animals=0
gen Fam_Lvl3_Horticulture=0
gen Fam_Lvl3_Nothing=0

gen Wrk_Lvl3_Animals=0
gen Wrk_Lvl3_Horticulture=0

replace Fam_Lvl3_Animals=1 if Fam_Lvl2_Livestock==1
replace Fam_Lvl3_Horticulture=1 if Fam_Lvl2_Grains==1 | Fam_Lvl2_Vegetables==1 | Fam_Lvl2_Fruits==1 | Fam_Lvl2_CashCrops==1 | Fam_Lvl2_Specialty==1
replace Fam_Lvl3_Nothing=1 if Fam_Lvl2_Nothing==1

replace Wrk_Lvl3_Animals=1 if Wrk_Lvl2_Livestock==1
replace Wrk_Lvl3_Horticulture=1 if Wrk_Lvl2_Grains==1 | Wrk_Lvl2_Vegetables==1 | Wrk_Lvl2_Fruits==1 | Wrk_Lvl2_CashCrops==1 | Wrk_Lvl2_Specialty==1 | Wrk_Lvl2_Capital==1


*How many lvl2 and lvl3 selections were made
gen Wrk_Lvl3_Sum=Wrk_Lvl3_Animals+Wrk_Lvl3_Horticulture
gen Wrk_Lvl2_Sum=Wrk_Lvl2_Grains+Wrk_Lvl2_Vegetables+Wrk_Lvl2_Fruits+Wrk_Lvl2_CashCrops+Wrk_Lvl2_Livestock+Wrk_Lvl2_Specialty+Wrk_Lvl2_Capital

gen Fam_Lvl2_Sum=Fam_Lvl2_Grains+Fam_Lvl2_Vegetables+Fam_Lvl2_Fruits+Fam_Lvl2_CashCrops+Fam_Lvl2_Livestock+Fam_Lvl2_Specialty+Fam_Lvl2_Nothing

gen Fam_Lvl3_Sum=Fam_Lvl3_Animals+Fam_Lvl3_Horticulture+Fam_Lvl3_Nothing

*Generate dummy variables that further characterize students.

gen Profile_GreatLakes=1 if DNationality==15 | DNationality==20 | DNationality==22 | DNationality==25
replace Profile_GreatLakes=0 if missing(Profile_GreatLakes)

gen Profile_SEA=1 if DNationality==1 | DNationality==3 | DNationality==19
replace Profile_SEA=0 if missing(Profile_SEA)

gen Profile_WestAfrica=1 if DNationality==8 | DNationality==10 | DNationality==24 | DNationality==29
replace Profile_WestAfrica=0 if missing(Profile_WestAfrica)

gen ProWrk_Lvl3_Ani=1 if Wrk_Lvl3_Animals==1 & Wrk_Lvl3_Horticulture==0
gen ProWrk_Lvl3_Horti=1 if Wrk_Lvl3_Animals==0 & Wrk_Lvl3_Horticulture==1
gen ProWrk_Lvl3_Both=1 if Wrk_Lvl3_Animals==1 & Wrk_Lvl3_Horticulture==1
gen ProFam_Lvl3_Ani=1 if Fam_Lvl3_Animals==1 & Fam_Lvl3_Horticulture==0
gen ProFam_Lvl3_Horti=1 if Fam_Lvl3_Animals==0 & Fam_Lvl3_Horticulture==1
gen ProFam_Lvl3_Both=1 if Fam_Lvl3_Animals==1 & Fam_Lvl3_Horticulture==1
gen ProFam_Lvl3_Noth=1 if Fam_Lvl3_Animals==0 & Fam_Lvl3_Horticulture==0

gen z1x1=1 if ProWrk_Lvl3_Ani==1 & ProFam_Lvl3_Ani==1
gen z1x2t=1 if ProWrk_Lvl3_Horti==1 & ProFam_Lvl3_Ani==1
gen z1x3=1 if ProWrk_Lvl3_Both==1 & ProFam_Lvl3_Ani==1
gen z2x1t=1 if ProWrk_Lvl3_Ani==1 & ProFam_Lvl3_Horti==1
gen z2x2=1 if ProWrk_Lvl3_Horti==1 & ProFam_Lvl3_Horti==1
gen z2x3=1 if ProWrk_Lvl3_Both==1 & ProFam_Lvl3_Horti==1
gen z3x1=1 if ProWrk_Lvl3_Ani==1 & ProFam_Lvl3_Both==1
gen z3x2=1 if ProWrk_Lvl3_Horti==1 & ProFam_Lvl3_Both==1
gen z3x3=1 if ProWrk_Lvl3_Both==1 & ProFam_Lvl3_Both==1
gen z4x1w=1 if ProWrk_Lvl3_Ani==1 & ProFam_Lvl3_Noth==1
gen z4x2w=1 if ProWrk_Lvl3_Horti==1 & ProFam_Lvl3_Noth==1
gen z4x3w=1 if ProWrk_Lvl3_Both==1 & ProFam_Lvl3_Noth==1

*Family Farming and Wrk Assignment Interaction groupings.

gen Sorted_Lvl3_NoTrad=1 if z4x1w==1 | z4x2w==1 | z4x3w==1
replace Sorted_Lvl3_NoTrad=0 if missing(Sorted_Lvl3_NoTrad)

gen Sorted_Lvl3_NoPair=1 if z1x2t==1 | z2x1t==1
replace Sorted_Lvl3_NoPair=0 if missing(Sorted_Lvl3_NoPair)

gen Sorted_Lvl3_Pair=1 if z1x1==1 | z1x3==1 | z2x2==1 | z2x3==1 | z3x1==1 | z3x2==1 | z3x3==1
replace Sorted_Lvl3_Pair=0 if missing(Sorted_Lvl3_Pair)

*Generate Age Variable

decode Demo_Birth, generate(StringYear)

destring StringYear, generate(BirthYear)

gen Age=2023-BirthYear

drop StringYear
drop Demo_Birth
drop BirthYear

*Generate Inventory Scores

gen IEO_Score=IEOa_1+IEOa_2+IEOa_3+IEOa_4+IEOb_1+IEOb_2+IEOb_3+IEOb_4+IEOc_1+IEOc_2+IEOc_3+IEOc_4

gen Pathway_Score=Hopea_1+Hopea_4+Hopea_6+Hopeb_2

gen Agency_Score=Hopea_2+Hopeb_6+Hopeb_4+Hopeb_3

gen RealHope=Pathway_Score+Agency_Score

*Create Family Farming and Work Assignment Matrices at Lvl1 and Lvl2 the traditional way.

gen m1x1t=1 if Fam_Lvl2_Grains==1 & Wrk_Lvl2_Grains==1
gen m1x2=1 if Fam_Lvl2_Grains==1 & Wrk_Lvl2_Vegetables==1
gen m1x3=1 if Fam_Lvl2_Grains==1 & Wrk_Lvl2_Fruits==1
gen m1x4=1 if Fam_Lvl2_Grains==1 & Wrk_Lvl2_CashCrops==1
gen m1x5=1 if Fam_Lvl2_Grains==1 & Wrk_Lvl2_Livestock==1
gen m1x6=1 if Fam_Lvl2_Grains==1 & Wrk_Lvl2_Specialty==1
gen m1x7=1 if Fam_Lvl2_Grains==1 & Wrk_Lvl2_Capital==1

gen m2x1=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_Grains==1
gen m2x2t=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_Vegetables==1
gen m2x3=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_Fruits==1
gen m2x4=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_CashCrops==1
gen m2x5=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_Livestock==1
gen m2x6=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_Specialty==1
gen m2x7=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_Capital==1

gen m3x1=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_Grains==1
gen m3x2=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_Vegetables==1
gen m3x3t=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_Fruits==1
gen m3x4=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_CashCrops==1
gen m3x5=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_Livestock==1
gen m3x6=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_Specialty==1
gen m3x7=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_Capital==1

gen m4x1=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_Grains==1
gen m4x2=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_Vegetables==1
gen m4x3=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_Fruits==1
gen m4x4t=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_CashCrops==1
gen m4x5=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_Livestock==1
gen m4x6=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_Specialty==1
gen m4x7=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_Capital==1

gen m5x1=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_Grains==1
gen m5x2=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_Vegetables==1
gen m5x3=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_Fruits==1
gen m5x4=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_CashCrops==1
gen m5x5t=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_Livestock==1
gen m5x6=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_Specialty==1
gen m5x7=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_Capital==1

gen m6x1=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_Grains==1
gen m6x2=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_Vegetables==1
gen m6x3=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_Fruits==1
gen m6x4=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_CashCrops==1
gen m6x5=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_Livestock==1
gen m6x6t=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_Specialty==1
gen m6x7=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_Capital==1

gen m7x1=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_Grains==1
gen m7x2=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_Vegetables==1
gen m7x3=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_Fruits==1
gen m7x4=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_CashCrops==1
gen m7x5=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_Livestock==1
gen m7x6=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_Specialty==1
gen m7x7=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_Capital==1

gen Sorted_lvl2_Pair=1 if m1x1t==1 | m2x2t==1 | m3x3t==1 | m4x4t==1 | m5x5t==1 | m6x6t==1
replace Sorted_lvl2_Pair=0 if missing(Sorted_lvl2_Pair)

gen Sorted_Lvl2_NoTrad=1 if m7x1==1 | m7x2==1 | m7x3==1 | m7x4==1 | m7x5==1 | m7x6==1 | m7x7==1
replace Sorted_Lvl2_NoTrad=0 if missing(Sorted_Lvl2_NoTrad)

gen Sorted_Lvl2_NoPair=1 if Sorted_lvl2_Pair==0 & Sorted_Lvl2_NoTrad==0
replace Sorted_Lvl2_NoPair=0 if missing(Sorted_Lvl2_NoPair)

gen n1x1t=1 if Family_Grows_Cereals==1 & Demo_Wrk_Cereals==1
gen n1x2=1 if Family_Grows_Cereals==1 & Demo_Wrk_Legumes==1
gen n1x3=1 if Family_Grows_Cereals==1 & Demo_Wrk_Vegetables==1
gen n1x4=1 if Family_Grows_Cereals==1 & Demo_Wrk_Fruits==1
gen n1x5=1 if Family_Grows_Cereals==1 & Demo_Wrk_Flowers==1
gen n1x6=1 if Family_Grows_Cereals==1 & Demo_Wrk_Oilseeds==1
gen n1x7=1 if Family_Grows_Cereals==1 & Demo_Wrk_Spices==1
gen n1x8=1 if Family_Grows_Cereals==1 & Demo_Wrk_Chickens==1
gen n1x9=1 if Family_Grows_Cereals==1 & Demo_Wrk_GoatsSheep==1
gen n1x10=1 if Family_Grows_Cereals==1 & Demo_Wrk_Cows==1
gen n1x11=1 if Family_Grows_Cereals==1 & Demo_Wrk_Fish==1
gen n1x12=1 if Family_Grows_Cereals==1 & Demo_Wrk_Bees==1
gen n1x13=1 if Family_Grows_Cereals==1 & Demo_Wrk_Niche==1
gen n1x14=1 if Family_Grows_Cereals==1 & Demo_Wrk_PackingStorage==1
gen n1x15=1 if Family_Grows_Cereals==1 & Demo_Wrk_Irrigation==1
gen n1x16=1 if Family_Grows_Cereals==1 & Demo_Wrk_ProtectedCult==1

gen n2x1=1 if Family_Grows_Legumes==1 & Demo_Wrk_Cereals==1
gen n2x2t=1 if Family_Grows_Legumes==1 & Demo_Wrk_Legumes==1
gen n2x3=1 if Family_Grows_Legumes==1 & Demo_Wrk_Vegetables==1
gen n2x4=1 if Family_Grows_Legumes==1 & Demo_Wrk_Fruits==1
gen n2x5=1 if Family_Grows_Legumes==1 & Demo_Wrk_Flowers==1
gen n2x6=1 if Family_Grows_Legumes==1 & Demo_Wrk_Oilseeds==1
gen n2x7=1 if Family_Grows_Legumes==1 & Demo_Wrk_Spices==1
gen n2x8=1 if Family_Grows_Legumes==1 & Demo_Wrk_Chickens==1
gen n2x9=1 if Family_Grows_Legumes==1 & Demo_Wrk_GoatsSheep==1
gen n2x10=1 if Family_Grows_Legumes==1 & Demo_Wrk_Cows==1
gen n2x11=1 if Family_Grows_Legumes==1 & Demo_Wrk_Fish==1
gen n2x12=1 if Family_Grows_Legumes==1 & Demo_Wrk_Bees==1
gen n2x13=1 if Family_Grows_Legumes==1 & Demo_Wrk_Niche==1
gen n2x14=1 if Family_Grows_Legumes==1 & Demo_Wrk_PackingStorage==1
gen n2x15=1 if Family_Grows_Legumes==1 & Demo_Wrk_Irrigation==1
gen n2x16=1 if Family_Grows_Legumes==1 & Demo_Wrk_ProtectedCult==1

gen n3x1=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Cereals==1
gen n3x2=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Legumes==1
gen n3x3t=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Vegetables==1
gen n3x4=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Fruits==1
gen n3x5=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Flowers==1
gen n3x6=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Oilseeds==1
gen n3x7=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Spices==1
gen n3x8=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Chickens==1
gen n3x9=1 if Family_Grows_Vegetables==1 & Demo_Wrk_GoatsSheep==1
gen n3x10=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Cows==1
gen n3x11=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Fish==1
gen n3x12=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Bees==1
gen n3x13=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Niche==1
gen n3x14=1 if Family_Grows_Vegetables==1 & Demo_Wrk_PackingStorage==1
gen n3x15=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Irrigation==1
gen n3x16=1 if Family_Grows_Vegetables==1 & Demo_Wrk_ProtectedCult==1

gen n4x1=1 if Family_Grows_Fruits==1 & Demo_Wrk_Cereals==1
gen n4x2=1 if Family_Grows_Fruits==1 & Demo_Wrk_Legumes==1
gen n4x3=1 if Family_Grows_Fruits==1 & Demo_Wrk_Vegetables==1
gen n4x4t=1 if Family_Grows_Fruits==1 & Demo_Wrk_Fruits==1
gen n4x5=1 if Family_Grows_Fruits==1 & Demo_Wrk_Flowers==1
gen n4x6=1 if Family_Grows_Fruits==1 & Demo_Wrk_Oilseeds==1
gen n4x7=1 if Family_Grows_Fruits==1 & Demo_Wrk_Spices==1
gen n4x8=1 if Family_Grows_Fruits==1 & Demo_Wrk_Chickens==1
gen n4x9=1 if Family_Grows_Fruits==1 & Demo_Wrk_GoatsSheep==1
gen n4x10=1 if Family_Grows_Fruits==1 & Demo_Wrk_Cows==1
gen n4x11=1 if Family_Grows_Fruits==1 & Demo_Wrk_Fish==1
gen n4x12=1 if Family_Grows_Fruits==1 & Demo_Wrk_Bees==1
gen n4x13=1 if Family_Grows_Fruits==1 & Demo_Wrk_Niche==1
gen n4x14=1 if Family_Grows_Fruits==1 & Demo_Wrk_PackingStorage==1
gen n4x15=1 if Family_Grows_Fruits==1 & Demo_Wrk_Irrigation==1
gen n4x16=1 if Family_Grows_Fruits==1 & Demo_Wrk_ProtectedCult==1

gen n5x1=1 if Family_Grows_Flowers==1 & Demo_Wrk_Cereals==1
gen n5x2=1 if Family_Grows_Flowers==1 & Demo_Wrk_Legumes==1
gen n5x3=1 if Family_Grows_Flowers==1 & Demo_Wrk_Vegetables==1
gen n5x4=1 if Family_Grows_Flowers==1 & Demo_Wrk_Fruits==1
gen n5x5t=1 if Family_Grows_Flowers==1 & Demo_Wrk_Flowers==1
gen n5x6=1 if Family_Grows_Flowers==1 & Demo_Wrk_Oilseeds==1
gen n5x7=1 if Family_Grows_Flowers==1 & Demo_Wrk_Spices==1
gen n5x8=1 if Family_Grows_Flowers==1 & Demo_Wrk_Chickens==1
gen n5x9=1 if Family_Grows_Flowers==1 & Demo_Wrk_GoatsSheep==1
gen n5x10=1 if Family_Grows_Flowers==1 & Demo_Wrk_Cows==1
gen n5x11=1 if Family_Grows_Flowers==1 & Demo_Wrk_Fish==1
gen n5x12=1 if Family_Grows_Flowers==1 & Demo_Wrk_Bees==1
gen n5x13=1 if Family_Grows_Flowers==1 & Demo_Wrk_Niche==1
gen n5x14=1 if Family_Grows_Flowers==1 & Demo_Wrk_PackingStorage==1
gen n5x15=1 if Family_Grows_Flowers==1 & Demo_Wrk_Irrigation==1
gen n5x16=1 if Family_Grows_Flowers==1 & Demo_Wrk_ProtectedCult==1

gen n6x1=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Cereals==1
gen n6x2=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Legumes==1
gen n6x3=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Vegetables==1
gen n6x4=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Fruits==1
gen n6x5=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Flowers==1
gen n6x6t=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Oilseeds==1
gen n6x7=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Spices==1
gen n6x8=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Chickens==1
gen n6x9=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_GoatsSheep==1
gen n6x10=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Cows==1
gen n6x11=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Fish==1
gen n6x12=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Bees==1
gen n6x13=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Niche==1
gen n6x14=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_PackingStorage==1
gen n6x15=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Irrigation==1
gen n6x16=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_ProtectedCult==1

gen n7x1=1 if Family_Grows_Spices==1 & Demo_Wrk_Cereals==1
gen n7x2=1 if Family_Grows_Spices==1 & Demo_Wrk_Legumes==1
gen n7x3=1 if Family_Grows_Spices==1 & Demo_Wrk_Vegetables==1
gen n7x4=1 if Family_Grows_Spices==1 & Demo_Wrk_Fruits==1
gen n7x5=1 if Family_Grows_Spices==1 & Demo_Wrk_Flowers==1
gen n7x6=1 if Family_Grows_Spices==1 & Demo_Wrk_Oilseeds==1
gen n7x7t=1 if Family_Grows_Spices==1 & Demo_Wrk_Spices==1
gen n7x8=1 if Family_Grows_Spices==1 & Demo_Wrk_Chickens==1
gen n7x9=1 if Family_Grows_Spices==1 & Demo_Wrk_GoatsSheep==1
gen n7x10=1 if Family_Grows_Spices==1 & Demo_Wrk_Cows==1
gen n7x11=1 if Family_Grows_Spices==1 & Demo_Wrk_Fish==1
gen n7x12=1 if Family_Grows_Spices==1 & Demo_Wrk_Bees==1
gen n7x13=1 if Family_Grows_Spices==1 & Demo_Wrk_Niche==1
gen n7x14=1 if Family_Grows_Spices==1 & Demo_Wrk_PackingStorage==1
gen n7x15=1 if Family_Grows_Spices==1 & Demo_Wrk_Irrigation==1
gen n7x16=1 if Family_Grows_Spices==1 & Demo_Wrk_ProtectedCult==1

gen n8x1=1 if Family_Grows_Chicken==1 & Demo_Wrk_Cereals==1
gen n8x2=1 if Family_Grows_Chicken==1 & Demo_Wrk_Legumes==1
gen n8x3=1 if Family_Grows_Chicken==1 & Demo_Wrk_Vegetables==1
gen n8x4=1 if Family_Grows_Chicken==1 & Demo_Wrk_Fruits==1
gen n8x5=1 if Family_Grows_Chicken==1 & Demo_Wrk_Flowers==1
gen n8x6=1 if Family_Grows_Chicken==1 & Demo_Wrk_Oilseeds==1
gen n8x7=1 if Family_Grows_Chicken==1 & Demo_Wrk_Spices==1
gen n8x8t=1 if Family_Grows_Chicken==1 & Demo_Wrk_Chickens==1
gen n8x9=1 if Family_Grows_Chicken==1 & Demo_Wrk_GoatsSheep==1
gen n8x10=1 if Family_Grows_Chicken==1 & Demo_Wrk_Cows==1
gen n8x11=1 if Family_Grows_Chicken==1 & Demo_Wrk_Fish==1
gen n8x12=1 if Family_Grows_Chicken==1 & Demo_Wrk_Bees==1
gen n8x13=1 if Family_Grows_Chicken==1 & Demo_Wrk_Niche==1
gen n8x14=1 if Family_Grows_Chicken==1 & Demo_Wrk_PackingStorage==1
gen n8x15=1 if Family_Grows_Chicken==1 & Demo_Wrk_Irrigation==1
gen n8x16=1 if Family_Grows_Chicken==1 & Demo_Wrk_ProtectedCult==1

gen n9x1=1 if Family_Grows_Pigs==1 & Demo_Wrk_Cereals==1
gen n9x2=1 if Family_Grows_Pigs==1 & Demo_Wrk_Legumes==1
gen n9x3=1 if Family_Grows_Pigs==1 & Demo_Wrk_Vegetables==1
gen n9x4=1 if Family_Grows_Pigs==1 & Demo_Wrk_Fruits==1
gen n9x5=1 if Family_Grows_Pigs==1 & Demo_Wrk_Flowers==1
gen n9x6=1 if Family_Grows_Pigs==1 & Demo_Wrk_Oilseeds==1
gen n9x7=1 if Family_Grows_Pigs==1 & Demo_Wrk_Spices==1
gen n9x8=1 if Family_Grows_Pigs==1 & Demo_Wrk_Chickens==1
gen n9x9=1 if Family_Grows_Pigs==1 & Demo_Wrk_GoatsSheep==1
gen n9x10=1 if Family_Grows_Pigs==1 & Demo_Wrk_Cows==1
gen n9x11=1 if Family_Grows_Pigs==1 & Demo_Wrk_Fish==1
gen n9x12=1 if Family_Grows_Pigs==1 & Demo_Wrk_Bees==1
gen n9x13=1 if Family_Grows_Pigs==1 & Demo_Wrk_Niche==1
gen n9x14=1 if Family_Grows_Pigs==1 & Demo_Wrk_PackingStorage==1
gen n9x15=1 if Family_Grows_Pigs==1 & Demo_Wrk_Irrigation==1
gen n9x16=1 if Family_Grows_Pigs==1 & Demo_Wrk_ProtectedCult==1

gen n10x1=1 if Family_Grows_Sheep==1 & Demo_Wrk_Cereals==1
gen n10x2=1 if Family_Grows_Sheep==1 & Demo_Wrk_Legumes==1
gen n10x3=1 if Family_Grows_Sheep==1 & Demo_Wrk_Vegetables==1
gen n10x4=1 if Family_Grows_Sheep==1 & Demo_Wrk_Fruits==1
gen n10x5=1 if Family_Grows_Sheep==1 & Demo_Wrk_Flowers==1
gen n10x6=1 if Family_Grows_Sheep==1 & Demo_Wrk_Oilseeds==1
gen n10x7=1 if Family_Grows_Sheep==1 & Demo_Wrk_Spices==1
gen n10x8=1 if Family_Grows_Sheep==1 & Demo_Wrk_Chickens==1
gen n10x9t=1 if Family_Grows_Sheep==1 & Demo_Wrk_GoatsSheep==1
gen n10x10=1 if Family_Grows_Sheep==1 & Demo_Wrk_Cows==1
gen n10x11=1 if Family_Grows_Sheep==1 & Demo_Wrk_Fish==1
gen n10x12=1 if Family_Grows_Sheep==1 & Demo_Wrk_Bees==1
gen n10x13=1 if Family_Grows_Sheep==1 & Demo_Wrk_Niche==1
gen n10x14=1 if Family_Grows_Sheep==1 & Demo_Wrk_PackingStorage==1
gen n10x15=1 if Family_Grows_Sheep==1 & Demo_Wrk_Irrigation==1
gen n10x16=1 if Family_Grows_Sheep==1 & Demo_Wrk_ProtectedCult==1

gen n11x1=1 if Family_Grows_Cows==1 & Demo_Wrk_Cereals==1
gen n11x2=1 if Family_Grows_Cows==1 & Demo_Wrk_Legumes==1
gen n11x3=1 if Family_Grows_Cows==1 & Demo_Wrk_Vegetables==1
gen n11x4=1 if Family_Grows_Cows==1 & Demo_Wrk_Fruits==1
gen n11x5=1 if Family_Grows_Cows==1 & Demo_Wrk_Flowers==1
gen n11x6=1 if Family_Grows_Cows==1 & Demo_Wrk_Oilseeds==1
gen n11x7=1 if Family_Grows_Cows==1 & Demo_Wrk_Spices==1
gen n11x8=1 if Family_Grows_Cows==1 & Demo_Wrk_Chickens==1
gen n11x9=1 if Family_Grows_Cows==1 & Demo_Wrk_GoatsSheep==1
gen n11x10t=1 if Family_Grows_Cows==1 & Demo_Wrk_Cows==1
gen n11x11=1 if Family_Grows_Cows==1 & Demo_Wrk_Fish==1
gen n11x12=1 if Family_Grows_Cows==1 & Demo_Wrk_Bees==1
gen n11x13=1 if Family_Grows_Cows==1 & Demo_Wrk_Niche==1
gen n11x14=1 if Family_Grows_Cows==1 & Demo_Wrk_PackingStorage==1
gen n11x15=1 if Family_Grows_Cows==1 & Demo_Wrk_Irrigation==1
gen n11x16=1 if Family_Grows_Cows==1 & Demo_Wrk_ProtectedCult==1

gen n12x1=1 if Family_Grows_Fish==1 & Demo_Wrk_Cereals==1
gen n12x2=1 if Family_Grows_Fish==1 & Demo_Wrk_Legumes==1
gen n12x3=1 if Family_Grows_Fish==1 & Demo_Wrk_Vegetables==1
gen n12x4=1 if Family_Grows_Fish==1 & Demo_Wrk_Fruits==1
gen n12x5=1 if Family_Grows_Fish==1 & Demo_Wrk_Flowers==1
gen n12x6=1 if Family_Grows_Fish==1 & Demo_Wrk_Oilseeds==1
gen n12x7=1 if Family_Grows_Fish==1 & Demo_Wrk_Spices==1
gen n12x8=1 if Family_Grows_Fish==1 & Demo_Wrk_Chickens==1
gen n12x9=1 if Family_Grows_Fish==1 & Demo_Wrk_GoatsSheep==1
gen n12x10=1 if Family_Grows_Fish==1 & Demo_Wrk_Cows==1
gen n12x11t=1 if Family_Grows_Fish==1 & Demo_Wrk_Fish==1
gen n12x12=1 if Family_Grows_Fish==1 & Demo_Wrk_Bees==1
gen n12x13=1 if Family_Grows_Fish==1 & Demo_Wrk_Niche==1
gen n12x14=1 if Family_Grows_Fish==1 & Demo_Wrk_PackingStorage==1
gen n12x15=1 if Family_Grows_Fish==1 & Demo_Wrk_Irrigation==1
gen n12x16=1 if Family_Grows_Fish==1 & Demo_Wrk_ProtectedCult==1

gen n13x1=1 if Family_Grows_Bees==1 & Demo_Wrk_Cereals==1
gen n13x2=1 if Family_Grows_Bees==1 & Demo_Wrk_Legumes==1
gen n13x3=1 if Family_Grows_Bees==1 & Demo_Wrk_Vegetables==1
gen n13x4=1 if Family_Grows_Bees==1 & Demo_Wrk_Fruits==1
gen n13x5=1 if Family_Grows_Bees==1 & Demo_Wrk_Flowers==1
gen n13x6=1 if Family_Grows_Bees==1 & Demo_Wrk_Oilseeds==1
gen n13x7=1 if Family_Grows_Bees==1 & Demo_Wrk_Spices==1
gen n13x8=1 if Family_Grows_Bees==1 & Demo_Wrk_Chickens==1
gen n13x9=1 if Family_Grows_Bees==1 & Demo_Wrk_GoatsSheep==1
gen n13x10=1 if Family_Grows_Bees==1 & Demo_Wrk_Cows==1
gen n13x11=1 if Family_Grows_Bees==1 & Demo_Wrk_Fish==1
gen n13x12t=1 if Family_Grows_Bees==1 & Demo_Wrk_Bees==1
gen n13x13=1 if Family_Grows_Bees==1 & Demo_Wrk_Niche==1
gen n13x14=1 if Family_Grows_Bees==1 & Demo_Wrk_PackingStorage==1
gen n13x15=1 if Family_Grows_Bees==1 & Demo_Wrk_Irrigation==1
gen n13x16=1 if Family_Grows_Bees==1 & Demo_Wrk_ProtectedCult==1

gen n14x1=1 if Family_Grows_Niche==1 & Demo_Wrk_Cereals==1
gen n14x2=1 if Family_Grows_Niche==1 & Demo_Wrk_Legumes==1
gen n14x3=1 if Family_Grows_Niche==1 & Demo_Wrk_Vegetables==1
gen n14x4=1 if Family_Grows_Niche==1 & Demo_Wrk_Fruits==1
gen n14x5=1 if Family_Grows_Niche==1 & Demo_Wrk_Flowers==1
gen n14x6=1 if Family_Grows_Niche==1 & Demo_Wrk_Oilseeds==1
gen n14x7=1 if Family_Grows_Niche==1 & Demo_Wrk_Spices==1
gen n14x8=1 if Family_Grows_Niche==1 & Demo_Wrk_Chickens==1
gen n14x9=1 if Family_Grows_Niche==1 & Demo_Wrk_GoatsSheep==1
gen n14x10=1 if Family_Grows_Niche==1 & Demo_Wrk_Cows==1
gen n14x11=1 if Family_Grows_Niche==1 & Demo_Wrk_Fish==1
gen n14x12=1 if Family_Grows_Niche==1 & Demo_Wrk_Bees==1
gen n14x13t=1 if Family_Grows_Niche==1 & Demo_Wrk_Niche==1
gen n14x14=1 if Family_Grows_Niche==1 & Demo_Wrk_PackingStorage==1
gen n14x15=1 if Family_Grows_Niche==1 & Demo_Wrk_Irrigation==1
gen n14x16=1 if Family_Grows_Niche==1 & Demo_Wrk_ProtectedCult==1

gen n15x1=1 if Family_Grows_Nothing==1 & Demo_Wrk_Cereals==1
gen n15x2=1 if Family_Grows_Nothing==1 & Demo_Wrk_Legumes==1
gen n15x3=1 if Family_Grows_Nothing==1 & Demo_Wrk_Vegetables==1
gen n15x4=1 if Family_Grows_Nothing==1 & Demo_Wrk_Fruits==1
gen n15x5=1 if Family_Grows_Nothing==1 & Demo_Wrk_Flowers==1
gen n15x6=1 if Family_Grows_Nothing==1 & Demo_Wrk_Oilseeds==1
gen n15x7=1 if Family_Grows_Nothing==1 & Demo_Wrk_Spices==1
gen n15x8=1 if Family_Grows_Nothing==1 & Demo_Wrk_Chickens==1
gen n15x9=1 if Family_Grows_Nothing==1 & Demo_Wrk_GoatsSheep==1
gen n15x10=1 if Family_Grows_Nothing==1 & Demo_Wrk_Cows==1
gen n15x11=1 if Family_Grows_Nothing==1 & Demo_Wrk_Fish==1
gen n15x12=1 if Family_Grows_Nothing==1 & Demo_Wrk_Bees==1
gen n15x13=1 if Family_Grows_Nothing==1 & Demo_Wrk_Niche==1
gen n15x14=1 if Family_Grows_Nothing==1 & Demo_Wrk_PackingStorage==1
gen n15x15=1 if Family_Grows_Nothing==1 & Demo_Wrk_Irrigation==1
gen n15x16=1 if Family_Grows_Nothing==1 & Demo_Wrk_ProtectedCult==1

gen Sorted_lvl1_Pair=1 if n1x1t==1 | n2x2t==1 | n3x3t==1 | n4x4t==1 | n5x5t==1 | n6x6t==1 | n7x7t==1 | n8x8t==1 | n11x10t==1 | n10x9t==1 | n12x11t==1 | n13x12t==1 | n14x13t==1
replace Sorted_lvl1_Pair=0 if missing(Sorted_lvl1_Pair)

gen Sorted_Lvl1_NoTrad=1 if n15x1==1 | n15x2==1 | n15x3==1 | n15x4==1 | n15x5==1 | n15x6==1 | n15x7==1 | n15x8==1 | n15x9==1 | n15x10==1 | n15x11==1 | n15x12==1 | n15x13==1 | n15x14==1 | n15x15==1 | n15x16==1

replace Sorted_Lvl1_NoTrad=0 if missing(Sorted_Lvl1_NoTrad)

gen Sorted_Lvl1_NoPair=1 if Sorted_lvl1_Pair==0 & Sorted_Lvl1_NoTrad==0
replace Sorted_Lvl1_NoPair=0 if missing(Sorted_Lvl1_NoPair)

// Define the list of dummy variables in each group
local groupA Fam_Lvl2_Grains Fam_Lvl2_Fruits Fam_Lvl2_Vegetables Fam_Lvl2_CashCrops Fam_Lvl2_Livestock Fam_Lvl2_Specialty Fam_Lvl2_Nothing
local groupB Wrk_Lvl2_Grains Wrk_Lvl2_Fruits Wrk_Lvl2_Vegetables Wrk_Lvl2_CashCrops Wrk_Lvl2_Livestock Wrk_Lvl2_Specialty Wrk_Lvl2_Capital

// Get the number of variables in groupA and groupB
local numA : word count `groupA'
local numB : word count `groupB'

// Set up a matrix to store the results (numA rows and numB columns)
matrix results = J(`numA', `numB', .)

// Loop over each combination and calculate the frequency
local i = 1
foreach a of local groupA {
    local j = 1
    foreach b of local groupB {
        // Count the occurrences where both `a` and `b` are 1
        quietly count if `a' == 1 & `b' == 1
        matrix results[`i', `j'] = r(N)  // Store the result in the matrix
        local j = `j' + 1
    }
    local i = `i' + 1
}

// Define the list of dummy variables in each group
local groupC Family_Grows_Cereals Family_Grows_Legumes Family_Grows_Vegetables Family_Grows_Fruits Family_Grows_Flowers Family_Grows_Oilseeds Family_Grows_Spices Family_Grows_Chicken Family_Grows_Pigs Family_Grows_Sheep Family_Grows_Cows Family_Grows_Fish Family_Grows_Bees Family_Grows_Niche Family_Grows_Nothing

local groupD Demo_Wrk_Cereals Demo_Wrk_Legumes Demo_Wrk_Vegetables Demo_Wrk_Fruits Demo_Wrk_Flowers Demo_Wrk_Oilseeds Demo_Wrk_Spices Demo_Wrk_Chickens Demo_Wrk_GoatsSheep Demo_Wrk_Cows Demo_Wrk_Fish Demo_Wrk_Bees Demo_Wrk_Niche Demo_Wrk_PackingStorage Demo_Wrk_Irrigation Demo_Wrk_ProtectedCult

// Get the number of variables in groupC and groupD
local numC : word count `groupC'
local numD : word count `groupD'

// Set up a matrix to store the results (numA rows and numB columns)
matrix results2 = J(`numC', `numD', .)

// Loop over each combination and calculate the frequency
local k = 1
foreach c of local groupC {
    local m = 1
    foreach d of local groupD {
        // Count the occurrences where both `c` and `d` are 1
        quietly count if `c' == 1 & `d' == 1
        matrix results2[`k', `m'] = r(N)  // Store the result in the matrix
        local m = `m' + 1
    }
    local k = `k' + 1
}
*Collapsing Career Paths into Three groups out of ten.

gen Kar_SelfEmploy=1 if Mrg_FamFarm==1 | Mrg_OwnFarm==1 | Mrg_Business==1
replace Kar_SelfEmploy=0 if missing(Kar_SelfEmploy)

gen Kar_FindEmploy=1 if Mrg_FindJob==1 | Mrg_FindFarmJob==1 | Mrg_WorkGov==1 | Mrg_Migrate==1 | Mrg_AgExt==1
replace Kar_FindEmploy=0 if missing(Kar_FindEmploy)

gen Kar_UncertainStudy=1 if Mrg_Uncertain==1 | Mrg_Study==1
replace Kar_UncertainStudy=0 if missing(Kar_UncertainStudy)

gen j1x1=1 if Fam_Lvl3_Animals==1 & Wrk_Lvl3_Animals==1
gen j1x2=1 if Fam_Lvl3_Animals==1 & Wrk_Lvl3_Horticulture==1
gen j2x1=1 if Fam_Lvl3_Horticulture==1 & Wrk_Lvl3_Animals==1
gen j2x2=1 if Fam_Lvl3_Horticulture==1 & Wrk_Lvl3_Horticulture==1
gen j3x1=1 if Fam_Lvl3_Nothing==1 & Wrk_Lvl3_Animals==1
gen j3x2=1 if Fam_Lvl3_Nothing==1 & Wrk_Lvl3_Horticulture==1

*Doing a modified level 3 of what Ram wants. Calling it level 4 cause why not.

gen Fam_Lvl4_Animals=1 if Fam_Lvl2_Livestock==1
replace Fam_Lvl4_Animals=0 if missing(Fam_Lvl4_Animals)

gen Fam_Lvl4_Horticulture=1 if Fam_Lvl2_Grains==1 | Fam_Lvl2_Fruits==1 | Fam_Lvl2_Vegetables==1 | Fam_Lvl2_CashCrops==1 | Fam_Lvl2_Specialty==1
replace Fam_Lvl4_Horticulture=0 if missing(Fam_Lvl4_Horticulture)

gen Fam_Lvl4_Nothing=1 if Fam_Lvl2_Nothing==1
replace Fam_Lvl4_Nothing=0 if missing(Fam_Lvl4_Nothing)

gen Wrk_Lvl4_Animals=1 if Wrk_Lvl2_Livestock==1
replace Wrk_Lvl4_Animals=0 if missing(Wrk_Lvl4_Animals)

gen Wrk_Lvl4_Horticulture=1 if Wrk_Lvl2_Grains==1 | Wrk_Lvl2_Vegetables==1 | Wrk_Lvl2_Fruits==1 | Wrk_Lvl2_CashCrops==1 | Wrk_Lvl2_Specialty==1
replace Wrk_Lvl4_Horticulture=0 if missing(Wrk_Lvl4_Horticulture)

gen Wrk_Lvl4_Support=1 if Wrk_Lvl2_Capital==1
replace Wrk_Lvl4_Support=0 if missing(Wrk_Lvl4_Support)

gen guh1x1=1 if Fam_Lvl4_Animals==1 & Wrk_Lvl4_Animals==1
gen guh1x2=1 if Fam_Lvl4_Animals==1 & Wrk_Lvl4_Horticulture==1
gen guh1x3=1 if Fam_Lvl4_Animals==1 & Wrk_Lvl4_Support==1

gen guh2x1=1 if Fam_Lvl4_Horticulture==1 & Wrk_Lvl4_Animals==1
gen guh2x2=1 if Fam_Lvl4_Horticulture==1 & Wrk_Lvl4_Horticulture==1
gen guh2x3=1 if Fam_Lvl4_Horticulture==1 & Wrk_Lvl4_Support==1

gen guh3x1=1 if Fam_Lvl4_Nothing==1 & Wrk_Lvl4_Animals==1
gen guh3x2=1 if Fam_Lvl4_Nothing==1 & Wrk_Lvl4_Horticulture==1
gen guh3x3=1 if Fam_Lvl4_Nothing==1 & Wrk_Lvl4_Support==1

gen Sorted_Lvl4_Pair=1 if guh1x1==1 | guh2x2==1
replace Sorted_Lvl4_Pair=0 if missing(Sorted_Lvl4_Pair)

gen Sorted_Lvl4_NoTrad=1 if guh3x1==1 | guh3x2==1 | guh3x3==1
replace Sorted_Lvl4_NoTrad=0 if missing(Sorted_Lvl4_NoTrad)

gen Sorted_Lvl4_NoPair=1 if Sorted_Lvl4_NoTrad==0 & Sorted_Lvl4_Pair==0
replace Sorted_Lvl4_NoPair=0 if missing(Sorted_Lvl4_NoPair)

gen PonyDF=1 if Mrg_FamFarm==1 | Mrg_FindFarmJob==1 | Mrg_OwnFarm==1
replace PonyDF=0 if missing(PonyDF)

gen PonyIF=1 if Mrg_AgExt==1 | Mrg_Business==1 | Mrg_FindJob==1 | Mrg_WorkGov==1
replace PonyIF=0 if missing(PonyIF)

gen PonyNF=1 if Mrg_Study==1 | Mrg_Uncertain==1 | Mrg_Migrate==1
replace PonyNF=0 if missing(PonyNF)

*Splitting KinneretCollege under Training_Center into two groups 2023 2024

gen Training_LocYr=1 if Training_Center==1 & Appended_From != "Kinneret24"
replace Training_LocYr=2 if Training_Center==1 & Appended_From == "Kinneret24"
replace Training_LocYr=3 if Training_Center==2
replace Training_LocYr=4 if Training_Center==3
replace Training_LocYr=5 if Training_Center==4

label define augustus 1 "Kinneret2023" 2 "Kinneret2024" 3 "Ruppin2023" 4 "Silver2023" 5 "Tel_Hai2023"

label values Training_LocYr augustus

*Splitting DNationality into Nationality_Yr

gen Nationality_Yr=1 if DNationality==29
replace Nationality_Yr=2 if DNationality==1
replace Nationality_Yr=3 if DNationality==3
replace Nationality_Yr=4 if DNationality==8
replace Nationality_Yr=5 if DNationality==10
replace Nationality_Yr=6 if DNationality==15 & Appended_From != "Kinneret24"
replace Nationality_Yr=7 if DNationality==15 & Appended_From == "Kinneret24"
replace Nationality_Yr=8 if DNationality==19
replace Nationality_Yr=9 if DNationality==20 & Appended_From != "Kinneret24"
replace Nationality_Yr=10 if DNationality==20 & Appended_From == "Kinneret24"
replace Nationality_Yr=11 if DNationality==22
replace Nationality_Yr=12 if DNationality==24
replace Nationality_Yr=13 if DNationality==25

label define octavian 1 "Benin2023" 2 "Bhutan2023" 3 "Cambodia2023" 4 "Ghana2023" 5 "IvoryCoast2023" 6 "Malawi2023" 7 "Malawi2024" 8 "Philippines2023" 9 "Rwanda2023" 10 "Rwanda2024" 11 "Tanzania2023" 12 "Togo2023" 13 "Uganda2023"

label values Nationality_Yr octavian

*Tabulate Gender
*tab Demo_Gender

*Tabulate Ages
gen Age_1=1 if Age<21
replace Age_1=0 if missing(Age_1)
*tab Age_1

gen Age_2=1 if Age<=25 & Age>=21
replace Age_2=0 if missing(Age_2)
*tab Age_2

gen Age_3=1 if Age>=26 & Age<=30
replace Age_3=0 if missing(Age_3)
*tab Age_3

gen Age_4=1 if Age>=31 & !missing(Age)
replace Age_4=0 if missing(Age_4)
*tab Age_4

*Tabulate Education Years
gen Educ_1=1 if Years_Education==1
gen Educ_2=1 if Years_Education>=2 & Years_Education<=7
gen Educ_3=1 if Years_Education==8 | Years_Education==9 | Years_Education==10
gen Educ_4=1 if Years_Education==11

replace Educ_1=0 if missing(Educ_1)
replace Educ_2=0 if missing(Educ_2)
replace Educ_3=0 if missing(Educ_3)
replace Educ_4=0 if missing(Educ_4)

*tab Educ_1
*tab Educ_2
*tab Educ_3
*tab Educ_4



*Tabulate Community Sizes
*tab Demo_CommSize

* Step 1: Define a local macro with all dummy variable names
*local dummies Fam_Lvl2_Grains Fam_Lvl2_Vegetables Fam_Lvl2_Fruits Fam_Lvl2_CashCrops *Fam_Lvl2_Livestock Fam_Lvl2_Specialty Fam_Lvl2_Nothing

* Step 2: Loop through each variable and tabulate it
*foreach var of local dummies {
*tabulate `var'
*}


* Step 1: Define a local macro with all dummy variable names
*local dummies2 Wrk_Lvl2_Grains Wrk_Lvl2_Vegetables Wrk_Lvl2_Fruits Wrk_Lvl2_CashCrops Wrk_Lvl2_Livestock Wrk_Lvl2_Specialty Wrk_Lvl2_Capital

* Step 2: Loop through each variable and tabulate it
*foreach var of local dummies2 {
*tabulate `var'
*}

* Step 1: Define a local macro with all dummy variable names
*local dummies3 Int_Grains Int_Vegetables Int_Fruits Int_CashCrops Int_Livestock Int_Specialty Int_Capital Int_Nothing

* Step 2: Loop through each variable and tabulate it
*foreach var of local dummies3 {
*tabulate `var'
*}

*using eststo package

*No Fixed Effects Table 4
*eststo: reg Int_Grains Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital

*eststo: reg Int_Vegetables Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital

*eststo: reg Int_Fruits Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital

*eststo: reg Int_CashCrops Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital

*eststo: reg Int_Livestock Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital

*eststo: reg Int_Specialty Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital

*eststo: reg Int_Capital Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital

*eststo: reg Int_Nothing Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital

*Table 5

// eststo: reg Int_Grains Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr
//
// eststo: reg Int_Vegetables Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr
//
//
// eststo: reg Int_Fruits Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr
//
//
// eststo: reg Int_CashCrops Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr
//
//
// eststo: reg Int_Livestock Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr
//
//
// eststo: reg Int_Specialty Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr


// eststo: reg Int_Capital Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr


// eststo: reg Int_Nothing Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr

*Table 6

// eststo: reg Int_Grains Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Int_Vegetables Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Int_Fruits Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Int_CashCrops Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Int_Livestock Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Int_Specialty Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr i.Training_LocYr
//
//
// eststo: reg Int_Capital Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr i.Training_LocYr
//
//
// eststo: reg Int_Nothing Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Nationality_Yr i.Training_LocYr

*Table 6.ALT NO USE

*eststo: reg Int_Grains Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Training_LocYr

*eststo: reg Int_Vegetables Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Training_LocYr


*eststo: reg Int_Fruits Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Training_LocYr


*eststo: reg Int_CashCrops Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Training_LocYr


*eststo: reg Int_Livestock Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Training_LocYr


*eststo: reg Int_Specialty Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Training_LocYr


*eststo: reg Int_Capital Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Training_LocYr

*eststo: reg Int_Nothing Fam_Lvl2_Grains Wrk_Lvl2_Grains Fam_Lvl2_Vegetables Wrk_Lvl2_Vegetables Fam_Lvl2_Fruits Wrk_Lvl2_Fruits Fam_Lvl2_CashCrops Wrk_Lvl2_CashCrops Fam_Lvl2_Livestock Wrk_Lvl2_Livestock Fam_Lvl2_Specialty Wrk_Lvl2_Specialty Fam_Lvl2_Nothing Wrk_Lvl2_Capital i.Training_LocYr

*table 7

*eststo: reg Mrg_FamFarm Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg Mrg_OwnFarm Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg Mrg_Business Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg Mrg_FindJob Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg Mrg_FindFarmJob Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg Mrg_WorkGov Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg Mrg_Study Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg Mrg_Migrate Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg Mrg_AgExt Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg Mrg_Uncertain Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*table 8

// eststo: reg Mrg_FamFarm Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg Mrg_OwnFarm Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg Mrg_Business Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg Mrg_FindJob Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg Mrg_FindFarmJob Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg Mrg_WorkGov Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg Mrg_Study Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg Mrg_Migrate Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg Mrg_AgExt Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg Mrg_Uncertain Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr

*table 9

// eststo: reg Mrg_FamFarm Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Mrg_OwnFarm Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Mrg_Business Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Mrg_FindJob Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Mrg_FindFarmJob Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Mrg_WorkGov Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Mrg_Study Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Mrg_Migrate Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Mrg_AgExt Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Mrg_Uncertain Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr


*table 9.ALT NO USE

*eststo: reg Mrg_FamFarm Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*eststo: reg Mrg_OwnFarm Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*eststo: reg Mrg_Business Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*eststo: reg Mrg_FindJob Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*eststo: reg Mrg_FindFarmJob Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*eststo: reg Mrg_WorkGov Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*eststo: reg Mrg_Study Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*eststo: reg Mrg_AgExt Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*eststo: reg Mrg_Uncertain Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*table 10

*eststo: reg RealHope Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg Agency_Score Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg Pathway_Score Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg IEO_Score Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*eststo: reg Preparedness_For_Plans Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair

*table 11

// eststo: reg RealHope Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg Agency_Score Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg Pathway_Score Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg IEO_Score Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr
//
// eststo: reg Preparedness_For_Plans Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr

*table 12
//
// eststo: reg RealHope Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Agency_Score Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Pathway_Score Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg IEO_Score Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr
//
// eststo: reg Preparedness_For_Plans Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Nationality_Yr i.Training_LocYr

*table 12.ALT NO USE

*eststo: reg RealHope Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*eststo: reg Agency_Score Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*eststo: reg Pathway_Score Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*eststo: reg IEO_Score Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr

*eststo: reg Preparedness_For_Plans Sorted_Lvl3_NoTrad Sorted_Lvl3_NoPair i.Training_LocYr




