*This section of code is to clean up the dataset for the official set.

*This cutoff is so that we at least get their demo_wrk

*Duplicates eliminated by manual identification of same name(in demo section) and email for the first stage

*Same user as SeqNum=438,
drop if SeqNum==562

*Same user as SeqNum=1409
drop if SeqNum==1434

*Same user as SeqNum=92
drop if SeqNum==94

*Same user as SeqNum=993
drop if SeqNum==844

*Same user as 153
drop if SeqNum==84

*Same user as 1293
drop if SeqNum==1314

*Same user as SeqNum=130
drop if SeqNum==16

*Same user as 1420
drop if SeqNum==1462

*Same user as 441
drop if SeqNum==462

*Same user as 75
drop if SeqNum==87

*Same user as 260
drop if SeqNum==288

*Same user as 405
drop if SeqNum==406

*fake account probably researcher
drop if SeqNum==1539

*Thailand account, eliminated cause wrong currency
drop if SeqNum==86

*I'll use 81 as my cutoff so that the central part of my research is intact.

drop if Progress<81

*Clean up unused variables

*This point forward is datacleaning for Tim's Thesis
drop FamilyFarm_Yes_Q3_9_TEXT_PILOT Plans_earn_sch_1_PILOT Plans_earn_sch_3_PILOT Financialinq_Yes_Q1_1_TEXT_PILOT Ln_Scenario_Q1_2_TEXT_PILOT Ln_Scenario_Q2_2_TEXT_PILOT Ln_Scenario_Q3_2_TEXT_PILOT Ln_Scenario_Q4_2_TEXT_PILOT DemandTechWish_6_TEXT_PILOT DemandTechCost_4_TEXT_PILOT DemandTechSaved_no_4_TEXT_PILOT Int_Locked_1_TEXT_PILOT Int_Locked_2_TEXT_PILOT Int_Subsi_1_TEXT_PILOT Int_Subsi_2_TEXT_PILOT A5yr_yes_q1_8_TEXT_PILOT Earning_Shekels_1_TEXT_PILOT Earning_OwnCurrency_1_TEXT_PILOT Spending_Shekels_1_TEXT_PILOT Remittances_Amount_2_TEXT_PILOT Saving_Amount_2_TEXT_PILOT LoanDeets1_1_TEXT_PILOT LoanDeets2_1_TEXT_PILOT LoanDeets5_1_TEXT_PILOT LoanDeets3_1_TEXT_PILOT LoanDeets4_1_TEXT_PILOT LitQuiz8_1_1_1_PILOT LitQuiz8_1_2_1_PILOT LitQuiz8_1_3_1_PILOT LitQuiz8_1_4_1_PILOT LitQuiz8_1_5_1_PILOT LitQuiz8_2_1_1_PILOT LitQuiz8_2_2_1_PILOT LitQuiz8_2_3_1_PILOT LitQuiz8_2_4_1_PILOT LitQuiz8_2_5_1_PILOT LitQuiz9_1_1_1_PILOT LitQuiz9_1_2_1_PILOT LitQuiz9_1_3_1_PILOT LitQuiz9_1_4_1_PILOT LitQuiz9_1_5_1_PILOT LitQuiz9_2_1_1_PILOT LitQuiz9_2_2_1_PILOT LitQuiz9_2_3_1_PILOT LitQuiz9_2_4_1_PILOT LitQuiz9_2_5_1_PILOT LoanDeets1_PILOT LoanDeets2_PILOT LoanDeets5_PILOT LoanDeets3_PILOT LoanDeets4_PILOT Financialinq_Yes_Q1_PILOT Ln_Scenario_Q1_PILOT Ln_Scenario_Q2_PILOT Ln_Scenario_Q3_PILOT Ln_Scenario_Q4_PILOT DemandTechWish_PILOT DemandTechCost_PILOT DemandTechSavedMoney_PILOT DemandTechSaved_no_PILOT DemandTechFive_PILOT DemandTechDiscount_PILOT Int_Locked_PILOT Int_Subsi_PILOT A5yrloan_PILOT A5yr_yes_q1_PILOT Earning_Shekels_PILOT Earning_OwnCurrency_PILOT Spending_Shekels_PILOT Remittances_PILOT Remittances_Amount_PILOT Saving_Amount_PILOT QuizStructions_PILOT LitQuiz1_PILOT LitQuiz2_PILOT LitQuiz3_PILOT LitQuiz4_PILOT LitQuiz5_PILOT LitQuiz6_PILOT LitQuiz7_PILOT Instructions_Finsum_PILOT BP_Succ_PILOT Demo_Work_IL_10_PILOT


drop DNatTime_First_Click DNatTime_Last_Click DNatTime_Click_Count DCurTime_First_Click DCurTime_Last_Click DCurTime_Click_Count DArTime_First_Click DArTime_Last_Click DArTime_Click_Count Fam_CultTime_First_Click Fam_CultTime_Last_Click Fam_CultTime_Click_Count FamFarQ1Time_First_Click FamFarQ1Time_Last_Click FamFarQ1Time_Click_Count FamFarQ2Time_First_Click FamFarQ2Time_Last_Click FamFarQ2Time_Click_Count FamFarQ3Time_First_Click FamFarQ3Time_Last_Click FamFarQ3Time_Click_Count FamFarQ4Time_First_Click FamFarQ4Time_Last_Click FamFarQ4Time_Click_Count AgriFuteTime_First_Click AgriFuteTime_Last_Click AgriFuteTime_Click_Count AgriPosTime_First_Click AgriPosTime_Last_Click AgriPosTime_Click_Count AgriNegTime_First_Click AgriNegTime_Last_Click AgriNegTime_Click_Count PlansDescTimer_First_Click PlansDescTimer_Last_Click PlansDescTimer_Click_Count PrepConTime_First_Click PrepConTime_Last_Click PrepConTime_Click_Count Pl_BarTime_First_Click Pl_BarTime_Last_Click Pl_BarTime_Click_Count Fin_InqTime_First_Click Fin_InqTime_Last_Click Fin_InqTime_Click_Count Fin_InqAmntTime_First_Click Fin_InqAmntTime_Last_Click Fin_InqAmntTime_Click_Count Fin_InqSourceTime_First_Click Fin_InqSourceTime_Last_Click Fin_InqSourceTime_Click_Count BPSTimer_First_Click BPSTimer_Last_Click BPSTimer_Click_Count BPCTimer_First_Click BPCTimer_Last_Click BPCTimer_Click_Count CollabTime_First_Click CollabTime_Last_Click CollabTime_Click_Count IEOaTime_First_Click IEOaTime_Last_Click IEOaTime_Click_Count IEObTime_First_Click IEObTime_Last_Click IEObTime_Click_Count IEOcTime_First_Click IEOcTime_Last_Click IEOcTime_Click_Count HopeaTime_First_Click HopeaTime_Last_Click HopeaTime_Click_Count HopebTime_First_Click HopebTime_Last_Click HopebTime_Click_Count MiscTime_First_Click MiscTime_Last_Click MiscTime_Click_Count RateFarmTimer_First_Click RateFarmTimer_Last_Click RateFarmTimer_Click_Count HelpPrefTime_First_Click HelpPrefTime_Last_Click HelpPrefTime_Click_Count LnTy1Time_First_Click LnTy1Time_Last_Click LnTy1Time_Click_Count LnTy2Time_First_Click LnTy2Time_Last_Click LnTy2Time_Click_Count LnTy3Time_First_Click LnTy3Time_Last_Click LnTy3Time_Click_Count LnTy4Time_First_Click LnTy4Time_Last_Click LnTy4Time_Click_Count TechWishTime_First_Click TechWishTime_Last_Click TechWishTime_Click_Count DTechCostTimer_First_Click DTechCostTimer_Last_Click DTechFiveTime_First_Click DTechCostTimer_Click_Count DtechPurchTime_First_Click DtechPurchTime_Last_Click DtechPurchTime_Click_Count DTechPurchBlTime_First_Click DTechPurchBlTime_Last_Click DTechPurchBlTime_Click_Count DTechFiveTime_First_Click DTechFiveTime_Last_Click DTechFiveTime_Click_Count DTechDiscountTime_First_Click DTechDiscountTime_Last_Click DTechDiscountTime_Click_Count IntLockedTimer_First_Click IntLockedTimer_Last_Click IntLockedTimer_Click_Count Int_SubsiTimer_First_Click Int_SubsiTimer_Last_Click Int_SubsiTimer_Click_Count Int_SubHalfTime_First_Click Int_SubHalfTime_Last_Click Int_SubHalfTime_Click_Count BnkTimer_First_Click BnkTimer_Last_Click BnkTimer_Click_Count A5yrtime_First_Click A5yrtime_Last_Click A5yrtime_Click_Count EarnTime_First_Click EarnTime_Last_Click EarnTime_Click_Count SpeTime_First_Click SpeTime_Last_Click SpeTime_Click_Count RemitTime_First_Click RemitTime_Last_Click RemitTime_Click_Count RemitAmntTime_First_Click RemitAmntTime_Last_Click RemitAmntTime_Click_Count SavingTimer_First_Click SavingTimer_Last_Click SavingTimer_Click_Count SavingAmntTime_First_Click SavingAmntTime_Last_Click SavingAmntTime_Click_Count PlansSaveUtilTime_First_Click PlansSaveUtilTime_Last_Click PlansSaveUtilTime_Click_Count RemitPref_First_Click RemitPref_Last_Click RemitPref_Click_Count RemitPreveTime_First_Click RemitPreveTime_Last_Click RemitPreveTime_Click_Count CostComingTimer_First_Click CostComingTimer_Last_Click CostComingTimer_Click_Count LoanDeetsTime_First_Click LoanDeetsTime_Last_Click LoanDeetsTime_Click_Count Demo1timer_First_Click Demo1timer_Last_Click Demo1timer_Click_Count Demo2Timer_First_Click Demo2Timer_Last_Click Demo2Timer_Click_Count Demo3Timer_First_Click Demo3Timer_Last_Click Demo3Timer_Click_Count Demo4Timer_First_Click Demo4Timer_Last_Click Demo4Timer_Click_Count SelfRankfinlitTime_First_Click SelfRankfinlitTime_Last_Click SelfRankfinlitTime_Click_Count

drop DNatTime_Page_Submit DCurTime_Page_Submit DArTime_Page_Submit Fam_CultTime_Page_Submit FamFarQ1Time_Page_Submit FamFarQ2Time_Page_Submit FamFarQ3Time_Page_Submit FamFarQ4Time_Page_Submit AgriFuteTime_Page_Submit AgriPosTime_Page_Submit AgriNegTime_Page_Submit PlansDescTimer_Page_Submit PrepConTime_Page_Submit Pl_BarTime_Page_Submit Fin_InqTime_Page_Submit Fin_InqAmntTime_Page_Submit Fin_InqSourceTime_Page_Submit BPSTimer_Page_Submit BPCTimer_Page_Submit CollabTime_Page_Submit IEOaTime_Page_Submit IEObTime_Page_Submit IEOcTime_Page_Submit HopeaTime_Page_Submit HopebTime_Page_Submit MiscTime_Page_Submit RateFarmTimer_Page_Submit HelpPrefTime_Page_Submit LnTy1Time_Page_Submit LnTy2Time_Page_Submit LnTy3Time_Page_Submit LnTy4Time_Page_Submit TechWishTime_Page_Submit DTechCostTimer_Page_Submit DtechPurchTime_Page_Submit DTechPurchBlTime_Page_Submit DTechFiveTime_Page_Submit DTechDiscountTime_Page_Submit IntLockedTimer_Page_Submit Int_SubsiTimer_Page_Submit Int_SubHalfTime_Page_Submit BnkTimer_Page_Submit A5yrtime_Page_Submit EarnTime_Page_Submit SpeTime_Page_Submit RemitTime_Page_Submit RemitAmntTime_Page_Submit SavingTimer_Page_Submit SavingAmntTime_Page_Submit PlansSaveUtilTime_Page_Submit RemitPref_Page_Submit RemitPreveTime_Page_Submit CostComingTimer_Page_Submit LoanDeetsTime_Page_Submit Demo1timer_Page_Submit Demo2Timer_Page_Submit Demo3Timer_Page_Submit Demo4Timer_Page_Submit SelfRankfinlitTime_Page_Submit

drop Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9 Q10 Q11 Score

drop StartDate EndDate Status IPAddress LocationLatitude LocationLongitude DistributionChannel

drop LnTy1 LnType1_Elaborated LnTy2 LnType2_Elaborated LnTy3 LnType3_Elaborated LnTy4 LnType4_Elaborated Desired_Tech Desired_Tech_Elaborated DTech_Cost_5000Meters DTechCostM2_4_TEXT DTech_Cost_1Acre DTechCostAcre_4_TEXT DTech_Cost_1Hectre DTechCostHec_4_TEXT DTech_Plan_Purchase DTech_Main_Block DTech_Main_Block_Elaborated DTech_FiveYr_Intervention DTech_HalfOff_Intervention Bank_Account_Intervention BnkAct_Amount_Unlocked BnkAct_Amount_Locked Int_Subsi Int_Subsi_1_TEXT Int_Subsi_2_TEXT Int_SubHalf Int_SubHalf_1_TEXT Int_SubHalf_2_TEXT

drop Rank_FinLit_Peers LitQuizRiskMng LitQuizInflation LitQuizNumeracy LitQuiz4IntSimple LitQuizInt150 LitQuizExRt LitQuizSvInf InstructFinsum LitQuizSumA1_1_1_1 LitQuizSumA1_1_2_1 LitQuizSumA1_1_3_1 LitQuizSumA1_1_4_1 LitQuizSumA1_1_5_1 LitQuizSumA1_2_1_1 LitQuizSumA1_2_2_1 LitQuizSumA1_2_3_1 LitQuizSumA1_2_4_1 LitQuizSumA1_2_5_1 LitQuizSumA2_1_1_1 LitQuizSumA2_1_2_1 LitQuizSumA2_1_3_1 LitQuizSumA2_1_4_1 LitQuizSumA2_1_5_1 LitQuizSumA2_2_1_1 LitQuizSumA2_2_2_1 LitQuizSumA2_2_3_1 LitQuizSumA2_2_4_1 LitQuizSumA2_2_5_1 LitQuizSumB1_1_1_1 LitQuizSumB1_1_2_1 LitQuizSumB1_1_3_1 LitQuizSumB1_1_4_1 LitQuizSumB1_1_5_1 LitQuizSumB1_2_1_1 LitQuizSumB1_2_2_1 LitQuizSumB1_2_3_1 LitQuizSumB1_2_4_1 LitQuizSumB1_2_5_1 LitQuizSumB2_1_1_1 LitQuizSumB2_1_2_1 LitQuizSumB2_1_3_1 LitQuizSumB2_1_4_1 LitQuizSumB2_1_5_1 LitQuizSumB2_2_1_1 LitQuizSumB2_2_2_1 LitQuizSumB2_2_3_1 LitQuizSumB2_2_4_1 LitQuizSumB2_2_5_1 LitQuizSumC1_1_1_1 LitQuizSumC1_1_2_1 LitQuizSumC1_1_3_1 LitQuizSumC1_1_4_1 LitQuizSumC1_1_5_1 LitQuizSumC1_2_1_1 LitQuizSumC1_2_2_1 LitQuizSumC1_2_3_1 LitQuizSumC1_2_4_1 LitQuizSumC1_2_5_1 LitQuizSumC2_1_1_1 LitQuizSumC2_1_2_1 LitQuizSumC2_1_3_1 LitQuizSumC2_1_4_1 LitQuizSumC2_1_5_1 LitQuizSumC2_2_1_1 LitQuizSumC2_2_2_1 LitQuizSumC2_2_3_1 LitQuizSumC2_2_4_1 LitQuizSumC2_2_5_1 LitQuizSumD1_1_1_1 LitQuizSumD1_1_2_1 LitQuizSumD1_1_3_1 LitQuizSumD1_1_4_1 LitQuizSumD1_1_5_1 LitQuizSumD1_2_1_1 LitQuizSumD1_2_2_1 LitQuizSumD1_2_3_1 LitQuizSumD1_2_4_1 LitQuizSumD1_2_5_1 LitQuizSumD2_1_1_1 LitQuizSumD2_1_2_1 LitQuizSumD2_1_3_1 LitQuizSumD2_1_4_1 LitQuizSumD2_1_5_1 LitQuizSumD2_2_1_1 LitQuizSumD2_2_2_1 LitQuizSumD2_2_3_1 LitQuizSumD2_2_4_1 LitQuizSumD2_2_5_1 LitQuizSumE1_1_1_1 LitQuizSumE1_1_2_1 LitQuizSumE1_1_3_1 LitQuizSumE1_1_4_1 LitQuizSumE1_1_5_1 LitQuizSumE1_2_1_1 LitQuizSumE1_2_2_1 LitQuizSumE1_2_3_1 LitQuizSumE1_2_4_1 LitQuizSumE1_2_5_1 LitQuizSumE2_1_1_1 LitQuizSumE2_1_2_1 LitQuizSumE2_1_3_1 LitQuizSumE2_1_4_1 LitQuizSumE2_1_5_1 LitQuizSumE2_2_1_1 LitQuizSumE2_2_2_1 LitQuizSumE2_2_3_1 LitQuizSumE2_2_4_1 LitQuizSumE2_2_5_1 LitQuizSumF1_1_1_1 LitQuizSumF1_1_2_1 LitQuizSumF1_1_3_1 LitQuizSumF1_1_4_1 LitQuizSumF1_1_5_1 LitQuizSumF1_2_1_1 LitQuizSumF1_2_2_1 LitQuizSumF1_2_3_1 LitQuizSumF1_2_4_1 LitQuizSumF1_2_5_1 LitQuizSumF2_1_1_1 LitQuizSumF2_1_2_1 LitQuizSumF2_1_3_1 LitQuizSumF2_1_4_1 LitQuizSumF2_1_5_1 LitQuizSumF2_2_1_1 LitQuizSumF2_2_2_1 LitQuizSumF2_2_3_1 LitQuizSumF2_2_4_1 LitQuizSumF2_2_5_1 LitQuizSumG1_1_1_1 LitQuizSumG1_1_2_1 LitQuizSumG1_1_3_1 LitQuizSumG1_1_4_1 LitQuizSumG1_1_5_1 LitQuizSumG1_2_1_1 LitQuizSumG1_2_2_1 LitQuizSumG1_2_3_1 LitQuizSumG1_2_4_1 LitQuizSumG1_2_5_1 LitQuizSumG2_1_1_1 LitQuizSumG2_1_2_1 LitQuizSumG2_1_3_1 LitQuizSumG2_1_4_1 LitQuizSumG2_1_5_1 LitQuizSumG2_2_1_1 LitQuizSumG2_2_2_1 LitQuizSumG2_2_3_1 LitQuizSumG2_2_4_1 LitQuizSumG2_2_5_1 FurtherCommunication

drop DCurrrency DArea Annual_Income_Year1 Annual_Income_Year5 Barrier_Lack_CashLoan Barrier_BadLuck Barrier_NoConfidence Barrier_InsufficientTraining Barrier_FamilyPermission Barrier_None Barrier_Other Barrier_OtherElaborated Need_Outside_Finance Need_Finance_Amount Need_Finance_Elaborated Source_From_Family Source_From_Friends Source_From_CommercialBank Source_From_CooperativeCredit Source_From_Microfinance Source_From_NGO Source_From_Uncertain Source_From_Other Source_from_Elaborated Select_Monday

drop Family_Land_Ownership Family_Land_Size Family_Recent_Investment

drop Bank_Acnt_IL Bank_Acnt_Hm Use_Mobile_Banking IdentifyBank IdentifyBank_6_TEXT Took_Loan_Recently Took_Loan_Reason A5yLReas_6_TEXT Monthly_Earn_Shekels Monthly_EarnShekels_Elaborated Monthly_Earn_OwnCurrency Monthly_Earn_OwnCurr_Elaborated Monthly_Spending_Shekels MonthlySpendin_Elaborated Remittances Remittance_Service Remit_Serv_Elaborated Amount_Sent_Home AmntSnt_Home_Elaborated SavedMoney_In_Israel Amount_Saved_Israel AmountSved_IL_Elaborated Savings_in_Bank Savings_lend_Out Savings_Spend_forThemself Savings_Spend_MoreEducation Savings_Keep_Home Savings_Invest_FamFarm Savings_Invest_OwnFarm Savings_Invest_FamBusi Savings_Invest_OwnBusi Savings_Other Savings_Elaborated Rather_Save SendCause_FamilyNeeds SendCause_FamilyPressure SendCause_PayLoans SendCause_IlNotSafe SendCause_Other SendCause_Elaborated Used_FamilySavings Used_OwnSavings Used_Gift Used_NoPay Used_Borrow_Friends Used_Borrow_Bank Used_Other Used_Elaborated Loan_Size LoanSz_Elaborated Loan_Length LoanLnth_Elaborated Loan_TotInterest LoanInt_Elaborated Loan_PaySchedule LoanSch_Elaborated Loan_PaymentSize LoanPaySize_Elaborated

drop InvMiscell3_CUT QuizInstructions_CUT

*Replacing others and grouping with original
replace DNationality=19 if OtherNation=="Philippines"
replace DNationality=20 if OtherNation=="Rwanda"
replace DNationality=24 if OtherNation=="Togo" | OtherNation=="TOGO"

drop Duration__in_seconds_ Progress Finished RecordedDate OtherNation

drop Intervention_WhatApp

*Up to this point for the officicial dataset, then do my own work.

*Generating Continent Dummies
gen Continent="Africa" if DNationality==8 | DNationality==10 | DNationality==15 | DNationality==20 | DNationality==22 | DNationality==24 | DNationality==25 | DNationality==29 | DNationality==35

replace Continent="Asia" if DNationality==1 | DNationality==3 | DNationality==19 | DNationality==23

replace Continent="Other" if missing(Continent)

*Generate Dummies for Training Center
gen Ruppin=1 if Training_Centro=="Ruppin"
replace Ruppin=0 if missing(Ruppin)

gen Silver=1 if Training_Centro=="Silver"
replace Silver=0 if missing(Silver)

gen Tel_Hai=1 if Training_Centro=="Tel_Hai"
replace Tel_Hai=0 if missing(Tel_Hai)

gen Kinneret=1 if Training_Centro=="Kinneret"
replace Kinneret=0 if missing(Kinneret)

*Generate Dummies for Gender
gen Male=1 if Demo_Gender==1
replace Male=0 if missing(Male)

gen Female=1 if Demo_Gender==2
replace Female=0 if missing(Female)

*Generate Dummies for Nationality
gen Rwanda=1 if DNationality==20
replace Rwanda=0 if missing(Rwanda)

gen Bhutan=1 if DNationality==1
replace Bhutan=0 if missing(Bhutan)

gen Cambodia=1 if DNationality==3
replace Cambodia=0 if missing(Cambodia)

gen Ghana=1 if DNationality==8
replace Ghana=0 if missing(Ghana)

gen Ivory_Coast=1 if DNationality==10
replace Ivory_Coast=0 if missing(Ivory_Coast)

gen Malawi=1 if DNationality==15
replace Malawi=0 if missing(Malawi)

gen Philippines=1 if DNationality==19
replace Philippines=0 if missing(Philippines)

gen Tanzania=1 if DNationality==22
replace Tanzania=0 if missing(Tanzania)

gen Thailand=1 if DNationality==23
replace Thailand=0 if missing(Thailand)

gen Togo=1 if DNationality==24
replace Togo=0 if missing(Togo)

gen Uganda=1 if DNationality==25
replace Uganda=0 if missing(Uganda)

gen Benin=1 if DNationality==29
replace Benin=0 if missing(Benin)

*Dummie for Agrostudies
gen AgroStudies=1 if Training_Centro=="Tel_Hai" | Training_Centro=="Ruppin" | Training_Centro=="Silver"
replace AgroStudies=0 if missing(AgroStudies)

*don't have Coton and don't have "Cash Crops" and I instead created the niche category. This section is all about bringing in the "other" category into the mainline categories

replace Family_Grows_Cereals=1 if Family_Grows_Elaborated=="Rice" | Family_Grows_Elaborated=="rice" | Family_Grows_Elaborated=="corn" | Family_Grows_Elaborated=="Casava casew Rice" | Family_Grows_Elaborated=="Corn" | Family_Grows_Elaborated=="Corn and rice" | Family_Grows_Elaborated=="Corn, soyabean" | Family_Grows_Elaborated=="rice and livestock like pig" | Family_Grows_Elaborated=="They are into cattle production and maize farming" | Family_Grows_Elaborated=="Rices" | Family_Grows_Elaborated=="Rice farming" | Family_Grows_Elaborated=="Rice and corn" | Family_Grows_Elaborated=="Sugarcane, Cassava and Corn" |Family_Grows_Elaborated=="Rice and Corn commercial" | Family_Grows_Elaborated=="Maize" | Family_Grows_Elaborated=="Maize , beans  Goat" | Family_Grows_Elaborated=="Rice and Coconut" | Family_Grows_Elaborated=="Maize and beans" | Family_Grows_Elaborated=="Sugarcane, Cassava and Corn" | Family_Grows_Elaborated=="Tobacco and maize" | Family_Grows_Elaborated=="RICE" | Family_Grows_Elaborated=="Coconut,Rice" | Family_Grows_Elaborated=="Rice and Corn commercial" | Family_Grows_Elaborated=="Rice and corn" | Family_Grows_Elaborated=="Rice and some other backyard raise vegetables" | Family_Grows_Elaborated=="Rice crops and ducks" | Family_Grows_Elaborated=="Rice or Oryza sativa" | Family_Grows_Elaborated=="Riz, coton, arachide, maïs" | Family_Grows_Elaborated=="Zea maize and Rice" | Family_Grows_Elaborated=="corn" | Family_Grows_Elaborated=="Maize corn"

replace Family_Grows_Fruits=1 if Family_Grows_Elaborated=="Banana" | Family_Grows_Elaborated=="Cocoa" | Family_Grows_Elaborated=="Coconut" | Family_Grows_Elaborated=="Coffee" | Family_Grows_Elaborated=="Banana, plantain, cocoa and yam" | Family_Grows_Elaborated=="Bananas" | Family_Grows_Elaborated=="Cacao" | Family_Grows_Elaborated=="Café et Cacao" | Family_Grows_Elaborated=="Cacao, hévéa et palmier à huile" | Family_Grows_Elaborated=="Café, cacao, palmier à huile" | Family_Grows_Elaborated=="Cash crop ( Cocoa)" | Family_Grows_Elaborated=="Coco" |Family_Grows_Elaborated=="Cocoa and palm oil" | Family_Grows_Elaborated=="cacao" | Family_Grows_Elaborated==" coconut(copra)" | Family_Grows_Elaborated=="Copra" | Family_Grows_Elaborated=="Culture de cacao" | Family_Grows_Elaborated=="Plantain and cocoyam" | Family_Grows_Elaborated=="Rice and Coconut" | Family_Grows_Elaborated=="Coconot" | Family_Grows_Elaborated=="Theobroma cacao (cocoa) and plantain" | Family_Grows_Elaborated=="Lapins"

replace Family_Grows_Legumes=1 if Family_Grows_Elaborated=="Maize , beans  Goat" | Family_Grows_Elaborated=="Maize and beans" | Family_Grows_Elaborated=="Riz, coton, arachide, maïs"

replace Family_Grows_Oilseeds=1 if Family_Grows_Elaborated=="Cacao, hévéa et palmier à huile" | Family_Grows_Elaborated=="Café, cacao, palmier à huile" | Family_Grows_Elaborated=="Cocoa and palm oil" | Family_Grows_Elaborated=="Sunflower" | Family_Grows_Elaborated=="Huile de palme"

replace Family_Grows_Vegetables=1 if Family_Grows_Elaborated=="Cassava" | Family_Grows_Elaborated=="Cocoa and vegetables" | Family_Grows_Elaborated=="cassava" | Family_Grows_Elaborated=="Sweet potatoes" | Family_Grows_Elaborated=="Tubers" | Family_Grows_Elaborated=="Potato" | Family_Grows_Elaborated=="Potatoes" | Family_Grows_Elaborated=="Irish potato" | Family_Grows_Elaborated=="Irish potatoes" | Family_Grows_Elaborated=="Cucumbers" | Family_Grows_Elaborated=="Sugarcane, Cassava and Corn" | Family_Grows_Elaborated=="chicken, cucumber" | Family_Grows_Elaborated=="irish potatoes" | Family_Grows_Elaborated=="Rice and some other backyard raise vegetables" | Family_Grows_Elaborated=="Yam and Cassava"

replace Family_Grows_Fish=1 if Family_Grows_Elaborated=="Fish"

replace Family_Grows_Cows=1 if Family_Grows_Elaborated=="They are into cattle production and maize farming" | Family_Grows_Elaborated=="Dairy products.like cheese and butter" | Family_Grows_Elaborated=="Dairy animals and maize production" | Family_Grows_Elaborated=="Cow"

replace Family_Grows_Pigs=1 if Family_Grows_Elaborated=="rice and livestock like pig" | Family_Grows_Elaborated=="Pigs, chicken and eggs and goat"

replace Family_Grows_Sheep=1 if Family_Grows_Elaborated=="Maize , beans  Goat" | Family_Grows_Elaborated=="Pigs, chicken and eggs and goat"

*these are more about small animals(but had to remove Rice crops and ducks cause of breaking three limit but was already in animals anyways)
replace Family_Grows_Chicken=1 if Family_Grows_Elaborated=="Pigs, chicken and eggs and goat" | Family_Grows_Elaborated=="Rabbit" | Family_Grows_Elaborated=="Rabbits" | Family_Grows_Elaborated=="Rabbits, ducks and turkey"

replace Family_Grows_Fruits=1 if Family_Grows_Elaborated=="Ananas 🍍" | Family_Grows_Elaborated=="Bananas" | Family_Grows_Elaborated=="Cocoa and vegetables" | Family_Grows_Elaborated=="Cocoa beans" | Family_Grows_Elaborated=="Cocoa( cacao) bean, Plantains and Cassava" | Family_Grows_Elaborated=="Coconut,Rice" | Family_Grows_Elaborated=="Coconuts" | Family_Grows_Elaborated=="coconut"

*tobacco and other stuff
gen Family_Grows_Niche=1 if Family_Grows_Elaborated=="Cash Crops" | Family_Grows_Elaborated=="Coton" | Family_Grows_Elaborated=="Mushroom" | Family_Grows_Elaborated=="Riz, coton, arachide, maïs" | Family_Grows_Elaborated=="Tobacco and maize" | Family_Grows_Elaborated=="Trees (Pine and eucalyptus)"

replace Family_Grows_Flowers=1 if Family_Grows_Elaborated=="Cultures pérennes" | Family_Grows_Elaborated=="Pérenne" | Family_Grows_Elaborated=="Plants"

*Between versions of the survey. Initially had a narrower range for education years. Newer versions of the survey were more specific as to what constituted a year of education. Plus they also gave a lot more rnage. Now I am trying to merge the two
gen Years_Education_String="6 or less" if inrange(Demo_EducYrs,13,21) | Demo_EducYrs==27
replace Years_Education_String="7" if Demo_EducYrs==2
replace Years_Education_String="8" if Demo_EducYrs==3
replace Years_Education_String="9" if Demo_EducYrs==4
replace Years_Education_String="10" if Demo_EducYrs==5
replace Years_Education_String="11" if Demo_EducYrs==6
replace Years_Education_String="12" if Demo_EducYrs==7
replace Years_Education_String="13" if Demo_EducYrs==8
replace Years_Education_String="14" if Demo_EducYrs==9
replace Years_Education_String="15" if Demo_EducYrs==10
replace Years_Education_String="16 or more" if Demo_EducYrs==11 | inrange(Demo_EducYrs,22,26)

replace Years_Education_String= Demo_Years_LIMITED if missing(Years_Education_String)

gen Educ_Order=1 if Years_Education_String=="6 or less"
replace Educ_Order=2 if Years_Education_String=="7"
replace Educ_Order=3 if Years_Education_String=="8"
replace Educ_Order=4 if Years_Education_String=="9"
replace Educ_Order=5 if Years_Education_String=="10"
replace Educ_Order=6 if Years_Education_String=="11"
replace Educ_Order=7 if Years_Education_String=="12"
replace Educ_Order=8 if Years_Education_String=="13"
replace Educ_Order=9 if Years_Education_String=="14"
replace Educ_Order=10 if Years_Education_String=="15"
replace Educ_Order=11 if Years_Education_String=="16 or more"

label define educlabels 1 "6 or less", modify
label define educlabels 2 "7", modify
label define educlabels 3 "8", modify
label define educlabels 4 "9", modify
label define educlabels 5 "10", modify
label define educlabels 6 "11", modify
label define educlabels 7 "12", modify
label define educlabels 8 "13", modify
label define educlabels 9 "14", modify
label define educlabels 10 "15", modify
label define educlabels 11 "16 or more", modify

encode Years_Education_String, gen(Years_Education) label(educlabels)

label define labels160 1 "A Village", modify
label define labels160 2 "A Small Town", modify
label define labels160 3 "A Town", modify
label define labels160 4 "A City", modify
label define labels160 5 "A Large City", modify

encode Training_Centro, gen(Training_Center)

encode Continent, gen(Cont)

order Described_Plans, last

order ResponseId, last

*Build wrk niche category and then merge elaborated

*bees, mushrooms, and vinyards
gen Demo_Wrk_Niche=1 if Demo_Wrk_Elaborated=="Mushroom" | Demo_Wrk_Elaborated=="Biological control farm" | Demo_Wrk_Elaborated=="Champignon" | Demo_Wrk_Elaborated=="Champignons" | Demo_Wrk_Elaborated=="Champion" | Demo_Wrk_Elaborated=="Culture de champignons 🍄" | Demo_Wrk_Elaborated=="Dans le champignons" | Demo_Wrk_Elaborated=="Hishtil Ashkelon" | Demo_Wrk_Elaborated=="Hishtil Ltd Ashkelon" | Demo_Wrk_Elaborated=="Machroom" | Demo_Wrk_Elaborated=="Mashroom  Farm" | Demo_Wrk_Elaborated=="Muchroom farm" | Demo_Wrk_Elaborated=="Mushrook" | Demo_Wrk_Elaborated=="Mushrom" | Demo_Wrk_Elaborated=="Mushroom" | Demo_Wrk_Elaborated=="Mushroom (TEVA POST L.T.D)" | Demo_Wrk_Elaborated=="Mushroom Farm" | Demo_Wrk_Elaborated=="Mushroom Farming" | Demo_Wrk_Elaborated=="Mushroom farm" | Demo_Wrk_Elaborated=="Muhroom farming" | Demo_Wrk_Elaborated=="Mushroom production" | Demo_Wrk_Elaborated=="Mushroom productionand packaging" | Demo_Wrk_Elaborated=="Mushroom 🍄" | Demo_Wrk_Elaborated=="Mushrooms" | Demo_Wrk_Elaborated=="Mushrooms  farm" | Demo_Wrk_Elaborated=="Mushrooms farm" | Demo_Wrk_Elaborated=="Mushrooms group" | Demo_Wrk_Elaborated=="Myciculture" | Demo_Wrk_Elaborated=="Nursery" | Demo_Wrk_Elaborated=="Nursery for vegetable" | Demo_Wrk_Elaborated=="Nursery(seedlings)" | Demo_Wrk_Elaborated=="Research & Development" | Demo_Wrk_Elaborated=="Plant nurcery" | Demo_Wrk_Elaborated=="Running agricultural supply and mushroom farm here in israel" | Demo_Wrk_Elaborated=="Seed production" | Demo_Wrk_Elaborated=="Seedling" | Demo_Wrk_Elaborated=="Seedlings" | Demo_Wrk_Elaborated=="Seeds" | Demo_Wrk_Elaborated=="Swine" | Demo_Wrk_Elaborated=="Species" | Demo_Wrk_Elaborated=="Tissue Culture of Ornithugalom" | Demo_Wrk_Elaborated=="Tissue culture" | Demo_Wrk_Elaborated=="Tree nursery" | Demo_Wrk_Elaborated=="Trees" | Demo_Wrk_Elaborated=="Vegetable and grapes seedlings" | Demo_Wrk_Elaborated=="championnerie" | Demo_Wrk_Elaborated=="grafting" | Demo_Wrk_Elaborated=="laboratory" | Demo_Wrk_Elaborated=="mushrooms" | Demo_Wrk_Elaborated=="nursery" | Demo_Wrk_Elaborated=="portobello mushroom farm" | Demo_Wrk_Elaborated=="sorting, cutting rootstock, grafting" | Demo_Wrk_Elaborated=="Mushroom farming"

replace Demo_Wrk_Bees=1 if Demo_Wrk_Elaborated=="Biobee" | Demo_Wrk_Elaborated=="Biobeee" | Demo_Wrk_Elaborated=="Biological pest control (biobee)"

replace Demo_Wrk_Fruits=1 if Demo_Wrk_Elaborated=="Avocado" | Demo_Wrk_Elaborated=="Avocados" | Demo_Wrk_Elaborated=="Banana" | Demo_Wrk_Elaborated=="Banana farm" | Demo_Wrk_Elaborated=="Bananas" | Demo_Wrk_Elaborated=="DATES" | Demo_Wrk_Elaborated=="Dates" | Demo_Wrk_Elaborated=="Dates farm" | Demo_Wrk_Elaborated=="Exploitation d'agrumes" | Demo_Wrk_Elaborated=="Grafting (watermelon,cucumber,grapes) and cutting rootstock(grapes)" | Demo_Wrk_Elaborated=="Grape seedlings department" | Demo_Wrk_Elaborated=="Grape vine" | Demo_Wrk_Elaborated=="Grapes" | Demo_Wrk_Elaborated=="Graphing" | Demo_Wrk_Elaborated==" Harvesting and maintenance the bananas and avocados" | Demo_Wrk_Elaborated=="La recolte des agrumes et le désherbage manuel" | Demo_Wrk_Elaborated=="Orchard" | Demo_Wrk_Elaborated=="Plantation (dates production)" | Demo_Wrk_Elaborated=="Vegetables fruits" | Demo_Wrk_Elaborated=="Verger" |Demo_Wrk_Elaborated=="Vineyards" | Demo_Wrk_Elaborated=="Harvesting and maintenance the bananas and avocados"



replace Demo_Wrk_Chickens=1 if Demo_Wrk_Elaborated=="Chicken, turkey and fish vaccination" | Demo_Wrk_Elaborated=="Hatchery" | Demo_Wrk_Elaborated=="I'm training only in hatchery farm" | Demo_Wrk_Elaborated=="Injection vaccine chicken" | Demo_Wrk_Elaborated=="Poultry farm"

replace Demo_Wrk_Fish=1 if Demo_Wrk_Elaborated=="Chicken, turkey and fish vaccination"

replace Demo_Wrk_Vegetables=1 if Demo_Wrk_Elaborated=="Grafting some vegetables" | Demo_Wrk_Elaborated=="Packing and vegetable field" | Demo_Wrk_Elaborated=="Plants" | Demo_Wrk_Elaborated=="Sometimes I also work on field in the corns, beetroot. I do see the irrigation system but not allowed to touch or ask anything." | Demo_Wrk_Elaborated=="Tomates, concombre et laitue" | Demo_Wrk_Elaborated=="Vegetables fruits"

replace Demo_Wrk_Cereals=1 if Demo_Wrk_Elaborated=="Rice"

replace Demo_Wrk_Spices=1 if Demo_Wrk_Elaborated=="Herbs" | Demo_Wrk_Elaborated=="Herbs propagation"

replace Demo_Wrk_Flowers=1 if Demo_Wrk_Elaborated=="Ornamental plants"

replace Demo_Wrk_PackingStorage=1 if Demo_Wrk_Elaborated=="Carrot processing" | Demo_Wrk_Elaborated=="Emballage, tri et packaging" | Demo_Wrk_Elaborated=="Packing and vegetable field" | Demo_Wrk_Elaborated=="sorting, cutting rootstock, grafting"

replace Demo_Wrk_Cows=1 if Demo_Wrk_Elaborated=="Cows" | Demo_Wrk_Elaborated=="Dairy" | Demo_Wrk_Elaborated=="Diary farm" | Demo_Wrk_Elaborated=="Dairy" | Demo_Wrk_Elaborated=="Dairy" | Demo_Wrk_Elaborated=="Dairy" | Demo_Wrk_Elaborated=="Dairy"

replace Demo_Wrk_ProtectedCult=1 if Demo_Wrk_Elaborated=="Greenhouse" | Demo_Wrk_Elaborated=="In the green house" | Demo_Wrk_Elaborated=="Net Houses" | Demo_Wrk_Elaborated=="Serre"

replace Demo_Wrk_Vegetables=0 if missing(Demo_Wrk_Vegetables)
replace Demo_Wrk_Cereals=0 if missing(Demo_Wrk_Cereals)
replace Demo_Wrk_Legumes=0 if missing(Demo_Wrk_Legumes)
replace Demo_Wrk_Oilseeds=0 if missing(Demo_Wrk_Oilseeds)
replace Demo_Wrk_Spices=0 if missing(Demo_Wrk_Spices)
replace Demo_Wrk_Fruits=0 if missing(Demo_Wrk_Fruits)
replace Demo_Wrk_Flowers=0 if missing(Demo_Wrk_Flowers)
replace Demo_Wrk_PackingStorage=0 if missing(Demo_Wrk_PackingStorage)
replace Demo_Wrk_ProtectedCult=0 if missing(Demo_Wrk_ProtectedCult)
replace Demo_Wrk_Irrigation=0 if missing(Demo_Wrk_Irrigation)
replace Demo_Wrk_GoatsSheep=0 if missing(Demo_Wrk_GoatsSheep)
replace Demo_Wrk_Cows=0 if missing(Demo_Wrk_Cows)
replace Demo_Wrk_Chickens=0 if missing(Demo_Wrk_Chickens)
replace Demo_Wrk_Fish=0 if missing(Demo_Wrk_Fish)
replace Demo_Wrk_Bees=0 if missing(Demo_Wrk_Bees)
replace Demo_Wrk_Niche=0 if missing(Demo_Wrk_Niche)

replace Family_Grows_Cereals=0 if missing(Family_Grows_Cereals)
replace Family_Grows_Legumes=0 if missing(Family_Grows_Legumes)
replace Family_Grows_Oilseeds=0 if missing(Family_Grows_Oilseeds)
replace Family_Grows_Fruits=0 if missing(Family_Grows_Fruits)
replace Family_Grows_Vegetables=0 if missing(Family_Grows_Vegetables)
replace Family_Grows_Spices=0 if missing(Family_Grows_Spices)
replace Family_Grows_Fish=0 if missing(Family_Grows_Fish)
replace Family_Grows_Cows=0 if missing(Family_Grows_Cows)
replace Family_Grows_Sheep=0 if missing(Family_Grows_Sheep)
replace Family_Grows_Pigs=0 if missing(Family_Grows_Pigs)
replace Family_Grows_Bees=0 if missing(Family_Grows_Bees)
replace Family_Grows_Chicken=0 if missing(Family_Grows_Chicken)
replace Family_Grows_Flowers=0 if missing(Family_Grows_Flowers)
replace Family_Grows_Niche=0 if missing(Family_Grows_Niche)

gen Family_Grows_Sum=Family_Grows_Cereals+Family_Grows_Legumes+Family_Grows_Oilseeds+Family_Grows_Fruits+Family_Grows_Vegetables+Family_Grows_Spices+Family_Grows_Fish+Family_Grows_Cows+Family_Grows_Sheep+Family_Grows_Pigs+Family_Grows_Bees+Family_Grows_Chicken+Family_Grows_Flowers+Family_Grows_Niche

gen Family_Grows_Nothing=1 if Family_Grows_Sum==0
replace Family_Grows_Nothing=0 if missing(Family_Grows_Nothing)





gen Demo_Wrk_Sum=Demo_Wrk_Vegetables+Demo_Wrk_Cereals+Demo_Wrk_Legumes+Demo_Wrk_Oilseeds+Demo_Wrk_Spices+Demo_Wrk_Fruits+Demo_Wrk_Flowers+Demo_Wrk_PackingStorage+Demo_Wrk_ProtectedCult+Demo_Wrk_Irrigation+Demo_Wrk_GoatsSheep+Demo_Wrk_Cows+Demo_Wrk_Chickens+Demo_Wrk_Fish+Demo_Wrk_Bees+Demo_Wrk_Niche

label define noshit 0 "0" 1 "Nothing"

label values Family_Grows_Nothing "noshit"

label define Nitche 0 "0" 1 "Niche"

label values Demo_Wrk_Niche "Nitche"

label values Family_Grows_Niche "Nitche"

replace Pl_Work_Family_Farm=0 if missing(Pl_Work_Family_Farm)
replace Pl_Start_Own_Farm=0 if missing(Pl_Start_Own_Farm)
replace Pl_Employed_Other_Farm=0 if missing(Pl_Employed_Other_Farm)
replace Pl_Open_Own_AgBusiness=0 if missing(Pl_Open_Own_AgBusiness)
replace Pl_Employed_Other_AgBusiness=0 if missing(Pl_Employed_Other_AgBusiness)
replace Pl_Employed_Gov_Ag=0 if missing(Pl_Employed_Gov_Ag)
replace Pl_Employed_AgExtension=0 if missing(Pl_Employed_AgExtension)
replace Pl_Continue_AgStudying=0 if missing(Pl_Continue_AgStudying)
replace Pl_Migrate_Agri=0 if missing(Pl_Migrate_Agri)
replace Pl_Agri_Uncertain=0 if missing(Pl_Agri_Uncertain)

replace PlNeg_JoinFamBusiness=0 if missing(PlNeg_JoinFamBusiness)
replace PlNeg_StartOwnBusiness=0 if missing(PlNeg_StartOwnBusiness)
replace PlNeg_EmployedBusiness=0 if missing(PlNeg_EmployedBusiness)
replace PlNeg_EmployedGov=0 if missing(PlNeg_EmployedGov)
replace PlNeg_ContinueStudies=0 if missing(PlNeg_ContinueStudies)
replace PlNeg_Migrate=0 if missing(PlNeg_Migrate)
replace PlNeg_Uncertain=0 if missing(PlNeg_Uncertain)

*Merging in this stuff...

replace PlNeg_EmployedGov=1 if PlNeg_Other_Elaborated=="Travail au gouvernement" | PlNeg_Other_Elaborated=="Travail gouvernemental"

replace Pl_Work_Family_Farm=1 if Pl_Agri_Elaborated=="To develop our family cattle farm from local scale to commercial scale" | Pl_Agri_Elaborated=="J'aimerais travailler pour acquérir d'abord des compétences professionnelles au sein d'une entreprise agricole et ensuite poursuivre les études pour obtenir un cycle ingénieur et revenir exploiter l'exploitation familiale" | Pl_Agri_Elaborated=="Utiliser les terrains de mes parents pour faire le maraîchage" | Pl_Agri_Elaborated=="I will be working in agriculture on my family land, and I will buy some to make it enough."

replace Pl_Migrate_Agri=1 if Pl_Agri_Elaborated=="Work abroad to gain more experience" | Pl_Agri_Elaborated=="Continue to work in other countries and then after I gain enough money for my dream business I will build my own agriculture and sustainable farm" | Pl_Agri_Elaborated=="I want to apply in other country that will help me to have more skills about farming"

replace Pl_Continue_AgStudying=1 if Pl_Agri_Elaborated=="Masteral at HUJI" | Pl_Agri_Elaborated=="study more about agricultire" | Pl_Agri_Elaborated=="I want to start alongside school because I'm still studying my Bachelor's degree (Bachelor of science in Horticulture)" | Pl_Agri_Elaborated=="J'aimerais travailler pour acquérir d'abord des compétences professionnelles au sein d'une entreprise agricole et ensuite poursuivre les études pour obtenir un cycle ingénieur et revenir exploiter l'exploitation familiale"

replace Pl_Employed_AgExtension=1 if Pl_Agri_Elaborated=="To helps my brethrens and other youths on whatever I understand about Agriculture as consultant" | Pl_Agri_Elaborated=="Find more experience about agriculture before start my own" | Pl_Agri_Elaborated=="Try to find more experiences about agriculture before I start my own business." | Pl_Agri_Elaborated=="I wanna teach and share my knowledge what I have learn here" | Pl_Agri_Elaborated=="Sine I am a employee of one of the biggest Farm back in our country (Farm Machinery corporation limited)I ll work as agriculture instructor or extension agents or work for an agriculture company." | Pl_Agri_Elaborated=="Start my own commercial farm and at the same time helping bother farmers as an extension agent"

replace Pl_Employed_Other_AgBusiness=1 if Pl_Agri_Elaborated=="Sine I am a employee of one of the biggest Farm back in our country (Farm Machinery corporation limited)I ll work as agriculture instructor or extension agents or work for an agriculture company." | Pl_Agri_Elaborated=="I would open my own business or work in food industry" | Pl_Agri_Elaborated=="J'aimerais travailler pour acquérir d'abord des compétences professionnelles au sein d'une entreprise agricole et ensuite poursuivre les études pour obtenir un cycle ingénieur et revenir exploiter l'exploitation familiale"

replace Pl_Open_Own_AgBusiness=1 if Pl_Agri_Elaborated=="Work on my own farm that I bought where I am here in Israel and to manage my grocery store that I start up When I am here in Israel." | Pl_Agri_Elaborated=="Ouvrir une entreprise qui va produire des piments en poudre, et de tomates conservés...j'aimerais faire des produits made in togo a un prix abordable pour les togolais" | Pl_Agri_Elaborated=="Innovate mushroom by products" | Pl_Agri_Elaborated=="Start a mushroom farming business especially for the button mushroom which are not produced much in our country compared to oyster which is  produced by many people.....I will do a market research and my main target is the hotels and restaurants.I have knowledge and experience as I  worked in midbar hapitroit" | Pl_Agri_Elaborated=="Open livestock medical shop" | Pl_Agri_Elaborated=="Création d'une entreprise de transformation" | Pl_Agri_Elaborated=="Agroalimentaire  'fast food '" | Pl_Agri_Elaborated=="Je suis déjà entrepreneur agricole. J'élève les poulets de chair et les escargots. A cela je compte faire de la Pisciculture." | Pl_Agri_Elaborated=="Commercialisation des produits agricoles" | Pl_Agri_Elaborated=="Mettre en place une entreprise de Restauration de l'Ecosysteme forestier et promotion des Matières Organiques" | Pl_Agri_Elaborated=="Je vais créer une structure de production de maïs pour moi même pour employer la jeunesse" | SeqNum==1356

replace Pl_Start_Own_Farm=1 if Pl_Agri_Elaborated=="When I go back home I will open mushrooms farm for myself" | Pl_Agri_Elaborated=="Start to establish my own integrated farm." | Pl_Agri_Elaborated=="Start my Own commercial Farm in my Own land , because I have plan to buy a Land for my Farm." | Pl_Agri_Elaborated=="Start my own goat farm and with time expand for other livestock...so far have bought at least 30goats..." | Pl_Agri_Elaborated=="flower farm" | Pl_Agri_Elaborated=="Aplly my skills and knowledge acquired in my own farm" | Pl_Agri_Elaborated=="Do agricultural business by renting land" | Pl_Agri_Elaborated=="Make cattle farm" | Pl_Agri_Elaborated=="Continue to work in other countries and then after I gain enough money for my dream business I will build my own agriculture and sustainable farm" | Pl_Agri_Elaborated=="Run my own business aside from family own business and lands" | Pl_Agri_Elaborated=="To have piggery or dairy." | Pl_Agri_Elaborated=="continue my backyard farm" | Pl_Agri_Elaborated=="Establish my own cocoa farm and other farm product such as vegetables and animal husbandary" | Pl_Agri_Elaborated=="Start my own farm that belongs to my parents land" | Pl_Agri_Elaborated=="I won't to go into Goat's and Sheep's farming when I get back home" | Pl_Agri_Elaborated=="Start a farm which can sustain family needs, and can support family wants" | Pl_Agri_Elaborated=="Start a small garden for consumption" | Pl_Agri_Elaborated=="Build my own greenhouse for aquaponics farming" | Pl_Agri_Elaborated=="I would like to invest to a business like vegetable and livestock production." | Pl_Agri_Elaborated=="Start a mushroom farming business especially for the button mushroom which are not produced much in our country compared to oyster which is  produced by many people.....I will do a market research and my main target is the hotels and restaurants.I have knowledge and experience as I  worked in midbar hapitroit" | Pl_Agri_Elaborated=="Mixing with livestock keeping" | Pl_Agri_Elaborated=="I will build a greenhouse for start-up and start producing grafted seedlings business" | Pl_Agri_Elaborated=="Start my own chicken farm" | Pl_Agri_Elaborated=="Utiliser la terre de mes parents pour mettre en place ma propre ferme" | Pl_Agri_Elaborated=="Je vais créer une structure de production de maïs pour moi même pour employer la jeunesse" | Pl_Agri_Elaborated=="Je souhaite également faire de l'agro-pastorale" | Pl_Agri_Elaborated=="Au vue de tout ces choix j'aimerais avoir ma propre structure Agricole" | Pl_Agri_Elaborated=="Start my own commercial farm and at the same time helping bother farmers as an extension agent"

replace Pl_Agri_Uncertain=1 if Pl_Agri_Elaborated=="What are your plans for what you will do after returning home? (please choose up to the three most likely)" | Pl_Agri_Elaborated=="No"

gen Mrg_FamFarm=1 if Pl_Work_Family_Farm==1
gen Mrg_OwnFarm=1 if Pl_Start_Own_Farm==1
gen Mrg_Business=1 if PlNeg_StartOwnBusiness==1 | Pl_Open_Own_AgBusiness==1 | PlNeg_JoinFamBusiness==1
gen Mrg_FindJob=1 if PlNeg_EmployedBusiness==1 | Pl_Employed_Other_AgBusiness==1
gen Mrg_FindFarmJob=1 if Pl_Employed_Other_Farm==1
gen Mrg_WorkGov=1 if Pl_Employed_Gov_Ag==1 | PlNeg_EmployedGov==1
gen Mrg_Study=1 if Pl_Continue_AgStudying==1 | PlNeg_ContinueStudies==1
gen Mrg_Migrate=1 if Pl_Migrate_Agri==1 | PlNeg_Migrate==1
gen Mrg_AgExt=1 if Pl_Employed_AgExtension==1
gen Mrg_Uncertain=1 if Pl_Agri_Uncertain==1 | PlNeg_Uncertain==1

replace Mrg_FamFarm=0 if missing(Mrg_FamFarm)
replace Mrg_Business=0 if missing(Mrg_Business)
replace Mrg_FindJob=0 if missing(Mrg_FindJob)
replace Mrg_FindFarmJob=0 if missing(Mrg_FindFarmJob)
replace Mrg_WorkGov=0 if missing(Mrg_WorkGov)
replace Mrg_Study=0 if missing(Mrg_Study)
replace Mrg_Migrate=0 if missing(Mrg_Migrate)
replace Mrg_AgExt=0 if missing(Mrg_AgExt)
replace Mrg_Uncertain=0 if missing(Mrg_Uncertain)
replace Mrg_OwnFarm=0 if missing(Mrg_OwnFarm)

gen Mrg_Sum=Mrg_FamFarm+Mrg_OwnFarm+Mrg_Business+Mrg_FindJob+Mrg_WorkGov+Mrg_Study+Mrg_Migrate+Mrg_AgExt+Mrg_Uncertain+Mrg_FindFarmJob


replace HlpSource_PrevStudents=0 if missing(HlpSource_PrevStudents)
replace HlpSource_IlAgronomists=0 if missing(HlpSource_IlAgronomists)
replace HlpSource_LocalAgronomists=0 if missing(HlpSource_LocalAgronomists)
replace HlpSource_CollegeTeachers=0 if missing(HlpSource_CollegeTeachers)
replace HlpSource_ILFarmEmployers=0 if missing(HlpSource_ILFarmEmployers)
replace HlpSource_LocalBusinessMentors=0 if missing(HlpSource_LocalBusinessMentors)
replace HlpSource_Nobody=0 if missing(HlpSource_Nobody)

replace Demo_Lrn_FrmKnwldge=1 if Demo_Lrn_Elaborated=="Farm" | Demo_Lrn_Elaborated=="Farm knowledge n skills" | Demo_Lrn_Elaborated=="Water management" | Demo_Lrn_Elaborated=="Making impossible possible (farming in desert)" | Demo_Lrn_Elaborated=="Bio security"

replace Demo_Lrn_HrdWrk=1 if Demo_Lrn_Elaborated=="The value of hard work" | Demo_Lrn_Elaborated=="Surtout la pression au travail" | Demo_Lrn_Elaborated=="La pression du travail"

replace Demo_Lrn_BusiThinking=1 if Demo_Lrn_Elaborated=="Skill of management"

replace Demo_Lrn_ILCulture=0 if missing(Demo_Lrn_ILCulture)
replace Demo_Lrn_Eng=0 if missing(Demo_Lrn_Eng)
replace Demo_Lrn_ClassMat=0 if missing(Demo_Lrn_ClassMat)
replace Demo_Lrn_FrmKnwldge=0 if missing(Demo_Lrn_FrmKnwldge)
replace Demo_Lrn_BusiThinking=0 if missing(Demo_Lrn_BusiThinking)
replace Demo_Lrn_HrdWrk=0 if missing(Demo_Lrn_HrdWrk)
replace Demo_Lrn_TimeManage=0 if missing(Demo_Lrn_TimeManage)
replace Demo_Lrn_Nothing=0 if missing(Demo_Lrn_Nothing)

replace Demo_Own_Car=0 if missing(Demo_Own_Car)
replace Demo_Own_Cycle=0 if missing(Demo_Own_Cycle)
replace Demo_Own_Tractor=0 if missing(Demo_Own_Tractor)
replace Demo_Own_Comp=0 if missing(Demo_Own_Comp)
replace Demo_Own_TV=0 if missing(Demo_Own_TV)
replace Demo_Own_None=0 if missing(Demo_Own_None)

gen IEO_Score=IEOa_1+IEOa_2+IEOa_3+IEOa_4+IEOb_1+IEOb_2+IEOb_3+IEOb_4+IEOc_1+IEOc_2+IEOc_3+IEOc_4

gen Hope3Rev=8 if Hopea_3==1
replace Hope3Rev=7 if Hopea_3==2
replace Hope3Rev=6 if Hopea_3==3
replace Hope3Rev=5 if Hopea_3==4
replace Hope3Rev=4 if Hopea_3==5
replace Hope3Rev=3 if Hopea_3==6
replace Hope3Rev=2 if Hopea_3==7
replace Hope3Rev=1 if Hopea_3==8

gen Hope5Rev=8 if Hopea_5==1
replace Hope5Rev=7 if Hopea_5==2
replace Hope5Rev=6 if Hopea_5==3
replace Hope5Rev=5 if Hopea_5==4
replace Hope5Rev=4 if Hopea_5==5
replace Hope5Rev=3 if Hopea_5==6
replace Hope5Rev=2 if Hopea_5==7
replace Hope5Rev=1 if Hopea_5==8

gen Hope7Rev=8 if Hopeb_1==1
replace Hope7Rev=7 if Hopeb_1==2
replace Hope7Rev=6 if Hopeb_1==3
replace Hope7Rev=5 if Hopeb_1==4
replace Hope7Rev=4 if Hopeb_1==5
replace Hope7Rev=3 if Hopeb_1==6
replace Hope7Rev=2 if Hopeb_1==7
replace Hope7Rev=1 if Hopeb_1==8

gen Hope11Rev=8 if Hopeb_5==1
replace Hope11Rev=7 if Hopeb_5==2
replace Hope11Rev=6 if Hopeb_5==3
replace Hope11Rev=5 if Hopeb_5==4
replace Hope11Rev=4 if Hopeb_5==5
replace Hope11Rev=3 if Hopeb_5==6
replace Hope11Rev=2 if Hopeb_5==7
replace Hope11Rev=1 if Hopeb_5==8

gen Hope_Score=Hopea_1+Hopea_2+Hope3Rev+Hopea_4+Hope5Rev+Hopea_6+Hope7Rev+Hopeb_2+Hopeb_3+Hopeb_4+Hope11Rev+Hopeb_6

gen Agency_Score=Hopea_2+Hopeb_3+Hopeb_4+Hopeb_6

gen Pathway_Score=Hopea_1+Hopea_4+Hopea_6+Hopeb_2

order Family_Grows_Nothing, last

order Family_Grows_Cereals, last

order Family_Grows_Legumes, last

order Family_Grows_Oilseeds, last 

order Family_Grows_Fruits, last

order Family_Grows_Vegetables, last

order Family_Grows_Spices, last

order Family_Grows_Fish, last

order Family_Grows_Cows, last 

order Family_Grows_Sheep, last

order Family_Grows_Pigs, last 

order Family_Grows_Bees, last

order Family_Grows_Chicken, last

order Family_Grows_Flowers, last

order Family_Grows_Niche, last

order Demo_Wrk_Vegetables, last
order Demo_Wrk_Cereals, last
order Demo_Wrk_Legumes, last
order Demo_Wrk_Oilseeds, last
order Demo_Wrk_Spices, last
order Demo_Wrk_Fruits, last
order Demo_Wrk_Flowers, last
order Demo_Wrk_PackingStorage, last
order Demo_Wrk_ProtectedCult, last
order Demo_Wrk_Irrigation, last
order Demo_Wrk_GoatsSheep, last
order Demo_Wrk_Cows, last
order Demo_Wrk_Chickens, last
order Demo_Wrk_Fish, last
order Demo_Wrk_Bees, last
order Demo_Wrk_Niche, last

order Described_Plans, last

*cleaning elaborated and building variables

drop Demo_EducYrs Demo_Years_LIMITED Years_Education_String Educ_Order

drop Family_Grows_Elaborated Demo_Wrk_Elaborated Demo_Lrn_Elaborated Pl_Agri_Elaborated PlNeg_Other_Elaborated

drop Family_Grows_Other Plan_To_Agriculture Pl_Work_Family_Farm Pl_Start_Own_Farm Pl_Employed_Other_Farm Pl_Open_Own_AgBusiness Pl_Employed_Other_AgBusiness Pl_Employed_Gov_Ag Pl_Employed_AgExtension Pl_Continue_AgStudying Pl_Migrate_Agri Pl_Agri_Uncertain Pl_Agri_Other PlNeg_JoinFamBusiness PlNeg_StartOwnBusiness PlNeg_EmployedBusiness PlNeg_EmployedGov PlNeg_ContinueStudies PlNeg_Migrate PlNeg_Uncertain PlNeg_Other

drop Demo_Wrk_Other Demo_Lrn_Other

drop Continent

drop Training_Centro

drop BP_Necess_Success BP_Currently_Making BP_Plan_Collaborate

*generate Level 1 by end of Saturday Night
*in description point out how cereals are rare after program
gen Int_FieldCropGeneric=0
gen Int_SubVeggieGeneric=0
gen Int_SubCerealsGeneric=0
gen Int_FruitGeneric=0
gen Int_AnimalGeneric=0
gen Int_GardenGeneric=0
gen Int_SpecialtyGeneric=0
gen Int_CapitalGeneric=0
gen Int_NothingGeneric=0

gen Int_Tomatoes=0
gen Int_Onions=0
gen Int_Potatoes=0
gen Int_Okra=0
gen Int_Cauliflowers=0
gen Int_Cabbage=0
gen Int_Lettuce=0
gen Int_Peppers=0
gen Int_Eggplants=0
gen Int_Brocoli=0
gen Int_Cucumbers=0
gen Int_Cassava=0
gen Int_Carrots=0
gen Int_Wheat=0
gen Int_Corn=0
gen Int_Rice=0
gen Int_Lentils=0
gen Int_Sugar=0
gen Int_Beans=0
gen Int_Soy=0
gen Int_Avocado=0

gen Int_Grapes=0
gen Int_Mangos=0
gen Int_Pineapple=0
gen Int_Bananas=0
gen Int_Berries=0
gen Int_Passionfruit=0
gen Int_Dragonfruit=0
gen Int_Lychee=0
gen Int_Citrus=0
gen Int_Durian=0
gen Int_Melon=0
gen Int_Apples=0
gen Int_Plaintains=0
gen Int_Cocoa=0
gen Int_Coconut=0

gen Int_Pigs=0
gen Int_Cows=0
gen Int_Chickens=0
gen Int_Ducks=0
gen Int_Goats=0
gen Int_Sheep=0
gen Int_Rabbit=0

gen Int_Tobacco=0
gen Int_Herbs=0
gen Int_MarketGarden=0
gen Int_Ginger=0
gen Int_Garlic=0
gen Int_Tumeric=0
gen Int_OrnamentalPl=0
gen Int_PalmOil=0
gen Int_Sunflowers=0
gen Int_Chili=0
gen Int_Flowers=0

gen Int_Coffee=0
gen Int_Restaurant=0
gen Int_Wine=0
gen Int_FishSeafood=0
gen Int_Trees=0
gen Int_Mushrooms=0
gen Int_Snails=0
gen Int_Bees=0
gen Int_Agrotourism=0
gen Int_Hydroponics=0
gen Int_Seeds=0
gen Int_Kombucha=0
gen Int_Secondary=0

gen Int_SupplyStore=0
gen Int_Machinery=0
gen Int_Greenhouse=0
gen Int_Fertilizer=0
gen Int_Insecticides=0
gen Int_Storage=0
gen Int_Irrigation=0
gen Int_Chemicals=0

*Then have the direct manipulations and to do that, run do file up to this point

*Then have the grouping toward the next level
*Generate table data
*Then use that level to create our TWO TABLES with the stupid diagonal
*Likewise also generate the variables


replace Int_SubVeggieGeneric = . in 1
replace Int_SubCerealsGeneric = 1 in 1
replace Int_SubVeggieGeneric = 0 in 1
replace Int_FieldCropGeneric = 1 in 1
replace Int_Corn = 1 in 1
replace Int_FruitGeneric = 1 in 2
replace Int_SpecialtyGeneric = 1 in 2
replace Int_Cocoa = 1 in 2
replace Int_Snails = 1 in 2
replace Int_SubVeggieGeneric = 1 in 3
replace Int_FieldCropGeneric = 1 in 3
replace Int_AnimalGeneric = 1 in 4
replace Int_Cows = 1 in 4
replace Int_NothingGeneric = 1 in 5
replace Int_NothingGeneric = 1 in 6
replace Int_AnimalGeneric = 1 in 7
replace Int_Cows = 1 in 7
replace Int_FruitGeneric = 1 in 8
replace Int_Cocoa = 1 in 8
replace Int_AnimalGeneric = 1 in 9
replace Int_SpecialtyGeneric = 1 in 10
replace Int_Chemicals = 1 in 10
replace Int_CapitalGeneric = 1 in 10
replace Int_SpecialtyGeneric = 0 in 10
replace Int_SubVeggieGeneric = 1 in 11
replace Int_FieldCropGeneric = 1 in 11
replace Int_SubCerealsGeneric = 1 in 11
replace Int_Tomatoes = 1 in 11
replace Int_Eggplants = 1 in 11
replace Int_Corn = 1 in 11
replace Int_SubCerealsGeneric = 1 in 12
replace Int_FieldCropGeneric = 1 in 12
replace Int_Rice = 1 in 12
replace Int_AnimalGeneric = 1 in 13
replace Int_SubCerealsGeneric = 1 in 14
replace Int_FieldCropGeneric = 1 in 14
replace Int_Wheat = 1 in 14
replace Int_NothingGeneric = 1 in 15
replace Int_SubVeggieGeneric = 1 in 16
replace Int_FieldCropGeneric = 1 in 16
replace Int_Tomatoes = 1 in 16
replace Int_Onions = 1 in 16
replace Int_SubVeggieGeneric = 1 in 17
replace Int_FieldCropGeneric = 1 in 17
replace Int_CapitalGeneric = 1 in 17
replace Int_Tomatoes = 1 in 17
replace Int_Eggplants = 1 in 17
replace Int_Lettuce = 1 in 17
replace Int_Greenhouse = 1 in 17
replace Int_AnimalGeneric = 1 in 18
replace Int_Sheep = 1 in 18
replace Int_SubVeggieGeneric = 1 in 19
replace Int_FieldCropGeneric = 1 in 19
replace Int_SpecialtyGeneric = 1 in 19
replace Int_Tomatoes = 1 in 19
replace Int_Secondary = 1 in 19
replace Int_NothingGeneric = 1 in 20
replace Int_AnimalGeneric = 1 in 21
replace Int_Pigs = 1 in 21
replace Int_Chickens = 1 in 21
replace Int_AnimalGeneric = 1 in 22
replace Int_Pigs = 1 in 22
replace Int_SubVeggieGeneric = 1 in 23
replace Int_FieldCropGeneric = 1 in 23
replace Int_Tomatoes = 1 in 23
replace Int_NothingGeneric = 1 in 24
replace Int_FruitGeneric = 1 in 25
replace Int_Pineapple = 1 in 25
replace Int_SpecialtyGeneric = 1 in 25
replace Int_Wine = 1 in 25
replace Int_NothingGeneric = 1 in 26
replace Int_AnimalGeneric = 1 in 27
replace Int_Pigs = 1 in 27
replace Int_NothingGeneric = 1 in 28
replace Int_SubVeggieGeneric = 1 in 29
replace Int_FieldCropGeneric = 1 in 29
replace Int_Cabbage = 1 in 29
replace Int_Lettuce = 1 in 29
replace Int_Carrots = 1 in 29
replace Int_Eggplants = 1 in 29
replace Int_Cucumbers = 1 in 29
replace Int_SubVeggieGeneric = 1 in 30
replace Int_SubCerealsGeneric = 1 in 30
replace Int_FieldCropGeneric = 1 in 30
replace Int_Wheat = 1 in 30
replace Int_Tomatoes = 1 in 30
replace Int_Cucumbers = 1 in 30
replace Int_FruitGeneric = 1 in 31
replace Int_Mangos = 1 in 31
replace Int_AnimalGeneric = 1 in 32
replace Int_Pigs = 1 in 32
replace Int_Goats = 1 in 32
replace Int_Cows = 1 in 32
replace Int_NothingGeneric = 1 in 33
replace Int_GardenGeneric = 1 in 34
replace Int_SubVeggieGeneric = 1 in 34
replace Int_FieldCropGeneric = 1 in 34
replace Int_Cassava = 1 in 34
replace Int_NothingGeneric = 1 in 35
replace Int_CapitalGeneric = 1 in 36
replace Int_Fertilizer = 1 in 36
replace Int_NothingGeneric = 1 in 37
replace Int_SubCerealsGeneric = 1 in 38
replace Int_FieldCropGeneric = 1 in 38
replace Int_AnimalGeneric = 1 in 38
replace Int_SpecialtyGeneric = 1 in 38
replace Int_Rice = 1 in 38
replace Int_Goats = 1 in 38
replace Int_Restaurant = 1 in 38
replace Int_FishSeafood = 1 in 38
replace Int_FieldCropGeneric = 1 in 39
replace Int_SubVeggieGeneric = 1 in 39
replace Int_FruitGeneric = 1 in 39
replace Int_Cassava = 1 in 39
replace Int_Peppers = 1 in 39
replace Int_Tomatoes = 1 in 39
replace Int_Melon = 1 in 39
replace Int_AnimalGeneric = 1 in 40
replace Int_Cows = 1 in 40
replace Int_FruitGeneric = 1 in 41
replace Int_SubVeggieGeneric = 1 in 42
replace Int_FieldCropGeneric = 1 in 42
replace Int_SubVeggieGeneric = 1 in 43
replace Int_FieldCropGeneric = 1 in 43
replace Int_NothingGeneric = 1 in 44
replace Int_AnimalGeneric = 1 in 45
replace Int_SubVeggieGeneric = 1 in 45
replace Int_FieldCropGeneric = 1 in 45
replace Int_AnimalGeneric = 1 in 46
replace Int_Chickens = 1 in 46
replace Int_FruitGeneric = 1 in 47
replace Int_Citrus = 1 in 47
replace Int_AnimalGeneric = 1 in 48
replace Int_Pigs = 1 in 48
replace Int_SubCerealsGeneric = 1 in 49
replace Int_FieldCropGeneric = 1 in 49
replace Int_AnimalGeneric = 1 in 49
replace Int_Rice = 1 in 49
replace Int_Pigs = 1 in 49
replace Int_AnimalGeneric = 1 in 50
replace Int_FieldCropGeneric = 1 in 50
replace Int_SubVeggieGeneric = 1 in 50
replace Int_SubVeggieGeneric = 1 in 51
replace Int_FieldCropGeneric = 1 in 51
replace Int_SpecialtyGeneric = 1 in 51
replace Int_CapitalGeneric = 1 in 51
replace Int_Restaurant = 1 in 51
replace Int_Greenhouse = 1 in 51
replace Int_SubVeggieGeneric = 1 in 52
replace Int_FieldCropGeneric = 1 in 52
replace Int_FruitGeneric = 1 in 52
replace Int_AnimalGeneric = 1 in 53
replace Int_SpecialtyGeneric = 1 in 54
replace Int_SubVeggieGeneric = 1 in 54
replace Int_FieldCropGeneric = 1 in 54
replace Int_Tomatoes = 1 in 54
replace Int_Seeds = 1 in 54
replace Int_AnimalGeneric = 1 in 55
replace Int_Rabbit = 1 in 55
replace Int_Chickens = 1 in 55
replace Int_FruitGeneric = 1 in 56
replace Int_Avocado = 1 in 56
replace Int_SubVeggieGeneric = 1 in 57
replace Int_FieldCropGeneric = 1 in 57
replace Int_Tomatoes = 1 in 57
replace Int_SpecialtyGeneric = 1 in 58
replace Int_FruitGeneric = 1 in 58
replace Int_Cocoa = 1 in 58
replace Int_Coffee = 1 in 58
replace Int_FruitGeneric = 1 in 59
replace Int_Bananas = 1 in 59
replace Int_SubVeggieGeneric = 1 in 60
replace Int_FieldCropGeneric = 1 in 60
replace Int_AnimalGeneric = 1 in 60
replace Int_Pigs = 1 in 60
replace Int_Chickens = 1 in 60
replace Int_NothingGeneric = 1 in 61
replace Int_FruitGeneric = 1 in 62
replace Int_Greenhouse = 1 in 62
replace Int_CapitalGeneric = 1 in 62
replace Int_SubVeggieGeneric = 1 in 63
replace Int_FieldCropGeneric = 1 in 64
replace Int_FieldCropGeneric = 0 in 64
replace Int_FieldCropGeneric = 1 in 63
replace Int_SpecialtyGeneric = 1 in 63
replace Int_Mushrooms = 1 in 63
replace Int_CapitalGeneric = 1 in 64
replace Int_SupplyStore = 1 in 64
replace Int_AnimalGeneric = 1 in 65
replace Int_Sheep = 1 in 65
replace Int_Goats = 1 in 65
replace Int_SubCerealsGeneric = 1 in 66
replace Int_SubVeggieGeneric = 1 in 66
replace Int_FieldCropGeneric = 1 in 66
replace Int_SubCerealsGeneric = 1 in 67
replace Int_FieldCropGeneric = 1 in 67
replace Int_Tomatoes = 1 in 67
replace Int_SubVeggieGeneric = 1 in 67
replace Int_CapitalGeneric = 1 in 67
replace Int_Storage = 1 in 67
replace Int_AnimalGeneric = . in 68
replace Int_AnimalGeneric = 0 in 68
replace Int_SpecialtyGeneric = 1 in 68
replace Int_FishSeafood = 1 in 68
replace Int_Seeds = 1 in 68
replace Int_SubVeggieGeneric = 1 in 69
replace Int_FieldCropGeneric = 1 in 69
replace Int_GardenGeneric = 1 in 69
replace Int_CapitalGeneric = 1 in 69
replace Int_Tomatoes = 1 in 69
replace Int_Carrots = 1 in 69
replace Int_Chili = 1 in 69
replace Int_Greenhouse = 1 in 69
replace Int_SubVeggieGeneric = 1 in 70
replace Int_FieldCropGeneric = 1 in 70
replace Int_SpecialtyGeneric = 1 in 70
replace Int_Cabbage = 1 in 70
replace Int_GardenGeneric = 1 in 70
replace Int_Ginger = 1 in 70
replace Int_Bees = 1 in 70
replace Int_FruitGeneric = 1 in 71
replace Int_Berries = 1 in 71
replace Int_SubVeggieGeneric = 1 in 72
replace Int_FieldCropGeneric = 1 in 72
replace Int_Tomatoes = 1 in 72
replace Int_NothingGeneric = 1 in 73
replace Int_SubVeggieGeneric = 1 in 74
replace Int_FieldCropGeneric = 1 in 74
replace Int_Tomatoes = 1 in 74
replace Int_AnimalGeneric = 1 in 75
replace Int_Chickens = 1 in 75
replace Int_SubVeggieGeneric = 1 in 76
replace Int_FieldCropGeneric = 1 in 76
replace Int_Cabbage = 1 in 76
replace Int_AnimalGeneric = 1 in 77
replace Int_Chickens = 1 in 77
replace Int_NothingGeneric = 1 in 78
replace Int_FieldCropGeneric = 1 in 79
replace Int_SubVeggieGeneric = 1 in 79
replace Int_Tomatoes = 1 in 79
replace Int_Eggplants = 1 in 79
replace Int_Cucumbers = 1 in 79
replace Int_Peppers = 1 in 79
replace Int_SubVeggieGeneric = 1 in 80
replace Int_FieldCropGeneric = 1 in 80
replace Int_Okra = 1 in 80
replace Int_SpecialtyGeneric = 1 in 81
replace Int_CapitalGeneric = 1 in 81
replace Int_Restaurant = 1 in 81
replace Int_Coffee = 1 in 81
replace Int_Storage = 1 in 81
replace Int_SubCerealsGeneric = 1 in 82
replace Int_FieldCropGeneric = 1 in 82
replace Int_Rice = 1 in 82
replace Int_NothingGeneric = 1 in 83
replace Int_AnimalGeneric = 1 in 84
replace Int_SpecialtyGeneric = 1 in 84
replace Int_Pigs = 1 in 84
replace Int_Bees = 1 in 84
replace Int_FruitGeneric = 1 in 85
replace Int_AnimalGeneric = 1 in 85
replace Int_Cocoa = 1 in 85
replace Int_Chickens = 1 in 85
replace Int_AnimalGeneric = 1 in 86
replace Int_Chickens = 1 in 86
replace Int_SpecialtyGeneric = 1 in 87
replace Int_Bees = 1 in 87
replace Int_FishSeafood = 1 in 87
replace Int_GardenGeneric = 1 in 88
replace Int_SubVeggieGeneric = 1 in 88
replace Int_FieldCropGeneric = 1 in 88
replace Int_Tomatoes = 1 in 88
replace Int_SpecialtyGeneric = 1 in 88
replace Int_Peppers = 1 in 88
replace Int_Chili = 1 in 88
replace Int_Secondary = 1 in 88
replace Int_SubCerealsGeneric = 1 in 89
replace Int_FieldCropGeneric = 1 in 89
replace Int_GardenGeneric = 1 in 89
replace Int_Corn = 1 in 89
replace Int_MarketGarden = 1 in 89
replace Int_AnimalGeneric = 1 in 90
replace Int_Cows = 1 in 90
replace Int_AnimalGeneric = 1 in 91
replace Int_Chickens = 1 in 91
replace Int_NothingGeneric = 1 in 92
replace Int_NothingGeneric = 1 in 93
replace Int_SpecialtyGeneric = 1 in 94
replace Int_Restaurant = 1 in 94
replace Int_SubVeggieGeneric = 1 in 94
replace Int_FieldCropGeneric = 1 in 94
replace Int_AnimalGeneric = 1 in 94
replace Int_Chickens = 1 in 94
replace Int_FishSeafood = 1 in 94
replace Int_SpecialtyGeneric = 1 in 95
replace Int_Restaurant = 1 in 95
replace Int_NothingGeneric = 1 in 96
replace Int_SubVeggieGeneric = 1 in 97
replace Int_FieldCropGeneric = 1 in 97
replace Int_CapitalGeneric = 1 in 97
replace Int_SpecialtyGeneric = 1 in 97
replace Int_Seeds = 1 in 97
replace Int_Irrigation = 1 in 97
replace Int_AnimalGeneric = 1 in 98
replace Int_Chickens = 1 in 98
replace Int_SpecialtyGeneric = 1 in 99
replace Int_SupplyStore = 1 in 99
replace Int_SpecialtyGeneric = 0 in 99
replace Int_CapitalGeneric = 1 in 99
replace Int_GardenGeneric = 1 in 100
replace Int_Herbs = 1 in 100
replace Int_Flowers = 1 in 100
replace Int_NothingGeneric = 1 in 101
replace Int_FruitGeneric = 1 in 102
replace Int_SubVeggieGeneric = 1 in 102
replace Int_FieldCropGeneric = 1 in 102
replace Int_Eggplants = 1 in 102
replace Int_Pineapple = 1 in 102
replace Int_FruitGeneric = 1 in 103
replace Int_Bananas = 1 in 103
replace Int_AnimalGeneric = 1 in 104
replace Int_SubVeggieGeneric = 1 in 104
replace Int_FieldCropGeneric = 1 in 104
replace Int_SpecialtyGeneric = 1 in 104
replace Int_Agrotourism = 1 in 104
replace Int_Chickens = 1 in 104
replace Int_AnimalGeneric = 1 in 105
replace Int_Chickens = 1 in 105
replace Int_AnimalGeneric = 1 in 106
replace Int_SubCerealsGeneric = 1 in 106
replace Int_FieldCropGeneric = 1 in 106
replace Int_Pigs = 1 in 106
replace Int_Rice = 1 in 106
replace Int_SpecialtyGeneric = 1 in 107
replace Int_SpecialtyGeneric = 0 in 107
replace Int_CapitalGeneric = 1 in 107
replace Int_SupplyStore = 1 in 107
replace Int_AnimalGeneric = 1 in 108
replace Int_Chickens = 1 in 108
replace Int_AnimalGeneric = 1 in 109
replace Int_Chickens = 1 in 109
replace Int_Chickens = 0 in 109
replace Int_Cows = 1 in 109
replace Int_FruitGeneric = 1 in 110
replace Int_GardenGeneric = 1 in 110
replace Int_AnimalGeneric = 1 in 110
replace Int_Flowers = 1 in 110
replace Int_Cows = 1 in 110
replace Int_AnimalGeneric = 1 in 111
replace Int_Cows = 1 in 111
replace Int_SubVeggieGeneric = 1 in 112
replace Int_FieldCropGeneric = 1 in 112
replace Int_Lettuce = 1 in 112
replace Int_Hydroponics = 1 in 112
replace Int_Greenhouse = 1 in 112
replace Int_SpecialtyGeneric = 1 in 112
replace Int_CapitalGeneric = 1 in 112
replace Int_SubCerealsGeneric = 1 in 113
replace Int_FieldCropGeneric = 1 in 113
replace Int_AnimalGeneric = 1 in 113
replace Int_Pigs = 1 in 113
replace Int_Goats = 1 in 113
replace Int_Corn = 1 in 113
replace Int_SubVeggieGeneric = 1 in 114
replace Int_FieldCropGeneric = 1 in 114
replace Int_AnimalGeneric = 1 in 114
replace Int_Goats = 1 in 114
replace Int_Chickens = 1 in 114
replace Int_Pigs = 1 in 114
replace Int_AnimalGeneric = 1 in 115
replace Int_Chickens = 1 in 115
replace Int_FruitGeneric = 1 in 116
replace Int_Cocoa = 1 in 116
replace Int_AnimalGeneric = 1 in 117
replace Int_Cows = 1 in 117
replace Int_SubVeggieGeneric = 1 in 118
replace Int_FieldCropGeneric = 1 in 118
replace Int_SubCerealsGeneric = 1 in 118
replace Int_Tomatoes = 1 in 118
replace Int_Rice = 1 in 118
replace Int_Corn = 1 in 118
replace Int_AnimalGeneric = 1 in 119
replace Int_Chickens = 1 in 119
replace Int_Pigs = 1 in 119
replace Int_SubCerealsGeneric = 1 in 120
replace Int_FieldCropGeneric = 1 in 120
replace Int_Eggplants = 1 in 120
replace Int_Peppers = 1 in 120
replace Int_Cucumbers = 1 in 120
replace Int_Rice = 1 in 120
replace Int_SubVeggieGeneric = 1 in 120
replace Int_SubVeggieGeneric = 1 in 121
replace Int_FieldCropGeneric = 1 in 121
replace Int_SpecialtyGeneric = 1 in 121
replace Int_AnimalGeneric = 1 in 121
replace Int_Hydroponics = 1 in 121
replace Int_Chickens = 1 in 121
replace Int_Lettuce = 1 in 121
replace Int_SubVeggieGeneric = 1 in 122
replace Int_FieldCropGeneric = 1 in 122
replace Int_AnimalGeneric = 1 in 122
replace Int_Tomatoes = 1 in 122
replace Int_Onions = 1 in 122
replace Int_Chickens = 1 in 122
replace Int_FruitGeneric = 1 in 123
replace Int_Citrus = 1 in 123
replace Int_NothingGeneric = 1 in 124
replace Int_AnimalGeneric = 1 in 125
replace Int_Pigs = 1 in 125
replace Int_AnimalGeneric = 1 in 126
replace Int_Cows = 1 in 126
replace Int_SpecialtyGeneric = 1 in 127
replace Int_Tobacco = 1 in 127
replace Int_SpecialtyGeneric = 0 in 127
replace Int_GardenGeneric = 1 in 127
replace Int_SubVeggieGeneric = 1 in 128
replace Int_FieldCropGeneric = 1 in 128
replace Int_Tomatoes = 1 in 128
replace Int_Greenhouse = 1 in 128
replace Int_CapitalGeneric = 1 in 128
replace Int_NothingGeneric = 1 in 129
replace Int_AnimalGeneric = 1 in 130
replace Int_SubVeggieGeneric = 1 in 130
replace Int_FieldCropGeneric = 1 in 130
replace Int_Tomatoes = 1 in 130
replace Int_Peppers = 1 in 130
replace Int_SubVeggieGeneric = 1 in 131
replace Int_FieldCropGeneric = 1 in 131
replace Int_Potatoes = 1 in 131
replace Int_Onions = 1 in 131
replace Int_SubVeggieGeneric = 1 in 132
replace Int_FieldCropGeneric = 1 in 132
replace Int_SpecialtyGeneric = 1 in 132
replace Int_Restaurant = 1 in 132
replace Int_SubCerealsGeneric = 1 in 133
replace Int_FieldCropGeneric = 1 in 133
replace Int_AnimalGeneric = 1 in 133
replace Int_Rice = 1 in 133
replace Int_Corn = 1 in 133
replace Int_Pigs = 1 in 133
replace Int_SubCerealsGeneric = 1 in 134
replace Int_FieldCropGeneric = 1 in 134
replace Int_AnimalGeneric = 1 in 134
replace Int_Pigs = 1 in 134
replace Int_SubVeggieGeneric = 1 in 135
replace Int_FieldCropGeneric = 1 in 135
replace Int_AnimalGeneric = 1 in 135
replace Int_FruitGeneric = 1 in 136
replace Int_Dragonfruit = 1 in 136
replace Int_AnimalGeneric = 1 in 137
replace Int_Sheep = 1 in 137
replace Int_Goats = 1 in 137
replace Int_AnimalGeneric = 1 in 138
replace Int_Pigs = 1 in 138
replace Int_Chickens = 1 in 138
replace Int_SubVeggieGeneric = 1 in 139
replace Int_FieldCropGeneric = 1 in 139
replace Int_FruitGeneric = 1 in 139
replace Int_Tomatoes = 1 in 139
replace Int_Peppers = 1 in 139
replace Int_Melon = 1 in 139
replace Int_SubVeggieGeneric = 1 in 140
replace Int_FieldCropGeneric = 1 in 141
replace Int_FieldCropGeneric = 0 in 141
replace Int_FieldCropGeneric = 1 in 140
replace Int_SpecialtyGeneric = 1 in 140
replace Int_Hydroponics = 1 in 140
replace Int_NothingGeneric = 1 in 141
replace Int_AnimalGeneric = 1 in 142
replace Int_Pigs = 1 in 142
replace Int_Chickens = 1 in 142
replace Int_Cows = 1 in 142
replace Int_AnimalGeneric = 1 in 143
replace Int_CapitalGeneric = 1 in 143
replace Int_SupplyStore = 1 in 143
replace Int_NothingGeneric = 1 in 144
replace Int_SubVeggieGeneric = 1 in 145
replace Int_FieldCropGeneric = 1 in 145
replace Int_Tomatoes = 1 in 145
replace Int_Peppers = 1 in 145
replace Int_Eggplants = 1 in 145
replace Int_CapitalGeneric = 1 in 145
replace Int_Greenhouse = 1 in 145
replace Int_NothingGeneric = 1 in 146
replace Int_FieldCropGeneric = 1 in 147
replace Int_SubVeggieGeneric = 1 in 147
replace Int_Tomatoes = 1 in 147
replace Int_Onions = 1 in 147
replace Int_Peppers = 1 in 147
replace Int_CapitalGeneric = 1 in 147
replace Int_SupplyStore = 1 in 147
replace Int_Chemicals = 1 in 147
replace Int_SubCerealsGeneric = 1 in 148
replace Int_SubVeggieGeneric = 1 in 148
replace Int_FieldCropGeneric = 1 in 148
replace Int_Rice = 1 in 148
replace Int_FishSeafood = 1 in 148
replace Int_FieldCropGeneric = 1 in 149
replace Int_SubVeggieGeneric = 1 in 149
replace Int_Tomatoes = 1 in 149
replace Int_SubVeggieGeneric = 1 in 150
replace Int_FieldCropGeneric = 1 in 150
replace Int_AnimalGeneric = 1 in 151
replace Int_Chickens = 1 in 151
replace Int_AnimalGeneric = 1 in 152
replace Int_Cows = 1 in 152
replace Int_FruitGeneric = 1 in 153
replace Int_SpecialtyGeneric = 1 in 153
replace Int_Dragonfruit = 1 in 153
replace Int_Mushrooms = 1 in 153
replace Int_Wine = 1 in 153
replace Int_CapitalGeneric = 1 in 154
replace Int_Machinery = 1 in 154
replace Int_FieldCropGeneric = 1 in 155
replace Int_SubVeggieGeneric = 1 in 155
replace Int_Greenhouse = 1 in 155
replace Int_CapitalGeneric = 1 in 155
replace Int_SpecialtyGeneric = 1 in 156
replace Int_SubCerealsGeneric = 1 in 156
replace Int_FieldCropGeneric = 1 in 156
replace Int_Rice = 1 in 156
replace Int_FishSeafood = 1 in 156
replace Int_AnimalGeneric = 1 in 157
replace Int_SpecialtyGeneric = 1 in 157
replace Int_Chickens = 1 in 157
replace Int_Pigs = 1 in 157
replace Int_FishSeafood = 1 in 157
replace Int_AnimalGeneric = 1 in 158
replace Int_Pigs = 1 in 158
replace Int_Goats = 1 in 158
replace Int_AnimalGeneric = 1 in 159
replace Int_Goats = 1 in 159
replace Int_GardenGeneric = 1 in 160
replace Int_SubVeggieGeneric = 1 in 160
replace Int_FieldCropGeneric = 1 in 160
replace Int_Tomatoes = 1 in 160
replace Int_Peppers = 1 in 160
replace Int_Seeds = 1 in 160
replace Int_GardenGeneric = 0 in 160
replace Int_SpecialtyGeneric = 1 in 160
replace Int_FruitGeneric = 1 in 161
replace Int_Bananas = 1 in 161
replace Int_AnimalGeneric = 1 in 162
replace Int_SpecialtyGeneric = 1 in 162
replace Int_Pigs = 1 in 162
replace Int_Chickens = 1 in 162
replace Int_FishSeafood = 1 in 162
replace Int_SubCerealsGeneric = 1 in 163
replace Int_FieldCropGeneric = 1 in 163
replace Int_Rice = 1 in 163
replace Int_SubCerealsGeneric = 1 in 164
replace Int_FieldCropGeneric = 1 in 164
replace Int_Rice = 1 in 164
replace Int_FruitGeneric = 1 in 165
replace Int_Dragonfruit = 1 in 165
replace Int_SubVeggieGeneric = 1 in 166
replace Int_FieldCropGeneric = 1 in 166
replace Int_SubCerealsGeneric = 1 in 166
replace Int_Rice = 1 in 166
replace Int_CapitalGeneric = 1 in 166
replace Int_Machinery = 1 in 166
replace Int_SubVeggieGeneric = 1 in 167
replace Int_FieldCropGeneric = 1 in 167
replace Int_Onions = 1 in 167
replace Int_NothingGeneric = 1 in 168
replace Int_FieldCropGeneric = 1 in 169
replace Int_SubCerealsGeneric = 1 in 169
replace Int_Rice = 1 in 169
replace Int_Corn = 1 in 169
replace Int_SpecialtyGeneric = 1 in 169
replace Int_Seeds = 1 in 169
replace Int_FruitGeneric = 1 in 170
replace Int_FruitGeneric = 1 in 171
replace Int_Avocado = 1 in 171
replace Int_NothingGeneric = 1 in 172
replace Int_FieldCropGeneric = 1 in 173
replace Int_SubVeggieGeneric = 1 in 173
replace Int_CapitalGeneric = 1 in 173
replace Int_SupplyStore = 1 in 173
replace Int_Fertilizer = 1 in 173
replace Int_Tomatoes = 1 in 173
replace Int_Beans = 1 in 173
replace Int_SubVeggieGeneric = 1 in 174
replace Int_FieldCropGeneric = 1 in 174
replace Int_SubCerealsGeneric = 1 in 174
replace Int_FruitGeneric = 1 in 174
replace Int_CapitalGeneric = 1 in 174
replace Int_Irrigation = 1 in 174
replace Int_Tomatoes = 1 in 174
replace Int_Peppers = 1 in 174
replace Int_Bananas = 1 in 174
replace Int_SubCerealsGeneric = 1 in 175
replace Int_FieldCropGeneric = 1 in 175
replace Int_Corn = 1 in 175
replace Int_AnimalGeneric = 1 in 175
replace Int_Cows = 1 in 175
replace Int_SubVeggieGeneric = 1 in 176
replace Int_SubVeggieGeneric = 0 in 176
replace Int_SubCerealsGeneric = 1 in 176
replace Int_FieldCropGeneric = 1 in 176
replace Int_AnimalGeneric = 1 in 176
replace Int_Goats = 1 in 176
replace Int_Corn = 1 in 176
replace Int_AnimalGeneric = 1 in 177
replace Int_SpecialtyGeneric = 1 in 177
replace Int_Ducks = 1 in 177
replace Int_FishSeafood = 1 in 177
replace Int_Ducks = 1 in 108
replace Int_Chickens = 0 in 108
replace Int_AnimalGeneric = 1 in 178
replace Int_Pigs = 1 in 178
replace Int_AnimalGeneric = 1 in 179
replace Int_Chickens = 1 in 179
replace Int_CapitalGeneric = 1 in 180
replace Int_SupplyStore = 1 in 180
replace Int_FruitGeneric = 1 in 181
replace Int_AnimalGeneric = 1 in 181
replace Int_Pineapple = 1 in 181
replace Int_Pigs = 1 in 181
replace Int_Cocoa = 1 in 181
replace Int_Cocoa = 0 in 181
replace Int_Chickens = 1 in 181
replace Int_SubVeggieGeneric = 1 in 182
replace Int_FieldCropGeneric = 1 in 182
replace Int_Potatoes = 1 in 182
replace Int_FieldCropGeneric = 1 in 183
replace Int_SubVeggieGeneric = 1 in 183
replace Int_CapitalGeneric = 1 in 183
replace Int_Tomatoes = 1 in 183
replace Int_Peppers = 1 in 183
replace Int_Cucumbers = 1 in 183
replace Int_Greenhouse = 1 in 183
replace Int_CapitalGeneric = 1 in 184
replace Int_Fertilizer = 1 in 184
replace Int_CapitalGeneric = 1 in 185
replace Int_SupplyStore = 1 in 185
replace Int_SupplyStore = 1 in 184
replace Int_SubVeggieGeneric = 1 in 186
replace Int_FieldCropGeneric = 1 in 186
replace Int_SubVeggieGeneric = 0 in 186
replace Int_CapitalGeneric = 1 in 186
replace Int_Greenhouse = 1 in 186
replace Int_FruitGeneric = 1 in 187
replace Int_Durian = 1 in 187
replace Int_AnimalGeneric = 1 in 188
replace Int_Chickens = 1 in 188
replace Int_Cows = 1 in 188
replace Int_SubVeggieGeneric = 1 in 189
replace Int_FieldCropGeneric = 1 in 189
replace Int_Tomatoes = 1 in 189
replace Int_CapitalGeneric = 1 in 189
replace Int_Greenhouse = 1 in 189
replace Int_FruitGeneric = 1 in 190
replace Int_SubCerealsGeneric = 1 in 190
replace Int_FieldCropGeneric = 1 in 190
replace Int_Rice = 1 in 190
replace Int_Sugar = 1 in 189
replace Int_Sugar = 0 in 189
replace Int_Sugar = 1 in 190
replace Int_FieldCropGeneric = 1 in 191
replace Int_SubVeggieGeneric = 1 in 191
replace Int_Cucumbers = 1 in 191
replace Int_AnimalGeneric = 1 in 192
replace Int_Cows = 1 in 192
replace Int_SubVeggieGeneric = 1 in 193
replace Int_FieldCropGeneric = 1 in 193
replace Int_SpecialtyGeneric = 1 in 193
replace Int_Cucumbers = 1 in 193
replace Int_Mushrooms = 1 in 193
replace Int_FruitGeneric = 1 in 194
replace Int_Melon = 1 in 194
replace Int_NothingGeneric = 1 in 195
replace Int_AnimalGeneric = 1 in 196
replace Int_Pigs = 1 in 196
replace Int_SubVeggieGeneric = 1 in 197
replace Int_FieldCropGeneric = 1 in 197
replace Int_Tomatoes = 1 in 197
replace Int_Eggplants = 1 in 197
replace Int_CapitalGeneric = 1 in 197
replace Int_SupplyStore = 1 in 197
replace Int_Fertilizer = 1 in 197
replace Int_FieldCropGeneric = 1 in 198
replace Int_SubVeggieGeneric = 1 in 198
replace Int_GardenGeneric = 1 in 198
replace Int_CapitalGeneric = 1 in 199
replace Int_AnimalGeneric = 1 in 199
replace Int_SubVeggieGeneric = 1 in 199
replace Int_FieldCropGeneric = 1 in 199
replace Int_Peppers = 1 in 199
replace Int_Pigs = 1 in 199
replace Int_Irrigation = 1 in 199
replace Int_FieldCropGeneric = 1 in 200
replace Int_SubVeggieGeneric = 1 in 200
replace Int_SpecialtyGeneric = 1 in 200
replace Int_Restaurant = 1 in 200
replace Int_AnimalGeneric = 1 in 201
replace Int_FruitGeneric = 1 in 201
replace Int_GardenGeneric = 1 in 201
replace Int_PalmOil = 1 in 201
replace Int_Cocoa = 1 in 201
replace Int_Chickens = 1 in 201
replace Int_Goats = 1 in 201
replace Int_Sheep = 1 in 201
replace Int_FieldCropGeneric = 1 in 202
replace Int_SubVeggieGeneric = 1 in 202
replace Int_Tomatoes = 1 in 202
replace Int_AnimalGeneric = 1 in 203
replace Int_AnimalGeneric = 0 in 203
replace Int_SpecialtyGeneric = 1 in 203
replace Int_FishSeafood = 1 in 203
replace Int_SubVeggieGeneric = 1 in 204
replace Int_FieldCropGeneric = 1 in 204
replace Int_Potatoes = 1 in 204
replace Int_CapitalGeneric = 1 in 204
replace Int_Irrigation = 1 in 204
replace Int_AnimalGeneric = 1 in 205
replace Int_Cows = 1 in 205
replace Int_FruitGeneric = 1 in 206
replace Int_Avocado = 1 in 206
replace Int_SubVeggieGeneric = 1 in 207
replace Int_FieldCropGeneric = 1 in 207
replace Int_Tomatoes = 1 in 207
replace Int_CapitalGeneric = 1 in 207
replace Int_Greenhouse = 1 in 207
replace Int_GardenGeneric = 1 in 208
replace Int_MarketGarden = 1 in 208
replace Int_FieldCropGeneric = 1 in 209
replace Int_SubVeggieGeneric = 1 in 209
replace Int_Greenhouse = 1 in 209
replace Int_AnimalGeneric = 1 in 210
replace Int_Chickens = 1 in 210
replace Int_SubVeggieGeneric = 1 in 211
replace Int_FieldCropGeneric = 1 in 211
replace Int_Cucumbers = 1 in 211
replace Int_AnimalGeneric = 1 in 212
replace Int_Cows = 1 in 212
replace Int_Chickens = 1 in 212
replace Int_Goats = 1 in 212
replace Int_FruitGeneric = 1 in 213
replace Int_Avocado = 1 in 213
replace Int_FruitGeneric = 1 in 214
replace Int_Bananas = 1 in 214
replace Int_FruitGeneric = 1 in 215
replace Int_AnimalGeneric = 1 in 215
replace Int_Avocado = 1 in 215
replace Int_Sheep = 1 in 215
replace Int_Coconut = 1 in 215
replace Int_NothingGeneric = 1 in 216
replace Int_SubCerealsGeneric = 1 in 217
replace Int_FieldCropGeneric = 1 in 217
replace Int_Rice = 1 in 217
replace Int_SpecialtyGeneric = 1 in 217
replace Int_FishSeafood = 1 in 217
replace Int_FieldCropGeneric = 1 in 218
replace Int_SubVeggieGeneric = 1 in 218
replace Int_FieldCropGeneric = 1 in 219
replace Int_SubVeggieGeneric = 1 in 219
replace Int_AnimalGeneric = 1 in 219
replace Int_Chickens = 1 in 219
replace Int_NothingGeneric = 1 in 220
replace Int_FieldCropGeneric = 1 in 221
replace Int_SubVeggieGeneric = 1 in 221
replace Int_AnimalGeneric = 1 in 221
replace Int_Cows = 1 in 221
replace Int_Pigs = 1 in 221
replace Int_Chickens = 1 in 221
replace Int_Goats = 1 in 221
replace Int_AnimalGeneric = 1 in 222
replace Int_Ducks = 1 in 222
replace Int_SpecialtyGeneric = 1 in 223
replace Int_Mushrooms = 1 in 223
replace Int_GardenGeneric = 1 in 224
replace Int_Flowers = 1 in 224
replace Int_NothingGeneric = 1 in 225
replace Int_AnimalGeneric = 1 in 226
replace Int_Pigs = 1 in 226
replace Int_Chickens = 1 in 226
replace Int_SubCerealsGeneric = 1 in 227
replace Int_FieldCropGeneric = 1 in 227
replace Int_Corn = 1 in 227
replace Int_Corn = 0 in 227
replace Int_Rice = 1 in 227
replace Int_FieldCropGeneric = 1 in 228
replace Int_SubVeggieGeneric = 1 in 228
replace Int_SubCerealsGeneric = 1 in 229
replace Int_SubVeggieGeneric = 1 in 229
replace Int_FieldCropGeneric = 1 in 229
replace Int_SpecialtyGeneric = 1 in 229
replace Int_Rice = 1 in 229
replace Int_Seeds = 1 in 229
replace Int_GardenGeneric = 1 in 230
replace Int_Flowers = 1 in 230
replace Int_FruitGeneric = 1 in 231
replace Int_Coconut = 1 in 231
replace Int_SubCerealsGeneric = 1 in 232
replace Int_FieldCropGeneric = 1 in 232
replace Int_SubVeggieGeneric = 1 in 232
replace Int_Rice = 1 in 232
replace Int_AnimalGeneric = 1 in 233
replace Int_Chickens = 1 in 233
replace Int_Chickens = 0 in 233
replace Int_AnimalGeneric = 1 in 234
replace Int_Chickens = 1 in 234
replace Int_AnimalGeneric = 1 in 235
replace Int_Ducks = 1 in 235
replace Int_SpecialtyGeneric = 1 in 236
replace Int_FishSeafood = 1 in 236
replace Int_AnimalGeneric = 1 in 237
replace Int_Pigs = 1 in 237
replace Int_AnimalGeneric = 1 in 238
replace Int_Cows = 1 in 238
replace Int_FruitGeneric = 1 in 239
replace Int_AnimalGeneric = 1 in 239
replace Int_Chickens = 1 in 239
replace Int_Cocoa = 1 in 239
replace Int_SpecialtyGeneric = 1 in 240
replace Int_Mushrooms = 1 in 240
replace Int_SubCerealsGeneric = 1 in 241
replace Int_FieldCropGeneric = 1 in 241
replace Int_Rice = 1 in 241
replace Int_NothingGeneric = 1 in 242
replace Int_SpecialtyGeneric = 1 in 243
replace Int_Coffee = 1 in 243
replace Int_AnimalGeneric = 1 in 244
replace Int_Chickens = 1 in 244
replace Int_AnimalGeneric = 1 in 245
replace Int_Pigs = 1 in 245
replace Int_NothingGeneric = 1 in 246
replace Int_Tomatoes = 1 in 247
replace Int_SubVeggieGeneric = 1 in 248
replace Int_FieldCropGeneric = 1 in 248
replace Int_AnimalGeneric = 1 in 248
replace Int_Chickens = 1 in 248
replace Int_Cows = 1 in 248
replace Int_Cows = 0 in 248
replace Int_Pigs = 1 in 248
replace Int_Goats = 1 in 248
replace Int_AnimalGeneric = 1 in 249
replace Int_Pigs = 1 in 249
replace Int_SubCerealsGeneric = 1 in 250
replace Int_SubVeggieGeneric = 1 in 250
replace Int_FieldCropGeneric = 1 in 250
replace Int_AnimalGeneric = 1 in 250
replace Int_Rice = 1 in 250
replace Int_Pigs = 1 in 250
replace Int_AnimalGeneric = 1 in 251
replace Int_Chickens = 1 in 251
replace Int_AnimalGeneric = 1 in 252
replace Int_Chickens = 1 in 252
replace Int_Cows = 1 in 252
replace Int_FruitGeneric = 1 in 253
replace Int_SpecialtyGeneric = 1 in 253
replace Int_Flowers = 1 in 253
replace Int_Seeds = 1 in 253
replace Int_GardenGeneric = 1 in 253
replace Int_SubVeggieGeneric = 1 in 254
replace Int_FieldCropGeneric = 1 in 254
replace Int_Tomatoes = 1 in 254
replace Int_SubCerealsGeneric = 1 in 255
replace Int_FieldCropGeneric = 1 in 255
replace Int_Rice = 1 in 255
replace Int_AnimalGeneric = 1 in 256
replace Int_Cows = 1 in 256
replace Int_AnimalGeneric = 1 in 257
replace Int_GardenGeneric = 1 in 257
replace Int_Pigs = 1 in 257
replace Int_Chickens = 1 in 257
replace Int_Rabbit = 1 in 257
replace Int_MarketGarden = 1 in 257
replace Int_GardenGeneric = 1 in 258
replace Int_SpecialtyGeneric = 1 in 258
replace Int_Flowers = 1 in 258
replace Int_Mushrooms = 1 in 258
replace Int_AnimalGeneric = 1 in 259
replace Int_Chickens = 1 in 259
replace Int_NothingGeneric = 1 in 260
replace Int_SubVeggieGeneric = 1 in 261
replace Int_FieldCropGeneric = 1 in 261
replace Int_FruitGeneric = 1 in 262
replace Int_Mangos = 1 in 262
replace Int_GardenGeneric = 1 in 263
replace Int_SpecialtyGeneric = 1 in 263
replace Int_Agrotourism = 1 in 263
replace Int_Flowers = 1 in 263
replace Int_FruitGeneric = 1 in 264
replace Int_GardenGeneric = 1 in 264
replace Int_Cocoa = 1 in 264
replace Int_Flowers = 1 in 264
replace Int_SubVeggieGeneric = 1 in 265
replace Int_FieldCropGeneric = 1 in 265
replace Int_Tomatoes = 1 in 265
replace Int_Cabbage = 1 in 265
replace Int_NothingGeneric = 1 in 266
replace Int_FruitGeneric = 1 in 267
replace Int_Durian = 1 in 267
replace Int_AnimalGeneric = 1 in 268
replace Int_Cows = 1 in 268
replace Int_NothingGeneric = 1 in 269
replace Int_SubVeggieGeneric = 1 in 270
replace Int_FieldCropGeneric = 1 in 270
replace Int_SpecialtyGeneric = 1 in 270
replace Int_CapitalGeneric = 1 in 270
replace Int_Mushrooms = 1 in 270
replace Int_Greenhouse = 1 in 270
replace Int_AnimalGeneric = 1 in 271
replace Int_Cows = 1 in 271
replace Int_AnimalGeneric = 1 in 272
replace Int_Sheep = 1 in 272
replace Int_Goats = 1 in 272
replace Int_NothingGeneric = 1 in 273
replace Int_AnimalGeneric = 1 in 274
replace Int_SpecialtyGeneric = 1 in 275
replace Int_FishSeafood = 1 in 275
replace Int_SpecialtyGeneric = 1 in 276
replace Int_CapitalGeneric = 1 in 276
replace Int_Seeds = 1 in 276
replace Int_SupplyStore = 1 in 276
replace Int_AnimalGeneric = 1 in 277
replace Int_Goats = 1 in 277
replace Int_AnimalGeneric = 1 in 278
replace Int_FruitGeneric = 1 in 279
replace Int_Bananas = 1 in 279
replace Int_FieldCropGeneric = 1 in 280
replace Int_AnimalGeneric = 1 in 281
replace Int_Pigs = 1 in 281
replace Int_NothingGeneric = 1 in 282
replace Int_NothingGeneric = 1 in 283
replace Int_FieldCropGeneric = 1 in 284
replace Int_SubCerealsGeneric = 1 in 284
replace Int_AnimalGeneric = 1 in 285
replace Int_AnimalGeneric = 1 in 286
replace Int_Chickens = 1 in 286
replace Int_Restaurant = 1 in 286
replace Int_FruitGeneric = 1 in 287
replace Int_SubVeggieGeneric = 1 in 287
replace Int_FieldCropGeneric = 1 in 287
replace Int_AnimalGeneric = 1 in 287
replace Int_Cassava = 1 in 287
replace Int_Bananas = 1 in 287
replace Int_Plaintains = 1 in 287
replace Int_Bananas = 0 in 287
replace Int_Chickens = 1 in 287
replace Int_NothingGeneric = 1 in 288
replace Int_AnimalGeneric = 1 in 289
replace Int_Chickens = 1 in 289
replace Int_SubVeggieGeneric = 1 in 290
replace Int_FieldCropGeneric = 1 in 290
replace Int_FruitGeneric = 1 in 290
replace Int_AnimalGeneric = 1 in 290
replace Int_SpecialtyGeneric = 1 in 290
replace Int_Pigs = 1 in 290
replace Int_Chickens = 1 in 290
replace Int_Seeds = 1 in 290
replace Int_AnimalGeneric = 1 in 291
replace Int_Chickens = 1 in 291
replace Int_Pigs = 1 in 291
replace Int_AnimalGeneric = 1 in 292
replace Int_Pigs = 1 in 292
replace Int_Chickens = 1 in 292
replace Int_Goats = 1 in 292
replace Int_SubVeggieGeneric = 1 in 293
replace Int_FieldCropGeneric = 1 in 293
replace Int_Peppers = 1 in 293
replace Int_NothingGeneric = 1 in 294
replace Int_SubVeggieGeneric = 1 in 295
replace Int_FieldCropGeneric = 1 in 295
replace Int_AnimalGeneric = 1 in 295
replace Int_Chickens = 1 in 295
replace Int_SubVeggieGeneric = 1 in 296
replace Int_FieldCropGeneric = 1 in 296
replace Int_FruitGeneric = 1 in 297
replace Int_SubCerealsGeneric = 1 in 297
replace Int_FieldCropGeneric = 1 in 297
replace Int_AnimalGeneric = 1 in 297
replace Int_Pigs = 1 in 297
replace Int_Chickens = 1 in 297
replace Int_NothingGeneric = 1 in 298
replace Int_NothingGeneric = 1 in 299
replace Int_SubCerealsGeneric = 1 in 300
replace Int_FieldCropGeneric = 1 in 300
replace Int_AnimalGeneric = 1 in 300
replace Int_Corn = 1 in 300
replace Int_Chickens = 1 in 300
replace Int_AnimalGeneric = 1 in 301
replace Int_AnimalGeneric = 1 in 302
replace Int_Pigs = 1 in 302
replace Int_AnimalGeneric = 1 in 303
replace Int_FruitGeneric = 1 in 303
replace Int_SubVeggieGeneric = 1 in 303
replace Int_FieldCropGeneric = 1 in 303
replace Int_GardenGeneric = 1 in 303
replace Int_Apples = 1 in 303
replace Int_Cabbage = 1 in 303
replace Int_Eggplants = 1 in 303
replace Int_Chili = 1 in 303
replace Int_AnimalGeneric = 1 in 304
replace Int_CapitalGeneric = 1 in 304
replace Int_Pigs = 1 in 304
replace Int_Fertilizer = 1 in 304
replace Int_SubVeggieGeneric = 1 in 305
replace Int_FieldCropGeneric = 1 in 305
replace Int_SpecialtyGeneric = 1 in 305
replace Int_Tomatoes = 1 in 305
replace Int_Seeds = 1 in 305
replace Int_AnimalGeneric = 1 in 306
replace Int_Goats = 1 in 306
replace Int_SpecialtyGeneric = 1 in 307
replace Int_CapitalGeneric = 1 in 307
replace Int_SpecialtyGeneric = 0 in 307
replace Int_SupplyStore = 1 in 307
replace Int_AnimalGeneric = 1 in 308
replace Int_Cows = 1 in 308
replace Int_Pigs = 1 in 308
replace Int_Chickens = 1 in 308
replace Int_SubVeggieGeneric = 1 in 309
replace Int_FieldCropGeneric = 1 in 309
replace Int_SubVeggieGeneric = 0 in 309
replace Int_SubCerealsGeneric = 1 in 309
replace Int_Corn = 1 in 309
replace Int_SubCerealsGeneric = 1 in 310
replace Int_FieldCropGeneric = 1 in 310
replace Int_FruitGeneric = 1 in 310
replace Int_AnimalGeneric = 1 in 310
replace Int_Cows = 1 in 310
replace Int_AnimalGeneric = 1 in 311
replace Int_Chickens = 1 in 311
replace Int_Chickens = 0 in 311
replace Int_SubCerealsGeneric = 1 in 312
replace Int_FieldCropGeneric = 1 in 312
replace Int_Corn = 1 in 312
replace Int_Pigs = 1 in 312
replace Int_AnimalGeneric = 1 in 312
replace Int_SubVeggieGeneric = 1 in 313
replace Int_FieldCropGeneric = 1 in 313
replace Int_Beans = 1 in 313
replace Int_SubVeggieGeneric = 1 in 314
replace Int_FieldCropGeneric = 1 in 314
replace Int_AnimalGeneric = 1 in 314
replace Int_FruitGeneric = 1 in 314
replace Int_Tomatoes = 1 in 314
replace Int_Berries = 1 in 314
replace Int_Chickens = 1 in 314
replace Int_FruitGeneric = 1 in 315
replace Int_Coconut = 1 in 315
replace Int_AnimalGeneric = 1 in 316
replace Int_Cows = 1 in 316
replace Int_Sheep = 1 in 316
replace Int_SubVeggieGeneric = 1 in 317
replace Int_SubCerealsGeneric = 1 in 317
replace Int_FieldCropGeneric = 1 in 317
replace Int_Soy = 1 in 317
replace Int_Corn = 1 in 317
replace Int_Corn = 0 in 317
replace Int_Potatoes = 1 in 317
replace Int_SubVeggieGeneric = 1 in 318
replace Int_FruitGeneric = 1 in 318
replace Int_FieldCropGeneric = 1 in 318
replace Int_AnimalGeneric = 1 in 319
replace Int_SubVeggieGeneric = 1 in 320
replace Int_FieldCropGeneric = 1 in 320
replace Int_AnimalGeneric = 1 in 320
replace Int_SpecialtyGeneric = 1 in 320
replace Int_Brocoli = 1 in 320
replace Int_Chickens = 1 in 320
replace Int_Bees = 1 in 320
replace Int_SubVeggieGeneric = 1 in 321
replace Int_FieldCropGeneric = 1 in 321
replace Int_SubVeggieGeneric = 1 in 322
replace Int_FieldCropGeneric = 1 in 322
replace Int_GardenGeneric = 1 in 322
replace Int_AnimalGeneric = 1 in 322
replace Int_Chickens = 1 in 322
replace Int_Herbs = 1 in 322
replace Int_SubCerealsGeneric = 1 in 323
replace Int_FieldCropGeneric = 1 in 323
replace Int_Rice = 1 in 323
replace Int_SubCerealsGeneric = 1 in 324
replace Int_FieldCropGeneric = 1 in 324
replace Int_SubVeggieGeneric = 1 in 324
replace Int_Corn = 1 in 324
replace Int_Beans = 1 in 324
replace Int_AnimalGeneric = 1 in 325
replace Int_SubCerealsGeneric = 1 in 325
replace Int_FieldCropGeneric = 1 in 325
replace Int_Cows = 1 in 325
replace Int_Corn = 1 in 325
replace Int_SubVeggieGeneric = 1 in 326
replace Int_FieldCropGeneric = 1 in 326
replace Int_GardenGeneric = 1 in 326
replace Int_FruitGeneric = 1 in 326
replace Int_Cucumbers = 1 in 326
replace Int_Avocado = 1 in 326
replace Int_Chili = 1 in 326
replace Int_NothingGeneric = 1 in 327
replace Int_NothingGeneric = 1 in 328
replace Int_FruitGeneric = 1 in 329
replace Int_SubVeggieGeneric = 1 in 329
replace Int_FieldCropGeneric = 1 in 329
replace Int_Mangos = 1 in 329
replace Int_Avocado = 1 in 329
replace Int_Irrigation = 1 in 329
replace Int_CapitalGeneric = 1 in 329
replace Int_SubVeggieGeneric = 1 in 330
replace Int_FieldCropGeneric = 1 in 330
replace Int_AnimalGeneric = 1 in 331
replace Int_Pigs = 1 in 331
replace Int_SubCerealsGeneric = 1 in 332
replace Int_SubVeggieGeneric = 1 in 332
replace Int_FieldCropGeneric = 1 in 332
replace Int_AnimalGeneric = 1 in 332
replace Int_Pigs = 1 in 332
replace Int_Chickens = 1 in 332
replace Int_SubCerealsGeneric = 1 in 333
replace Int_FieldCropGeneric = 1 in 333
replace Int_AnimalGeneric = 1 in 333
replace Int_Corn = 1 in 333
replace Int_Pigs = 1 in 333
replace Int_FruitGeneric = 1 in 334
replace Int_Passionfruit = 1 in 334
replace Int_SpecialtyGeneric = 1 in 334
replace Int_Restaurant = 1 in 334
replace Int_SubVeggieGeneric = 1 in 335
replace Int_FieldCropGeneric = 1 in 335
replace Int_NothingGeneric = 1 in 336
replace Int_FruitGeneric = 1 in 337
replace Int_SubVeggieGeneric = 1 in 337
replace Int_FieldCropGeneric = 1 in 337
replace Int_SubVeggieGeneric = 1 in 338
replace Int_FieldCropGeneric = 1 in 338
replace Int_CapitalGeneric = 1 in 338
replace Int_Irrigation = 1 in 338
replace Int_SubVeggieGeneric = 1 in 339
replace Int_FieldCropGeneric = 1 in 339
replace Int_Tomatoes = 1 in 339
replace Int_NothingGeneric = 1 in 340
replace Int_NothingGeneric = 1 in 341
replace Int_AnimalGeneric = 1 in 342
replace Int_Cows = 1 in 342
replace Int_Chickens = 1 in 342
replace Int_SubVeggieGeneric = 1 in 343
replace Int_FieldCropGeneric = 1 in 343
replace Int_SpecialtyGeneric = 1 in 343
replace Int_GardenGeneric = 1 in 343
replace Int_Tomatoes = 1 in 343
replace Int_Flowers = 1 in 343
replace Int_Seeds = 1 in 343
replace Int_SubVeggieGeneric = 1 in 344
replace Int_SubCerealsGeneric = 1 in 344
replace Int_FieldCropGeneric = 1 in 344
replace Int_AnimalGeneric = 1 in 344
replace Int_Pigs = 1 in 344
replace Int_Cows = 1 in 344
replace Int_Chickens = 1 in 344
replace Int_Goats = 1 in 344
replace Int_NothingGeneric = 1 in 345
replace Int_NothingGeneric = 1 in 346
replace Int_FruitGeneric = 1 in 347
replace Int_Bananas = 1 in 347
replace Int_Avocado = 1 in 347
replace Int_AnimalGeneric = 1 in 348
replace Int_Cows = 1 in 348
replace Int_SubVeggieGeneric = 1 in 349
replace Int_FieldCropGeneric = 1 in 349
replace Int_FruitGeneric = 1 in 349
replace Int_Brocoli = 1 in 349
replace Int_Cucumbers = 1 in 349
replace Int_Bananas = 1 in 349
replace Int_AnimalGeneric = 1 in 350
replace Int_Chickens = 1 in 350
replace Int_GardenGeneric = 1 in 351
replace Int_PalmOil = 1 in 351
replace Int_NothingGeneric = 1 in 352
replace Int_AnimalGeneric = 1 in 353
replace Int_SubCerealsGeneric = 1 in 354
replace Int_FieldCropGeneric = 1 in 354
replace Int_CapitalGeneric = 1 in 354
replace Int_Rice = 1 in 354
replace Int_Fertilizer = 1 in 354
replace Int_SupplyStore = 1 in 354
replace Int_Insecticides = 1 in 354
replace Int_SubVeggieGeneric = 1 in 355
replace Int_FieldCropGeneric = 1 in 355
replace Int_FruitGeneric = 1 in 355
replace Int_Peppers = 1 in 355
replace Int_Mangos = 1 in 355
replace Int_AnimalGeneric = 1 in 356
replace Int_Cows = 1 in 356
replace Int_AnimalGeneric = 1 in 357
replace Int_Cows = 1 in 357
replace Int_Chickens = 1 in 357
replace Int_AnimalGeneric = 1 in 358
replace Int_FieldCropGeneric = 1 in 358
replace Int_SpecialtyGeneric = 1 in 359
replace Int_CapitalGeneric = 1 in 359
replace Int_FishSeafood = 1 in 359
replace Int_SupplyStore = 1 in 359
replace Int_FruitGeneric = 1 in 360
replace Int_Cocoa = 1 in 360
replace Int_AnimalGeneric = 1 in 361
replace Int_Chickens = 1 in 361
replace Int_SpecialtyGeneric = 1 in 362
replace Int_Mushrooms = 1 in 362
replace Int_SubVeggieGeneric = 1 in 363
replace Int_FieldCropGeneric = 1 in 363
replace Int_AnimalGeneric = 1 in 363
replace Int_Rice = 1 in 363
replace Int_Pigs = 1 in 363
replace Int_SpecialtyGeneric = 1 in 364
replace Int_FruitGeneric = 1 in 364
replace Int_Cocoa = 1 in 364
replace Int_Secondary = 1 in 364
replace Int_FieldCropGeneric = 1 in 365
replace Int_SubVeggieGeneric = 1 in 365
replace Int_FruitGeneric = 1 in 365
replace Int_SpecialtyGeneric = 1 in 365
replace Int_Eggplants = 1 in 365
replace Int_Peppers = 1 in 365
replace Int_Grapes = 1 in 365
replace Int_Seeds = 1 in 365
replace Int_SubVeggieGeneric = 1 in 366
replace Int_FieldCropGeneric = 1 in 366
replace Int_Trees = 1 in 366
replace Int_SpecialtyGeneric = 1 in 366
replace Int_SubVeggieGeneric = 1 in 367
replace Int_SubCerealsGeneric = 1 in 367
replace Int_FieldCropGeneric = 1 in 367
replace Int_AnimalGeneric = 1 in 367
replace Int_Corn = 1 in 367
replace Int_Chickens = 1 in 367
replace Int_Goats = 1 in 367
replace Int_NothingGeneric = 1 in 368
replace Int_AnimalGeneric = 1 in 369
replace Int_SpecialtyGeneric = 1 in 369
replace Int_Chickens = 1 in 369
replace Int_FishSeafood = 1 in 369
replace Int_AnimalGeneric = 1 in 370
replace Int_SubVeggieGeneric = 1 in 371
replace Int_FieldCropGeneric = 1 in 371
replace Int_AnimalGeneric = 1 in 371
replace Int_Goats = 1 in 371
replace Int_NothingGeneric = 1 in 372
replace Int_NothingGeneric = 1 in 373
replace Int_AnimalGeneric = 1 in 374
replace Int_Cows = 1 in 374
replace Int_FruitGeneric = 1 in 375
replace Int_AnimalGeneric = 1 in 375
replace Int_Bananas = 1 in 375
replace Int_Cows = 1 in 375
replace Int_Pigs = 1 in 375
replace Int_AnimalGeneric = 1 in 376
replace Int_Goats = 1 in 376
replace Int_Chickens = 1 in 376
replace Int_SubVeggieGeneric = 1 in 377
replace Int_FieldCropGeneric = 1 in 377
replace Int_AnimalGeneric = 1 in 377
replace Int_Pigs = 1 in 377
replace Int_Chickens = 1 in 377
replace Int_NothingGeneric = 1 in 378
replace Int_SubCerealsGeneric = 1 in 379
replace Int_FieldCropGeneric = 1 in 379
replace Int_Rice = 1 in 379
replace Int_Corn = 1 in 379
replace Int_SubVeggieGeneric = 1 in 380
replace Int_FieldCropGeneric = 1 in 380
replace Int_Eggplants = 1 in 380
replace Int_AnimalGeneric = 1 in 380
replace Int_Chickens = 1 in 380
replace Int_CapitalGeneric = 1 in 381
replace Int_SpecialtyGeneric = 1 in 381
replace Int_CapitalGeneric = 0 in 381
replace Int_FishSeafood = 1 in 381
replace Int_SubVeggieGeneric = 1 in 382
replace Int_SubVeggieGeneric = 0 in 382
replace Int_NothingGeneric = 1 in 382
replace Int_FruitGeneric = 1 in 383
replace Int_Avocado = 1 in 383
replace Int_SubVeggieGeneric = 1 in 384
replace Int_FieldCropGeneric = 1 in 384
replace Int_NothingGeneric = 1 in 385
replace Int_SubCerealsGeneric = 1 in 386
replace Int_FieldCropGeneric = 1 in 386
replace Int_FruitGeneric = 1 in 386
replace Int_Rice = 1 in 386
replace Int_Pineapple = 1 in 386
replace Int_FruitGeneric = 1 in 387
replace Int_Cocoa = 1 in 387
replace Int_SpecialtyGeneric = 1 in 387
replace Int_Secondary = 1 in 387
replace Int_NothingGeneric = 1 in 388
replace Int_AnimalGeneric = 1 in 389
replace Int_Chickens = 1 in 389
replace Int_SubCerealsGeneric = 1 in 390
replace Int_FieldCropGeneric = 1 in 390
replace Int_Rice = 1 in 390
replace Int_SupplyStore = 1 in 390
replace Int_CapitalGeneric = 1 in 390
replace Int_SubVeggieGeneric = 1 in 391
replace Int_FieldCropGeneric = 1 in 391
replace Int_AnimalGeneric = 1 in 391
replace Int_Pigs = 1 in 391
replace Int_Chickens = 1 in 391
replace Int_AnimalGeneric = 1 in 392
replace Int_SpecialtyGeneric = 1 in 393
replace Int_Agrotourism = 1 in 393
replace Int_FruitGeneric = 1 in 394
replace Int_SpecialtyGeneric = 1 in 394
replace Int_Secondary = 1 in 394
replace Int_NothingGeneric = 1 in 395
replace Int_SubVeggieGeneric = 1 in 396
replace Int_FieldCropGeneric = 1 in 396
replace Int_AnimalGeneric = 1 in 396
replace Int_Pigs = 1 in 396
replace Int_SubVeggieGeneric = 1 in 397
replace Int_FieldCropGeneric = 1 in 397
replace Int_FruitGeneric = 1 in 397
replace Int_Berries = 1 in 397
replace Int_SubCerealsGeneric = 1 in 398
replace Int_FieldCropGeneric = 1 in 398
replace Int_AnimalGeneric = 1 in 398
replace Int_Corn = 1 in 398
replace Int_Rice = 1 in 398
replace Int_Pigs = 1 in 398
replace Int_AnimalGeneric = 1 in 399
replace Int_Pigs = 1 in 399
replace Int_FieldCropGeneric = 1 in 400
replace Int_SubCerealsGeneric = 1 in 400
replace Int_SubVeggieGeneric = 1 in 400
replace Int_SpecialtyGeneric = 1 in 400
replace Int_CapitalGeneric = 1 in 400
replace Int_Rice = 1 in 400
replace Int_Trees = 1 in 400
replace Int_Trees = 0 in 400
replace Int_FishSeafood = 1 in 400
replace Int_Machinery = 1 in 400
replace Int_FieldCropGeneric = 1 in 401
replace Int_SubVeggieGeneric = 1 in 401
replace Int_Tomatoes = 1 in 401
replace Int_FieldCropGeneric = 1 in 402
replace Int_SubVeggieGeneric = 1 in 402
replace Int_FruitGeneric = 1 in 402
replace Int_AnimalGeneric = 1 in 403
replace Int_Chickens = 1 in 403
replace Int_Pigs = 1 in 403
replace Int_SubCerealsGeneric = 1 in 404
replace Int_FieldCropGeneric = 1 in 404
replace Int_SpecialtyGeneric = 1 in 404
replace Int_Rice = 1 in 404
replace Int_Seeds = 1 in 404
replace Int_CapitalGeneric = 1 in 405
replace Int_Machinery = 1 in 405
replace Int_AnimalGeneric = 1 in 406
replace Int_SpecialtyGeneric = 1 in 406
replace Int_Chickens = 1 in 406
replace Int_Mushrooms = 1 in 406
replace Int_NothingGeneric = 1 in 407
replace Int_NothingGeneric = 1 in 408
replace Int_SubVeggieGeneric = 1 in 409
replace Int_FieldCropGeneric = 1 in 409
replace Int_FruitGeneric = 1 in 409
replace Int_AnimalGeneric = 1 in 409
replace Int_SubVeggieGeneric = 1 in 410
replace Int_FieldCropGeneric = 1 in 410
replace Int_Tomatoes = 1 in 410
replace Int_Eggplants = 1 in 410
replace Int_CapitalGeneric = 1 in 410
replace Int_Irrigation = 1 in 410
replace Int_SubVeggieGeneric = 1 in 411
replace Int_FieldCropGeneric = 1 in 411
replace Int_AnimalGeneric = 1 in 411
replace Int_Chickens = 1 in 411
replace Int_AnimalGeneric = 1 in 412
replace Int_Pigs = 1 in 412
replace Int_SubVeggieGeneric = 1 in 413
replace Int_FieldCropGeneric = 1 in 413
replace Int_Tomatoes = 1 in 413
replace Int_SubVeggieGeneric = 1 in 414
replace Int_FieldCropGeneric = 1 in 414
replace Int_Tomatoes = 1 in 414
replace Int_AnimalGeneric = 1 in 415
replace Int_Chickens = 1 in 415
replace Int_Pigs = 1 in 415
replace Int_FieldCropGeneric = 1 in 416
replace Int_SubVeggieGeneric = 1 in 416
replace Int_FieldCropGeneric = 1 in 417
replace Int_SubVeggieGeneric = 1 in 417
replace Int_AnimalGeneric = 1 in 417
replace Int_SpecialtyGeneric = 1 in 417
replace Int_Cows = 1 in 417
replace Int_Mushrooms = 1 in 417
replace Int_AnimalGeneric = 1 in 418
replace Int_Pigs = 1 in 418
replace Int_NothingGeneric = 1 in 419
replace Int_SubCerealsGeneric = 1 in 420
replace Int_SubVeggieGeneric = 1 in 420
replace Int_FieldCropGeneric = 1 in 420
replace Int_Corn = 1 in 420
replace Int_SpecialtyGeneric = 1 in 421
replace Int_Mushrooms = 1 in 421
*Is it really fair to compare the two percentages? This group is wider.
replace Int_NothingGeneric = 1 in 422
replace Int_NothingGeneric = 1 in 423
replace Int_FieldCropGeneric = 1 in 424
replace Int_SubVeggieGeneric = 1 in 424
replace Int_GardenGeneric = 1 in 424
replace Int_Tomatoes = 1 in 424
replace Int_Chili = 1 in 424
replace Int_SpecialtyGeneric = 1 in 425
replace Int_CapitalGeneric = 1 in 425
replace Int_Seeds = 1 in 425
replace Int_SupplyStore = 1 in 425
replace Int_Fertilizer = 1 in 425
replace Int_Seeds = 0 in 425
replace Int_SpecialtyGeneric = 0 in 425
replace Int_FruitGeneric = 1 in 426
replace Int_Coconut = 1 in 426
replace Int_SubVeggieGeneric = 1 in 427
replace Int_FieldCropGeneric = 1 in 427
replace Int_AnimalGeneric = 1 in 427
replace Int_Tomatoes = 1 in 427
replace Int_Pigs = 1 in 427
replace Int_AnimalGeneric = 1 in 428
replace Int_Pigs = 1 in 428
replace Int_CapitalGeneric = 1 in 428
replace Int_SupplyStore = 1 in 428
replace Int_AnimalGeneric = 1 in 429
replace Int_Chickens = 1 in 429
replace Int_FruitGeneric = 1 in 430
replace Int_SubVeggieGeneric = 1 in 430
replace Int_FieldCropGeneric = 1 in 430
replace Int_Tomatoes = 1 in 430
replace Int_CapitalGeneric = 1 in 431
replace Int_SpecialtyGeneric = 1 in 431
replace Int_FishSeafood = 1 in 431
replace Int_FishSeafood = 0 in 431
replace Int_Seeds = 1 in 431
replace Int_SupplyStore = 1 in 431
replace Int_Fertilizer = 1 in 431
replace Int_FruitGeneric = 1 in 432
replace Int_AnimalGeneric = 1 in 432
replace Int_SpecialtyGeneric = 1 in 432
replace Int_Passionfruit = 1 in 432
replace Int_Chickens = 1 in 432
replace Int_Goats = 1 in 432
replace Int_Mushrooms = 1 in 432
replace Int_SpecialtyGeneric = 1 in 433
replace Int_SubVeggieGeneric = 1 in 433
replace Int_FieldCropGeneric = 1 in 433
replace Int_CapitalGeneric = 1 in 433
replace Int_Potatoes = 1 in 433
replace Int_Seeds = 1 in 433
replace Int_SupplyStore = 1 in 433
replace Int_FieldCropGeneric = 1 in 434
replace Int_SubVeggieGeneric = 1 in 434
replace Int_SubCerealsGeneric = 1 in 434
replace Int_Tomatoes = 1 in 434
replace Int_Corn = 1 in 434
replace Int_SubCerealsGeneric = 1 in 435
replace Int_FieldCropGeneric = 1 in 435
replace Int_AnimalGeneric = 1 in 435
replace Int_CapitalGeneric = 1 in 435
replace Int_Beans = 1 in 435
replace Int_Rice = 1 in 435
replace Int_Corn = 1 in 435
replace Int_Goats = 1 in 435
replace Int_Machinery = 1 in 435
replace Int_FieldCropGeneric = 1 in 436
replace Int_AnimalGeneric = 1 in 436
replace Int_AnimalGeneric = 1 in 437
replace Int_Chickens = 1 in 437
replace Int_GardenGeneric = 1 in 438
replace Int_Ginger = 1 in 438
replace Int_FieldCropGeneric = 1 in 439
replace Int_SubVeggieGeneric = 1 in 439
replace Int_SubCerealsGeneric = 1 in 439
replace Int_FruitGeneric = 1 in 439
replace Int_Tomatoes = 1 in 439
replace Int_Corn = 1 in 439
replace Int_Melon = 1 in 439
replace Int_NothingGeneric = 1 in 440
replace Int_NothingGeneric = 1 in 441
replace Int_SpecialtyGeneric = 1 in 442
replace Int_CapitalGeneric = 1 in 442
replace Int_Mushrooms = 1 in 442
replace Int_Fertilizer = 1 in 442
replace Int_AnimalGeneric = 1 in 443
replace Int_Chickens = 1 in 443
replace Int_NothingGeneric = 1 in 444
replace Int_NothingGeneric = 1 in 445
replace Int_FieldCropGeneric = 1 in 446
replace Int_SubVeggieGeneric = 1 in 446
replace Int_AnimalGeneric = 1 in 446
replace Int_Goats = 1 in 446
replace Int_FieldCropGeneric = 1 in 447
replace Int_SubVeggieGeneric = 1 in 447
replace Int_FieldCropGeneric = 1 in 448
replace Int_SubVeggieGeneric = 1 in 448
replace Int_Tomatoes = 1 in 448
replace Int_NothingGeneric = 1 in 449
replace Int_NothingGeneric = 1 in 450
replace Int_AnimalGeneric = 1 in 451
replace Int_Pigs = 1 in 451
replace Int_CapitalGeneric = 1 in 452
replace Int_SupplyStore = 1 in 452
replace Int_NothingGeneric = 1 in 453
replace Int_SpecialtyGeneric = 1 in 454
replace Int_Mushrooms = 1 in 454
replace Int_NothingGeneric = 1 in 455
replace Int_NothingGeneric = 1 in 456
replace Int_NothingGeneric = 1 in 457
replace Int_SubCerealsGeneric = 1 in 458
replace Int_FieldCropGeneric = 1 in 458
replace Int_Rice = 1 in 458
replace Int_AnimalGeneric = 1 in 459
replace Int_Cows = 1 in 459
replace Int_FieldCropGeneric = 1 in 460
replace Int_AnimalGeneric = 1 in 460
replace Int_Pigs = 1 in 460
replace Int_Cows = 1 in 460
replace Int_Chickens = 1 in 460
replace Int_FruitGeneric = 1 in 461
replace Int_FieldCropGeneric = 1 in 462
replace Int_SubVeggieGeneric = 1 in 462
replace Int_Eggplants = 1 in 462
replace Int_NothingGeneric = 1 in 463
replace Int_NothingGeneric = 1 in 464
replace Int_NothingGeneric = 1 in 465
replace Int_SubCerealsGeneric = 1 in 466
replace Int_FieldCropGeneric = 1 in 466
replace Int_Rice = 1 in 466
replace Int_SubCerealsGeneric = 1 in 467
replace Int_FieldCropGeneric = 1 in 467
replace Int_AnimalGeneric = 1 in 467
replace Int_Rice = 1 in 467
replace Int_Chickens = 1 in 467
replace Int_NothingGeneric = 1 in 468
replace Int_FieldCropGeneric = 1 in 469
replace Int_SubVeggieGeneric = 1 in 469
replace Int_FruitGeneric = 1 in 469
replace Int_Tomatoes = 1 in 469
replace Int_Eggplants = 1 in 469
replace Int_Melon = 1 in 469
replace Int_Hydroponics = 1 in 469
replace Int_Hydroponics = 0 in 469
replace Int_Agrotourism = 1 in 469
replace Int_SpecialtyGeneric = 1 in 469
replace Int_FieldCropGeneric = 1 in 470
replace Int_AnimalGeneric = 1 in 470
replace Int_Pigs = 1 in 470
replace Int_SubCerealsGeneric = 1 in 471
replace Int_FieldCropGeneric = 1 in 471
replace Int_AnimalGeneric = 1 in 471
replace Int_Rice = 1 in 471
replace Int_Chickens = 1 in 471
replace Int_FieldCropGeneric = 1 in 472
replace Int_SubCerealsGeneric = 1 in 472
replace Int_Rice = 1 in 472
replace Int_Corn = 1 in 472
replace Int_FieldCropGeneric = 1 in 473
replace Int_SubVeggieGeneric = 1 in 473
replace Int_CapitalGeneric = 1 in 475
replace Int_SupplyStore = 1 in 475
replace Int_FieldCropGeneric = 1 in 476
replace Int_SubVeggieGeneric = 1 in 476
replace Int_AnimalGeneric = 1 in 476
replace Int_Pigs = 1 in 476
replace Int_AnimalGeneric = 1 in 477
replace Int_Pigs = 1 in 477
replace Int_Chickens = 1 in 477
replace Int_SubVeggieGeneric = 1 in 478
replace Int_FieldCropGeneric = 1 in 478
replace Int_SpecialtyGeneric = 1 in 478
replace Int_FishSeafood = 1 in 478
replace Int_SpecialtyGeneric = 1 in 479
replace Int_CapitalGeneric = 1 in 479
replace Int_Seeds = 1 in 479
replace Int_SupplyStore = 1 in 479
replace Int_FieldCropGeneric = 1 in 480
replace Int_SubVeggieGeneric = 1 in 480
replace Int_SubCerealsGeneric = 1 in 480
replace Int_Tomatoes = 1 in 480
replace Int_Corn = 1 in 480
replace Int_SpecialtyGeneric = 1 in 481
replace Int_FruitGeneric = 1 in 481
replace Int_Bananas = 1 in 481
replace Int_Mushrooms = 1 in 481
replace Int_NothingGeneric = 1 in 482
replace Int_AnimalGeneric = 1 in 483
replace Int_Pigs = 1 in 483
replace Int_AnimalGeneric = 1 in 484
replace Int_CapitalGeneric = 1 in 484
replace Int_SupplyStore = 1 in 484
replace Int_CapitalGeneric = 1 in 485
replace Int_SupplyStore = 1 in 485
replace Int_AnimalGeneric = 1 in 486
replace Int_Pigs = 1 in 486
replace Int_Chickens = 1 in 486
replace Int_FruitGeneric = 1 in 487
replace Int_Cocoa = 1 in 487
replace Int_FruitGeneric = 1 in 488
replace Int_SpecialtyGeneric = 1 in 488
replace Int_Restaurant = 1 in 488
replace Int_NothingGeneric = 1 in 489
replace Int_NothingGeneric = 1 in 490
replace Int_AnimalGeneric = 1 in 491
replace Int_Chickens = 1 in 491
replace Int_SubCerealsGeneric = 1 in 492
replace Int_FieldCropGeneric = 1 in 492
replace Int_AnimalGeneric = 1 in 492
replace Int_SpecialtyGeneric = 1 in 492
replace Int_Rice = 1 in 492
replace Int_Chickens = 1 in 492
replace Int_FishSeafood = 1 in 492
replace Int_AnimalGeneric = 1 in 493
replace Int_Chickens = 1 in 493
replace Int_AnimalGeneric = 1 in 494
replace Int_Pigs = 1 in 494
replace Int_Chickens = 1 in 494
replace Int_NothingGeneric = 1 in 495
replace Int_AnimalGeneric = 1 in 496
replace Int_SpecialtyGeneric = 1 in 496
replace Int_Pigs = 1 in 496
replace Int_Chickens = 1 in 496
replace Int_Mushrooms = 1 in 496
replace Int_FieldCropGeneric = 1 in 497
replace Int_SubVeggieGeneric = 1 in 497
replace Int_CapitalGeneric = 1 in 497
replace Int_SupplyStore = 1 in 497
replace Int_Storage = 1 in 497
replace Int_FieldCropGeneric = 1 in 498
replace Int_SubVeggieGeneric = 1 in 498
replace Int_AnimalGeneric = 1 in 498
replace Int_Chickens = 1 in 498
replace Int_SubVeggieGeneric = 1 in 499
replace Int_FieldCropGeneric = 1 in 499
replace Int_Cucumbers = 1 in 499
replace Int_SubVeggieGeneric = 1 in 500
replace Int_SubVeggieGeneric = 0 in 500
replace Int_GardenGeneric = 1 in 500
replace Int_GardenGeneric = 0 in 500
replace Int_SubVeggieGeneric = 1 in 500
replace Int_FieldCropGeneric = 1 in 500
replace Int_NothingGeneric = 1 in 501
replace Int_FieldCropGeneric = 1 in 502
replace Int_SubVeggieGeneric = 1 in 502
replace Int_SubCerealsGeneric = 1 in 502
replace Int_SpecialtyGeneric = 1 in 502
replace Int_Corn = 1 in 502
replace Int_Seeds = 1 in 502
replace Int_NothingGeneric = 1 in 503
replace Int_AnimalGeneric = 1 in 504
replace Int_Pigs = 1 in 504
replace Int_FruitGeneric = 1 in 505
replace Int_CapitalGeneric = 1 in 505
replace Int_Cocoa = 1 in 505
replace Int_Machinery = 1 in 505
replace Int_FruitGeneric = 1 in 506
replace Int_AnimalGeneric = 1 in 506
replace Int_Passionfruit = 1 in 506
replace Int_Pigs = 1 in 506
replace Int_Rabbit = 1 in 506
replace Int_FruitGeneric = 1 in 507
replace Int_Cocoa = 1 in 507
replace Int_FieldCropGeneric = 1 in 508
replace Int_SubVeggieGeneric = 1 in 508
replace Int_SubCerealsGeneric = 1 in 508
replace Int_Cabbage = 1 in 508
replace Int_Lettuce = 1 in 508
replace Int_Carrots = 1 in 508
replace Int_Corn = 1 in 508
replace Int_SubVeggieGeneric = 1 in 509
replace Int_FieldCropGeneric = 1 in 509
replace Int_CapitalGeneric = 1 in 509
replace Int_Hydroponics = 1 in 509
replace Int_Greenhouse = 1 in 509
replace Int_SpecialtyGeneric = 1 in 509
replace Int_SpecialtyGeneric = 1 in 510
replace Int_FruitGeneric = 1 in 510
replace Int_AnimalGeneric = 1 in 510
replace Int_Cocoa = 1 in 510
replace Int_Chickens = 1 in 510
replace Int_Seeds = 1 in 510
replace Int_SubVeggieGeneric = 1 in 511
replace Int_FieldCropGeneric = 1 in 511
replace Int_FieldCropGeneric = 1 in 512
replace Int_SubVeggieGeneric = 1 in 512
replace Int_GardenGeneric = 1 in 512
replace Int_FieldCropGeneric = 1 in 513
replace Int_SubVeggieGeneric = 1 in 513
replace Int_GardenGeneric = 1 in 513
replace Int_SpecialtyGeneric = 1 in 513
replace Int_OrnamentalPl = 1 in 513
replace Int_Restaurant = 1 in 513
replace Int_SpecialtyGeneric = 1 in 514
replace Int_Mushrooms = 1 in 514
replace Int_NothingGeneric = 1 in 515
replace Int_AnimalGeneric = 1 in 516
replace Int_SubVeggieGeneric = 1 in 516
replace Int_FieldCropGeneric = 1 in 516
replace Int_SubCerealsGeneric = 1 in 516
replace Int_Corn = 1 in 516
replace Int_Cocoa = 1 in 516
replace Int_Goats = 1 in 516
replace Int_FruitGeneric = 1 in 516
replace Int_Beans = 1 in 516
replace Int_AnimalGeneric = 1 in 517
replace Int_Pigs = 1 in 517
replace Int_FieldCropGeneric = 1 in 518
replace Int_SubVeggieGeneric = 1 in 518
replace Int_AnimalGeneric = 1 in 518
replace Int_NothingGeneric = 1 in 519
replace Int_NothingGeneric = 1 in 520
replace Int_CapitalGeneric = 1 in 521
replace Int_SupplyStore = 1 in 521
replace Int_CapitalGeneric = 1 in 522
replace Int_SupplyStore = 1 in 522
replace Int_Fertilizer = 1 in 522
replace Int_GardenGeneric = 1 in 523
replace Int_Chili = 1 in 523
replace Int_GardenGeneric = 1 in 524
replace Int_Flowers = 1 in 524
replace Int_AnimalGeneric = 1 in 525
replace Int_SubVeggieGeneric = 1 in 526
replace Int_FieldCropGeneric = 1 in 526
replace Int_SpecialtyGeneric = 1 in 526
replace Int_GardenGeneric = 1 in 526
replace Int_SpecialtyGeneric = 0 in 526
replace Int_Tomatoes = 1 in 526
replace Int_PalmOil = 1 in 526
replace Int_SubCerealsGeneric = 1 in 527
replace Int_FieldCropGeneric = 1 in 527
replace Int_SubVeggieGeneric = 1 in 527
replace Int_Corn = 1 in 527
replace Int_Rice = 1 in 527
replace Int_Beans = 1 in 527
replace Int_NothingGeneric = 1 in 528
replace Int_Tomatoes = 1 in 529
replace Int_SubVeggieGeneric = 1 in 529
replace Int_FieldCropGeneric = 1 in 529
replace Int_SubCerealsGeneric = 1 in 530
replace Int_FieldCropGeneric = 1 in 530
replace Int_SpecialtyGeneric = 1 in 530
replace Int_Corn = 1 in 530
replace Int_SupplyStore = 1 in 530
replace Int_Secondary = 1 in 530
replace Int_SupplyStore = 0 in 530
replace Int_FruitGeneric = 1 in 531
replace Int_SpecialtyGeneric = 1 in 532
replace Int_Agrotourism = 1 in 532
replace Int_SpecialtyGeneric = 1 in 533
replace Int_Mushrooms = 1 in 533
replace Int_SpecialtyGeneric = 1 in 534
replace Int_AnimalGeneric = 1 in 534
replace Int_Ducks = 1 in 534
replace Int_Trees = 1 in 534
replace Int_FishSeafood = 1 in 534
replace Int_Trees = 0 in 534
replace Int_NothingGeneric = 1 in 535
replace Int_AnimalGeneric = 1 in 536
replace Int_Chickens = 1 in 536
replace Int_FruitGeneric = 1 in 537
replace Int_Citrus = 1 in 537
replace Int_NothingGeneric = 1 in 538
replace Int_NothingGeneric = 1 in 539
replace Int_FieldCropGeneric = 1 in 540
replace Int_SubVeggieGeneric = 1 in 540
replace Int_SpecialtyGeneric = 1 in 540
replace Int_GardenGeneric = 1 in 540
replace Int_Onions = 1 in 540
replace Int_AnimalGeneric = 1 in 540
replace Int_Cauliflowers = 1 in 540
replace Int_Chili = 1 in 540
replace Int_Mushrooms = 1 in 540
replace Int_Cows = 1 in 540
replace Int_FieldCropGeneric = 1 in 541
replace Int_SubVeggieGeneric = 1 in 541
replace Int_SubCerealsGeneric = 1 in 541
replace Int_FruitGeneric = 1 in 541
replace Int_Corn = 1 in 541
replace Int_Wheat = 1 in 541
replace Int_Beans = 1 in 541
replace Int_Mangos = 1 in 541
replace Int_Avocado = 1 in 541
replace Int_Bananas = 1 in 541
replace Int_FieldCropGeneric = 1 in 542
replace Int_SubVeggieGeneric = 1 in 542
replace Int_SubCerealsGeneric = 1 in 542
replace Int_Tomatoes = 1 in 542
replace Int_Peppers = 1 in 542
replace Int_Soy = 1 in 542
replace Int_SpecialtyGeneric = 1 in 543
replace Int_CapitalGeneric = 1 in 543
replace Int_Wine = 1 in 543
replace Int_Greenhouse = 1 in 543
replace Int_FieldCropGeneric = 1 in 544
replace Int_SubVeggieGeneric = 1 in 544
replace Int_AnimalGeneric = 1 in 544
replace Int_Chickens = 1 in 544
replace Int_SpecialtyGeneric = 1 in 545
replace Int_FruitGeneric = 1 in 545
replace Int_AnimalGeneric = 1 in 545
replace Int_Pigs = 1 in 545
replace Int_Coffee = 1 in 545
replace Int_FruitGeneric = 1 in 546
replace Int_SpecialtyGeneric = 1 in 546
replace Int_Cocoa = 1 in 546
replace Int_Restaurant = 1 in 546
replace Int_Coffee = 1 in 546
replace Int_Restaurant = 0 in 546
replace Int_AnimalGeneric = 1 in 547
replace Int_Chickens = 1 in 547
replace Int_SubVeggieGeneric = 1 in 548
replace Int_FieldCropGeneric = 1 in 548
replace Int_AnimalGeneric = 1 in 548
replace Int_Pigs = 1 in 548
replace Int_SpecialtyGeneric = 1 in 549
replace Int_Seeds = 1 in 549
replace Int_GardenGeneric = 1 in 550
replace Int_Ginger = 1 in 550
replace Int_Garlic = 1 in 550
replace Int_Tumeric = 1 in 550
replace Int_AnimalGeneric = 1 in 551
replace Int_Chickens = 1 in 551
replace Int_NothingGeneric = 1 in 552
replace Int_NothingGeneric = 1 in 553
replace Int_SpecialtyGeneric = 1 in 554
replace Int_Agrotourism = 1 in 554
replace Int_SpecialtyGeneric = 1 in 555
replace Int_FishSeafood = 1 in 555
replace Int_SubVeggieGeneric = 1 in 556
replace Int_FieldCropGeneric = 1 in 556
replace Int_SubCerealsGeneric = 1 in 557
replace Int_FieldCropGeneric = 1 in 557
replace Int_Rice = 1 in 557
replace Int_NothingGeneric = 1 in 558
replace Int_FieldCropGeneric = 1 in 559
replace Int_SubVeggieGeneric = 1 in 559
replace Int_FruitGeneric = 1 in 559
replace Int_SpecialtyGeneric = 1 in 559
replace Int_Tomatoes = 1 in 559
replace Int_Cabbage = 1 in 559
replace Int_Lettuce = 1 in 559
replace Int_Brocoli = 1 in 559
replace Int_Mushrooms = 1 in 559
replace Int_SpecialtyGeneric = 1 in 560
replace Int_CapitalGeneric = 1 in 560
replace Int_SubVeggieGeneric = 1 in 560
replace Int_FieldCropGeneric = 1 in 560
replace Int_Lettuce = 1 in 560
replace Int_Wine = 1 in 560
replace Int_Greenhouse = 1 in 560
replace Int_SubCerealsGeneric = 1 in 561
replace Int_FieldCropGeneric = 1 in 561
replace Int_Corn = 1 in 561
replace Int_AnimalGeneric = 1 in 562
replace Int_Cows = 1 in 562
replace Int_SpecialtyGeneric = 1 in 563
replace Int_Mushrooms = 1 in 563
replace Int_SupplyStore = 1 in 563
replace Int_Secondary = 1 in 563
replace Int_SupplyStore = 0 in 563
replace Int_FieldCropGeneric = 1 in 564
replace Int_SubVeggieGeneric = 1 in 564
replace Int_Tomatoes = 1 in 564
replace Int_FieldCropGeneric = 1 in 565
replace Int_SubVeggieGeneric = 1 in 565
replace Int_Tomatoes = 1 in 565
replace Int_SubCerealsGeneric = 1 in 566
replace Int_FieldCropGeneric = 1 in 566
replace Int_Rice = 1 in 566
replace Int_SubVeggieGeneric = 1 in 567
replace Int_FieldCropGeneric = 1 in 567
replace Int_Tomatoes = 1 in 567
replace Int_Onions = 1 in 567
replace Int_SpecialtyGeneric = 1 in 568
replace Int_CapitalGeneric = 1 in 568
replace Int_SupplyStore = 1 in 568
replace Int_Seeds = 1 in 568
replace Int_SubVeggieGeneric = 1 in 569
replace Int_FieldCropGeneric = 1 in 569
replace Int_Tomatoes = 1 in 569
replace Int_SubVeggieGeneric = 1 in 570
replace Int_FieldCropGeneric = 1 in 570
replace Int_Lettuce = 1 in 570
replace Int_SpecialtyGeneric = 1 in 570
replace Int_Hydroponics = 1 in 570
replace Int_FieldCropGeneric = 1 in 571
replace Int_AnimalGeneric = 1 in 571
replace Int_Chickens = 1 in 571
replace Int_CapitalGeneric = 1 in 572
replace Int_Machinery = 1 in 572
replace Int_FieldCropGeneric = 1 in 573
replace Int_SubVeggieGeneric = 1 in 573
replace Int_CapitalGeneric = 1 in 573
replace Int_Tomatoes = 1 in 573
replace Int_Okra = 1 in 573
replace Int_Peppers = 1 in 573
replace Int_Eggplants = 1 in 573
replace Int_Irrigation = 1 in 573
replace Int_FieldCropGeneric = 1 in 574
replace Int_SubVeggieGeneric = 1 in 574
replace Int_FruitGeneric = 1 in 574
replace Int_SpecialtyGeneric = 1 in 574
replace Int_Mangos = 1 in 574
replace Int_Pineapple = 1 in 574
replace Int_Bananas = 1 in 574
replace Int_Coffee = 1 in 574
replace Int_GardenGeneric = 1 in 574
replace Int_Potatoes = 1 in 574
replace Int_Peppers = 1 in 574
replace Int_Ginger = 1 in 574
replace Int_AnimalGeneric = 1 in 575
replace Int_SubCerealsGeneric = 1 in 575
replace Int_FieldCropGeneric = 1 in 575
replace Int_Corn = 1 in 575
replace Int_Goats = 1 in 575
replace Int_FieldCropGeneric = 1 in 576
replace Int_SubVeggieGeneric = 1 in 576
replace Int_GardenGeneric = 1 in 576
replace Int_Tomatoes = 1 in 576
replace Int_Chili = 1 in 576
replace Int_FieldCropGeneric = 1 in 577
replace Int_SubVeggieGeneric = 1 in 577
replace Int_FruitGeneric = 1 in 577
replace Int_Lettuce = 1 in 577
replace Int_Berries = 1 in 577
replace Int_Carrots = 1 in 577
replace Int_AnimalGeneric = 1 in 578
replace Int_Sheep = 1 in 578
replace Int_Goats = 1 in 578
replace Int_AnimalGeneric = 1 in 579
replace Int_Cows = 1 in 579
replace Int_Chickens = 1 in 579
replace Int_SubVeggieGeneric = 1 in 580
replace Int_FieldCropGeneric = 1 in 580
replace Int_AnimalGeneric = 1 in 580
replace Int_Pigs = 1 in 580
replace Int_FruitGeneric = 1 in 581
replace Int_AnimalGeneric = 1 in 582
replace Int_Pigs = 1 in 582
replace Int_SpecialtyGeneric = 1 in 583
replace Int_Wine = 1 in 583
replace Int_NothingGeneric = 1 in 584
replace Int_SubVeggieGeneric = 1 in 585
replace Int_FieldCropGeneric = 1 in 585
replace Int_SubVeggieGeneric = 0 in 585
replace Int_AnimalGeneric = 1 in 585
replace Int_CapitalGeneric = 1 in 586
replace Int_Fertilizer = 1 in 586
replace Int_SpecialtyGeneric = 1 in 587
replace Int_FishSeafood = 1 in 587
replace Int_NothingGeneric = 1 in 588
replace Int_AnimalGeneric = 1 in 589
replace Int_Chickens = 1 in 589
replace Int_FieldCropGeneric = 1 in 590
replace Int_SubVeggieGeneric = 1 in 590
replace Int_Tomatoes = 1 in 590
replace Int_SubVeggieGeneric = 1 in 591
replace Int_SubCerealsGeneric = 1 in 591
replace Int_FieldCropGeneric = 1 in 591
replace Int_Rice = 1 in 591
replace Int_FieldCropGeneric = 1 in 592
replace Int_SubVeggieGeneric = 1 in 592
replace Int_SubCerealsGeneric = 1 in 592
replace Int_Rice = 1 in 592
replace Int_Wheat = 1 in 592
replace Int_Wheat = 0 in 592
replace Int_Corn = 1 in 592
replace Int_SubVeggieGeneric = 0 in 592
replace Int_FieldCropGeneric = 1 in 593
replace Int_SubVeggieGeneric = 1 in 593
replace Int_AnimalGeneric = 1 in 593
replace Int_Goats = 1 in 593
replace Int_Cows = 1 in 593
replace Int_NothingGeneric = 1 in 594
replace Int_NothingGeneric = 1 in 595
replace Int_AnimalGeneric = 1 in 596
replace Int_Pigs = 1 in 596
replace Int_FieldCropGeneric = 1 in 597
replace Int_SubVeggieGeneric = 1 in 597
replace Int_Cucumbers = 1 in 597
replace Int_NothingGeneric = 1 in 598
replace Int_AnimalGeneric = 1 in 599
replace Int_Cows = 1 in 599
replace Int_FieldCropGeneric = 1 in 600
replace Int_SubVeggieGeneric = 1 in 600
replace Int_SpecialtyGeneric = 1 in 600
replace Int_FishSeafood = 1 in 600
replace Int_FieldCropGeneric = 1 in 601
replace Int_SubCerealsGeneric = 1 in 601
replace Int_SubVeggieGeneric = 1 in 601
replace Int_FruitGeneric = 1 in 601
replace Int_Corn = 1 in 601
replace Int_Melon = 1 in 601
replace Int_AnimalGeneric = 1 in 602
replace Int_CapitalGeneric = 1 in 602
replace Int_Pigs = 1 in 602
replace Int_Chemicals = 1 in 602
replace Int_NothingGeneric = 1 in 603
replace Int_SubCerealsGeneric = 1 in 604
replace Int_FieldCropGeneric = 1 in 604
replace Int_Rice = 1 in 604
replace Int_FruitGeneric = 1 in 605
replace Int_Grapes = 1 in 605
replace Int_AnimalGeneric = 1 in 606
replace Int_Pigs = 1 in 606
replace Int_Chickens = 1 in 606
replace Int_FieldCropGeneric = 1 in 607
replace Int_SubCerealsGeneric = 1 in 607
replace Int_Rice = 1 in 607
replace Int_SpecialtyGeneric = 1 in 608
replace Int_Seeds = 1 in 608
replace Int_NothingGeneric = 1 in 609
replace Int_AnimalGeneric = 1 in 610
replace Int_Chickens = 1 in 610
replace Int_NothingGeneric = 1 in 611
replace Int_FieldCropGeneric = 1 in 612
replace Int_SubVeggieGeneric = 1 in 612
replace Int_Tomatoes = 1 in 612
replace Int_Carrots = 1 in 612
replace Int_SubCerealsGeneric = 1 in 613
replace Int_FieldCropGeneric = 1 in 613
replace Int_Rice = 1 in 613
replace Int_NothingGeneric = 1 in 614
replace Int_SubCerealsGeneric = 1 in 615
replace Int_FieldCropGeneric = 1 in 615
replace Int_Rice = 1 in 615
replace Int_SubVeggieGeneric = 1 in 616
replace Int_FieldCropGeneric = 1 in 616
replace Int_SubVeggieGeneric = 0 in 616
replace Int_SubCerealsGeneric = 1 in 616
replace Int_Corn = 1 in 616
replace Int_NothingGeneric = 1 in 617
replace Int_SubVeggieGeneric = 1 in 618
replace Int_FieldCropGeneric = 1 in 618
replace Int_FieldCropGeneric = 1 in 619
replace Int_SubVeggieGeneric = 1 in 619
replace Int_SubCerealsGeneric = 1 in 619
replace Int_Rice = 1 in 619
replace Int_Chickens = 1 in 619
replace Int_AnimalGeneric = 1 in 619
replace Int_NothingGeneric = 1 in 620
replace Int_AnimalGeneric = 1 in 621
replace Int_Pigs = 1 in 621
replace Int_AnimalGeneric = 1 in 622
replace Int_Goats = 1 in 622
replace Int_AnimalGeneric = 1 in 623
replace Int_Chickens = 1 in 623
replace Int_SpecialtyGeneric = 1 in 624
replace Int_FieldCropGeneric = 1 in 625
replace Int_SubVeggieGeneric = 1 in 625
replace Int_Tomatoes = 1 in 625
replace Int_Brocoli = 1 in 625
replace Int_Eggplants = 1 in 625
replace Int_Brocoli = 0 in 625
replace Int_NothingGeneric = 1 in 626
replace Int_SpecialtyGeneric = 1 in 627
replace Int_Mushrooms = 1 in 627
replace Int_FieldCropGeneric = 1 in 628
replace Int_SubVeggieGeneric = 1 in 628
replace Int_FruitGeneric = 1 in 628
replace Int_AnimalGeneric = 1 in 628
replace Int_AnimalGeneric = 1 in 629
replace Int_Pigs = 1 in 629
replace Int_FieldCropGeneric = 1 in 630
replace Int_SubVeggieGeneric = 1 in 630
replace Int_AnimalGeneric = 1 in 630
replace Int_Goats = 1 in 630
replace Int_SpecialtyGeneric = 1 in 631
replace Int_FruitGeneric = 1 in 631
replace Int_Grapes = 1 in 631
replace Int_Wine = 1 in 631
replace Int_AnimalGeneric = 1 in 632
replace Int_Pigs = 1 in 632
replace Int_Pigs = 0 in 632
replace Int_Chickens = 1 in 632
replace Int_FieldCropGeneric = 1 in 633
replace Int_SubVeggieGeneric = 1 in 633
replace Int_NothingGeneric = 1 in 634
replace Int_AnimalGeneric = 1 in 635
replace Int_Rabbit = 1 in 635
replace Int_AnimalGeneric = 1 in 636
replace Int_CapitalGeneric = 1 in 636
replace Int_Cows = 1 in 636
replace Int_Fertilizer = 1 in 636
replace Int_SpecialtyGeneric = 1 in 637
replace Int_Coffee = 1 in 637
replace Int_FieldCropGeneric = 1 in 638
replace Int_AnimalGeneric = 1 in 638
replace Int_Pigs = 1 in 638
replace Int_Chickens = 1 in 638
replace Int_FieldCropGeneric = 1 in 639
replace Int_SubVeggieGeneric = 1 in 639
replace Int_GardenGeneric = 1 in 639
replace Int_SpecialtyGeneric = 1 in 639
replace Int_Onions = 1 in 639
replace Int_Tomatoes = 1 in 639
replace Int_Chili = 1 in 639
replace Int_Seeds = 1 in 639
replace Int_AnimalGeneric = 1 in 640
replace Int_FieldCropGeneric = 1 in 641
replace Int_SubVeggieGeneric = 1 in 641
replace Int_AnimalGeneric = 1 in 641
replace Int_Eggplants = 1 in 641
replace Int_SubVeggieGeneric = 1 in 642
replace Int_FieldCropGeneric = 1 in 642
replace Int_SubCerealsGeneric = 1 in 642
replace Int_Rice = 1 in 642
replace Int_NothingGeneric = 1 in 643
replace Int_AnimalGeneric = 1 in 644
replace Int_Cows = 1 in 644
replace Int_Sheep = 1 in 644
replace Int_FieldCropGeneric = 1 in 645
replace Int_SubVeggieGeneric = 1 in 645
replace Int_SpecialtyGeneric = 1 in 646
replace Int_Seeds = 1 in 646
replace Int_FieldCropGeneric = 1 in 647
replace Int_SubVeggieGeneric = 1 in 647
replace Int_CapitalGeneric = 1 in 647
replace Int_Tomatoes = 1 in 647
replace Int_Cucumbers = 1 in 647
replace Int_Greenhouse = 1 in 647
replace Int_NothingGeneric = 1 in 648
replace Int_NothingGeneric = 1 in 649
replace Int_FieldCropGeneric = 1 in 650
replace Int_SubVeggieGeneric = 1 in 650
replace Int_GardenGeneric = 1 in 650
replace Int_Peppers = 1 in 650
replace Int_Eggplants = 1 in 650
replace Int_Chili = 1 in 650
replace Int_FieldCropGeneric = 1 in 651
replace Int_SubVeggieGeneric = 1 in 651
replace Int_Restaurant = 1 in 651
replace Int_SpecialtyGeneric = 1 in 651
replace Int_SubVeggieGeneric = 1 in 652
replace Int_FieldCropGeneric = 1 in 652
replace Int_SubVeggieGeneric = 0 in 652
replace Int_AnimalGeneric = 1 in 652
replace Int_FruitGeneric = 1 in 652
replace Int_Grapes = 1 in 652
replace Int_AnimalGeneric = 1 in 653
replace Int_Pigs = 1 in 653
replace Int_NothingGeneric = 1 in 654
replace Int_AnimalGeneric = 1 in 655
replace Int_Cows = 1 in 655
replace Int_Chickens = 1 in 655
replace Int_FieldCropGeneric = 1 in 656
replace Int_SubVeggieGeneric = 1 in 656
replace Int_Tomatoes = 1 in 656
replace Int_Eggplants = 1 in 656
replace Int_AnimalGeneric = 1 in 657
replace Int_SubCerealsGeneric = 1 in 657
replace Int_FieldCropGeneric = 1 in 657
replace Int_Rice = 1 in 657
replace Int_Pigs = 1 in 657
replace Int_FieldCropGeneric = 1 in 658
replace Int_SubVeggieGeneric = 1 in 658
replace Int_GardenGeneric = 1 in 658
replace Int_SpecialtyGeneric = 1 in 658
replace Int_SpecialtyGeneric = 0 in 658
replace Int_CapitalGeneric = 1 in 658
replace Int_Hydroponics = 1 in 658
replace Int_Tomatoes = 1 in 658
replace Int_Eggplants = 1 in 658
replace Int_Cucumbers = 1 in 658
replace Int_Lettuce = 1 in 658
replace Int_Chili = 1 in 658
replace Int_SpecialtyGeneric = 1 in 659
replace Int_CapitalGeneric = 1 in 659
replace Int_FieldCropGeneric = 1 in 659
replace Int_SubVeggieGeneric = 1 in 659
replace Int_Lettuce = 1 in 659
replace Int_Greenhouse = 1 in 659
replace Int_FishSeafood = 1 in 659
replace Int_Tomatoes = 1 in 659
replace Int_Cucumbers = 1 in 659
replace Int_AnimalGeneric = 1 in 660
replace Int_Pigs = 1 in 660
replace Int_Chickens = 1 in 660
replace Int_AnimalGeneric = 1 in 661
replace Int_Chickens = 1 in 661
replace Int_Pigs = 1 in 661
replace Int_Cows = 1 in 661
replace Int_Goats = 1 in 661
replace Int_FieldCropGeneric = 1 in 662
replace Int_SubVeggieGeneric = 1 in 662
replace Int_AnimalGeneric = 1 in 662
replace Int_Chickens = 1 in 662
replace Int_FieldCropGeneric = 1 in 663
replace Int_SubVeggieGeneric = 1 in 663
replace Int_AnimalGeneric = 1 in 663
replace Int_CapitalGeneric = 1 in 663
replace Int_Hydroponics = 1 in 663
replace Int_Irrigation = 1 in 663
replace Int_Pigs = 1 in 663
replace Int_Chickens = 1 in 663
replace Int_Ducks = 1 in 663
replace Int_SubVeggieGeneric = 1 in 664
replace Int_FieldCropGeneric = 1 in 664
replace Int_FieldCropGeneric = 1 in 665
replace Int_CapitalGeneric = 1 in 665
replace Int_SupplyStore = 1 in 665
replace Int_SubCerealsGeneric = 1 in 666
replace Int_FieldCropGeneric = 1 in 666
replace Int_Corn = 1 in 666
replace Int_FruitGeneric = 1 in 667
replace Int_AnimalGeneric = 1 in 667
replace Int_SpecialtyGeneric = 1 in 667
replace Int_SubVeggieGeneric = 1 in 667
replace Int_FieldCropGeneric = 1 in 667
replace Int_Grapes = 1 in 667
replace Int_Chickens = 1 in 667
replace Int_Pigs = 1 in 667
replace Int_Ducks = 1 in 667
replace Int_Wine = 1 in 667
replace Int_FieldCropGeneric = 1 in 668
replace Int_SubVeggieGeneric = 1 in 668
replace Int_AnimalGeneric = 1 in 668
replace Int_SpecialtyGeneric = 1 in 668
replace Int_CapitalGeneric = 1 in 668
replace Int_SpecialtyGeneric = 0 in 668
replace Int_Hydroponics = 1 in 668
replace Int_SubCerealsGeneric = 1 in 669
replace Int_FieldCropGeneric = 1 in 669
replace Int_AnimalGeneric = 1 in 669
replace Int_Corn = 1 in 669
replace Int_Sugar = 1 in 669
replace Int_Chickens = 1 in 669
replace Int_AnimalGeneric = 1 in 670
replace Int_SpecialtyGeneric = 1 in 670
replace Int_CapitalGeneric = 1 in 670
replace Int_SupplyStore = 1 in 670
replace Int_Restaurant = 1 in 670
replace Int_Pigs = 1 in 670
replace Int_Cows = 1 in 670
replace Int_Chickens = 1 in 670
replace Int_Goats = 1 in 670
replace Int_Ducks = 1 in 670
replace Int_AnimalGeneric = 1 in 671
replace Int_Pigs = 1 in 671
replace Int_FieldCropGeneric = 1 in 672
replace Int_SubVeggieGeneric = 1 in 672
replace Int_FruitGeneric = 1 in 672
replace Int_FieldCropGeneric = 0 in 672
replace Int_SubVeggieGeneric = 0 in 672
replace Int_GardenGeneric = 1 in 672
replace Int_Coconut = 1 in 672
replace Int_Chili = 1 in 672
replace Int_AnimalGeneric = 1 in 673
replace Int_Chickens = 1 in 673
replace Int_SpecialtyGeneric = 1 in 674
replace Int_CapitalGeneric = 1 in 674
replace Int_SpecialtyGeneric = 0 in 674
replace Int_SpecialtyGeneric = 1 in 674
replace Int_SupplyStore = 1 in 674
replace Int_Restaurant = 1 in 674
replace Int_SubVeggieGeneric = 1 in 675
replace Int_FieldCropGeneric = 1 in 675
replace Int_Tomatoes = 1 in 675
replace Int_AnimalGeneric = 1 in 676
replace Int_Pigs = 1 in 676
replace Int_SubVeggieGeneric = 1 in 677
replace Int_FieldCropGeneric = 1 in 677
replace Int_GardenGeneric = 1 in 677
replace Int_FruitGeneric = 1 in 677
replace Int_Cassava = 1 in 677
replace Int_Avocado = 1 in 677
replace Int_Sunflowers = 1 in 677
replace Int_SubCerealsGeneric = 1 in 678
replace Int_FieldCropGeneric = 1 in 678
replace Int_Rice = 1 in 678
replace Int_CapitalGeneric = 1 in 679
replace Int_SubVeggieGeneric = 1 in 679
replace Int_FieldCropGeneric = 1 in 679
replace Int_Tomatoes = 1 in 679
replace Int_Greenhouse = 1 in 679
replace Int_FieldCropGeneric = 1 in 680
replace Int_SubVeggieGeneric = 1 in 680
replace Int_AnimalGeneric = 1 in 680
replace Int_Tomatoes = 1 in 680
replace Int_Eggplants = 1 in 680
replace Int_Peppers = 1 in 680
replace Int_Eggplants = 0 in 680
replace Int_Chickens = 1 in 680
replace Int_NothingGeneric = 1 in 681
replace Int_FieldCropGeneric = 1 in 682
replace Int_AnimalGeneric = 1 in 682
replace Int_Pigs = 1 in 682
replace Int_FieldCropGeneric = 1 in 683
replace Int_SubVeggieGeneric = 1 in 683
replace Int_GardenGeneric = 1 in 683
replace Int_Herbs = 1 in 683
replace Int_FieldCropGeneric = 1 in 684
replace Int_SubVeggieGeneric = 1 in 684
replace Int_Tomatoes = 1 in 684
replace Int_NothingGeneric = 1 in 685
replace Int_AnimalGeneric = 1 in 686
replace Int_Chickens = 1 in 686
replace Int_Cows = 1 in 686
replace Int_Chickens = 0 in 686
replace Int_AnimalGeneric = 1 in 687
replace Int_Cows = 1 in 687
replace Int_NothingGeneric = 1 in 688
replace Int_NothingGeneric = 1 in 689
replace Int_FieldCropGeneric = 1 in 690
replace Int_SubVeggieGeneric = 1 in 690
replace Int_Tomatoes = 1 in 690
replace Int_NothingGeneric = 1 in 691
replace Int_Chickens = 1 in 692
replace Int_Cows = 1 in 692
replace Int_Pigs = 1 in 692
replace Int_AnimalGeneric = 1 in 692
replace Int_SpecialtyGeneric = 1 in 692
replace Int_Restaurant = 1 in 692
replace Int_FieldCropGeneric = 1 in 693
replace Int_SubVeggieGeneric = 1 in 693
replace Int_CapitalGeneric = 1 in 693
replace Int_Greenhouse = 1 in 693
replace Int_GardenGeneric = 1 in 694
replace Int_CapitalGeneric = 1 in 694
replace Int_Herbs = 1 in 694
replace Int_Greenhouse = 1 in 694
replace Int_SubCerealsGeneric = 1 in 695
replace Int_FieldCropGeneric = 1 in 695
replace Int_Rice = 1 in 695
replace Int_NothingGeneric = 1 in 696
replace Int_NothingGeneric = 1 in 697
replace Int_NothingGeneric = 1 in 698
replace Int_AnimalGeneric = 1 in 699
replace Int_Pigs = 1 in 699
replace Int_Goats = 1 in 699
replace Int_AnimalGeneric = 1 in 700
replace Int_SubCerealsGeneric = 1 in 701
replace Int_SubVeggieGeneric = 1 in 701
replace Int_FieldCropGeneric = 1 in 701
replace Int_Beans = 1 in 701
replace Int_Rice = 1 in 701
replace Int_Wheat = 1 in 701
replace Int_SubCerealsGeneric = 1 in 702
replace Int_FieldCropGeneric = 1 in 702
replace Int_AnimalGeneric = 1 in 702
replace Int_Rice = 1 in 702
replace Int_Corn = 1 in 702
replace Int_Pigs = 1 in 702
replace Int_SpecialtyGeneric = 1 in 703
replace Int_FishSeafood = 1 in 703
replace Int_FieldCropGeneric = 1 in 704
replace Int_SubVeggieGeneric = 1 in 704
replace Int_FruitGeneric = 1 in 704
replace Int_Cocoa = 1 in 704
replace Int_SubVeggieGeneric = 1 in 705
replace Int_FieldCropGeneric = 1 in 705
replace Int_CapitalGeneric = 1 in 705
replace Int_Lettuce = 1 in 705
replace Int_Hydroponics = 1 in 705
replace Int_FieldCropGeneric = 1 in 706
replace Int_SubVeggieGeneric = 1 in 706
replace Int_AnimalGeneric = 1 in 706
replace Int_Chickens = 1 in 706
replace Int_FieldCropGeneric = 1 in 707
replace Int_SubVeggieGeneric = 1 in 707
replace Int_Cucumbers = 1 in 707
replace Int_FieldCropGeneric = 1 in 708
replace Int_SubVeggieGeneric = 1 in 708
replace Int_Tomatoes = 1 in 708
replace Int_AnimalGeneric = 1 in 709
replace Int_SpecialtyGeneric = 1 in 709
replace Int_CapitalGeneric = 1 in 709
replace Int_Pigs = 1 in 709
replace Int_SupplyStore = 1 in 709
replace Int_Restaurant = 1 in 709
replace Int_AnimalGeneric = 1 in 710
replace Int_Cows = 1 in 710
replace Int_GardenGeneric = 1 in 711
replace Int_AnimalGeneric = 1 in 711
replace Int_GardenGeneric = 0 in 711
replace Int_Cows = 1 in 711
replace Int_FieldCropGeneric = 1 in 712
replace Int_SubVeggieGeneric = 1 in 712
replace Int_CapitalGeneric = 1 in 712
replace Int_Hydroponics = 1 in 712
replace Int_FieldCropGeneric = 1 in 713
replace Int_SubVeggieGeneric = 1 in 713
replace Int_FruitGeneric = 1 in 713
replace Int_SubVeggieGeneric = 1 in 714
replace Int_FieldCropGeneric = 1 in 714
replace Int_Tomatoes = 1 in 714
replace Int_CapitalGeneric = 1 in 714
replace Int_Irrigation = 1 in 714
replace Int_Fertilizer = 1 in 714
replace Int_NothingGeneric = 1 in 715
replace Int_SubVeggieGeneric = 1 in 716
replace Int_FieldCropGeneric = 1 in 716
replace Int_SubCerealsGeneric = 1 in 716
replace Int_Rice = 1 in 716
replace Int_Goats = 1 in 716
replace Int_SpecialtyGeneric = 1 in 717
replace Int_CapitalGeneric = 1 in 717
replace Int_Restaurant = 1 in 717
replace Int_SupplyStore = 1 in 717
replace Int_FieldCropGeneric = 1 in 718
replace Int_SubVeggieGeneric = 1 in 718
replace Int_AnimalGeneric = 1 in 718
replace Int_CapitalGeneric = 1 in 718
replace Int_Chickens = 1 in 718
replace Int_Greenhouse = 1 in 718
replace Int_FruitGeneric = 1 in 719
replace Int_FieldCropGeneric = 1 in 719
replace Int_SubCerealsGeneric = 1 in 719
replace Int_Mangos = 1 in 719
replace Int_Sugar = 1 in 719
replace Int_SpecialtyGeneric = 1 in 719
replace Int_Secondary = 1 in 719
replace Int_SpecialtyGeneric = 1 in 720
replace Int_FruitGeneric = 1 in 720
replace Int_Grapes = 1 in 720
replace Int_Seeds = 1 in 720
replace Int_AnimalGeneric = 1 in 721
replace Int_Chickens = 1 in 721
replace Int_SubVeggieGeneric = 1 in 722
replace Int_FieldCropGeneric = 1 in 722
replace Int_SpecialtyGeneric = 1 in 722
replace Int_CapitalGeneric = 1 in 722
replace Int_Seeds = 1 in 722
replace Int_Irrigation = 1 in 722
replace Int_Grapes = 1 in 722
replace Int_Eggplants = 1 in 722
replace Int_AnimalGeneric = 1 in 723
replace Int_Chickens = 1 in 723
replace Int_AnimalGeneric = 1 in 724
replace Int_Cows = 1 in 724
replace Int_NothingGeneric = 1 in 725
replace Int_FruitGeneric = 1 in 726
replace Int_SubCerealsGeneric = 1 in 726
replace Int_FieldCropGeneric = 1 in 726
replace Int_SpecialtyGeneric = 1 in 726
replace Int_CapitalGeneric = 1 in 726
replace Int_CapitalGeneric = 0 in 726
replace Int_FishSeafood = 1 in 726
replace Int_Rice = 1 in 726
replace Int_CapitalGeneric = 1 in 727
replace Int_SpecialtyGeneric = 1 in 727
replace Int_Machinery = 1 in 727
replace Int_Restaurant = 1 in 727
replace Int_AnimalGeneric = 1 in 728
replace Int_Cows = 1 in 728
replace Int_SpecialtyGeneric = 0 in 727
replace Int_Restaurant = 0 in 727
replace Int_SubVeggieGeneric = 1 in 729
replace Int_FieldCropGeneric = 1 in 729
replace Int_AnimalGeneric = 1 in 729
replace Int_FieldCropGeneric = 1 in 730
replace Int_SubVeggieGeneric = 1 in 730
replace Int_AnimalGeneric = 1 in 730
replace Int_AnimalGeneric = 1 in 731
replace Int_AnimalGeneric = 1 in 732
replace Int_FieldCropGeneric = 1 in 731
replace Int_SubVeggieGeneric = 1 in 731
replace Int_Cows = 1 in 731
replace Int_Cows = 0 in 731
replace Int_Cows = 1 in 732
replace Int_NothingGeneric = 1 in 733
replace Int_SpecialtyGeneric = 1 in 734
replace Int_Mushrooms = 1 in 734
replace Int_FieldCropGeneric = 1 in 735
replace Int_SubVeggieGeneric = 1 in 735
replace Int_FieldCropGeneric = 1 in 736
replace Int_FieldCropGeneric = 0 in 736
replace Int_GardenGeneric = 1 in 736
replace Int_SubCerealsGeneric = 1 in 736
replace Int_FieldCropGeneric = 1 in 736
replace Int_Rice = 1 in 736
replace Int_NothingGeneric = 1 in 737
replace Int_FruitGeneric = 1 in 738
replace Int_AnimalGeneric = 1 in 738
replace Int_FieldCropGeneric = 1 in 738
replace Int_SubVeggieGeneric = 1 in 738
replace Int_Coconut = 1 in 738
replace Int_Chickens = 1 in 738
replace Int_SpecialtyGeneric = 1 in 739
replace Int_Coffee = 1 in 739
replace Int_FieldCropGeneric = 1 in 740
replace Int_SubVeggieGeneric = 1 in 740
replace Int_SubCerealsGeneric = 1 in 740
replace Int_FruitGeneric = 1 in 740
replace Int_AnimalGeneric = 1 in 741
replace Int_Chickens = 1 in 741
replace Int_SubCerealsGeneric = 1 in 742
replace Int_FieldCropGeneric = 1 in 742
replace Int_SpecialtyGeneric = 1 in 742
replace Int_Seeds = 1 in 742
replace Int_AnimalGeneric = 1 in 742
replace Int_Corn = 1 in 742
replace Int_Cows = 1 in 742
replace Int_FieldCropGeneric = 1 in 743
replace Int_SubVeggieGeneric = 1 in 743
replace Int_SpecialtyGeneric = 1 in 743
replace Int_Mushrooms = 1 in 743
replace Int_GardenGeneric = 1 in 744
replace Int_FieldCropGeneric = 1 in 744
replace Int_SubVeggieGeneric = 1 in 744
replace Int_Peppers = 1 in 744
replace Int_Peppers = 0 in 744
replace Int_Peppers = 1 in 744
replace Int_Chili = 1 in 744
replace Int_SpecialtyGeneric = 1 in 745
replace Int_Mushrooms = 1 in 745
replace Int_SubVeggieGeneric = 1 in 746
replace Int_FieldCropGeneric = 1 in 746
replace Int_FruitGeneric = 1 in 746
replace Int_Cabbage = 1 in 746
replace Int_Tomatoes = 1 in 746
replace Int_Passionfruit = 1 in 746
replace Int_SpecialtyGeneric = 1 in 747
replace Int_FieldCropGeneric = 1 in 747
replace Int_SubVeggieGeneric = 1 in 747
replace Int_AnimalGeneric = 1 in 747
replace Int_Cows = 1 in 747
replace Int_Pigs = 1 in 747
replace Int_Seeds = 1 in 747
replace Int_AnimalGeneric = 1 in 748
replace Int_Pigs = 1 in 748
replace Int_Cows = 1 in 748
replace Int_AnimalGeneric = 1 in 749
replace Int_Pigs = 1 in 749
replace Int_SubVeggieGeneric = 1 in 750
replace Int_FieldCropGeneric = 1 in 750
replace Int_GardenGeneric = 1 in 750
replace Int_CapitalGeneric = 1 in 750
replace Int_Tomatoes = 1 in 750
replace Int_Cabbage = 1 in 750
replace Int_Chili = 1 in 750
replace Int_Greenhouse = 1 in 750
replace Int_FruitGeneric = 1 in 751
replace Int_Melon = 1 in 751
replace Int_AnimalGeneric = 1 in 752
replace Int_Cows = 1 in 752
replace Int_FieldCropGeneric = 1 in 753
replace Int_SubVeggieGeneric = 1 in 753
replace Int_SubCerealsGeneric = 1 in 753
replace Int_SpecialtyGeneric = 1 in 753
replace Int_Soy = 1 in 753
replace Int_Beans = 1 in 753
replace Int_Soy = 0 in 753
replace Int_Corn = 1 in 753
replace Int_Seeds = 1 in 753
replace Int_FieldCropGeneric = 1 in 754
replace Int_SubVeggieGeneric = 1 in 754
replace Int_Tomatoes = 1 in 754
replace Int_Cucumbers = 1 in 754
replace Int_CapitalGeneric = 1 in 754
replace Int_Greenhouse = 1 in 754
replace Int_AnimalGeneric = 1 in 755
replace Int_Chickens = 1 in 755
replace Int_FieldCropGeneric = 1 in 756
replace Int_SubVeggieGeneric = 1 in 756
replace Int_Tomatoes = 1 in 756
replace Int_Peppers = 1 in 756
replace Int_AnimalGeneric = 1 in 757
replace Int_Chickens = 1 in 757
replace Int_NothingGeneric = 1 in 758
replace Int_FruitGeneric = 1 in 759
replace Int_SubVeggieGeneric = 1 in 759
replace Int_FieldCropGeneric = 1 in 759
replace Int_Avocado = 1 in 759
replace Int_NothingGeneric = 1 in 760
replace Int_AnimalGeneric = 1 in 761
replace Int_Pigs = 1 in 761
replace Int_NothingGeneric = 1 in 762
replace Int_FruitGeneric = 1 in 763
replace Int_Coconut = 1 in 763
replace Int_AnimalGeneric = 1 in 764
replace Int_Cows = 1 in 764
replace Int_NothingGeneric = 1 in 765
replace Int_AnimalGeneric = 1 in 766
replace Int_Pigs = 1 in 766
replace Int_AnimalGeneric = 1 in 767
replace Int_Pigs = 1 in 767
replace Int_AnimalGeneric = 1 in 768
replace Int_Pigs = 1 in 768
replace Int_NothingGeneric = 1 in 769
replace Int_AnimalGeneric = 1 in 770
replace Int_Pigs = 1 in 770
replace Int_FruitGeneric = 1 in 771
replace Int_Durian = 1 in 771
replace Int_NothingGeneric = 1 in 772
replace Int_NothingGeneric = 1 in 773
replace Int_NothingGeneric = 1 in 774
replace Int_AnimalGeneric = 1 in 775
replace Int_Pigs = 1 in 775
replace Int_FieldCropGeneric = 1 in 776
replace Int_SubVeggieGeneric = 1 in 776
replace Int_SubCerealsGeneric = 1 in 776
replace Int_Rice = 1 in 776
replace Int_FieldCropGeneric = 1 in 777
replace Int_SubVeggieGeneric = 1 in 777
replace Int_Cabbage = 1 in 777
replace Int_Lettuce = 1 in 777
replace Int_CapitalGeneric = 1 in 777
replace Int_Storage = 1 in 777
replace Int_FieldCropGeneric = 1 in 778
replace Int_SubVeggieGeneric = 1 in 778
replace Int_FruitGeneric = 1 in 778
replace Int_GardenGeneric = 1 in 778
replace Int_GardenGeneric = 0 in 778
replace Int_Tomatoes = 1 in 778
replace Int_Peppers = 1 in 778
replace Int_Cucumbers = 1 in 778
replace Int_Melon = 1 in 778
replace Int_CapitalGeneric = 1 in 779
replace Int_Machinery = 1 in 779
replace Int_Fertilizer = 1 in 779
replace Int_Insecticides = 1 in 779
replace Int_SubVeggieGeneric = 1 in 780
replace Int_FieldCropGeneric = 1 in 780
replace Int_Tomatoes = 1 in 780
replace Int_Onions = 1 in 780
replace Int_SubCerealsGeneric = 1 in 780
replace Int_Rice = 1 in 780
replace Int_AnimalGeneric = 1 in 781
replace Int_NothingGeneric = 1 in 782
replace Int_NothingGeneric = 1 in 783
replace Int_NothingGeneric = 1 in 784
replace Int_AnimalGeneric = 1 in 785
replace Int_SubVeggieGeneric = 1 in 785
replace Int_FieldCropGeneric = 1 in 785
replace Int_AnimalGeneric = 0 in 785
replace Int_SpecialtyGeneric = 1 in 785
replace Int_CapitalGeneric = 1 in 785
replace Int_FishSeafood = 1 in 785
replace Int_Hydroponics = 1 in 785
replace Int_FieldCropGeneric = 1 in 786
replace Int_SubVeggieGeneric = 1 in 786
replace Int_SubCerealsGeneric = 1 in 786
replace Int_Corn = 1 in 786
replace Int_Rice = 1 in 786
replace Int_SpecialtyGeneric = 1 in 787
replace Int_AnimalGeneric = 1 in 787
replace Int_Chickens = 1 in 787
replace Int_Hydroponics = 1 in 787
replace Int_FishSeafood = 1 in 787
replace Int_Hydroponics = 0 in 787
replace Int_AnimalGeneric = 1 in 788
replace Int_SubVeggieGeneric = 1 in 789
replace Int_FieldCropGeneric = 1 in 789
replace Int_FruitGeneric = 1 in 789
replace Int_SubCerealsGeneric = 1 in 789
replace Int_FruitGeneric = 0 in 789
replace Int_Rice = 1 in 789
replace Int_GardenGeneric = 1 in 790
replace Int_SpecialtyGeneric = 1 in 790
replace Int_Seeds = 1 in 790
replace Int_Flowers = 1 in 790
replace Int_SpecialtyGeneric = 1 in 791
replace Int_CapitalGeneric = 1 in 791
replace Int_SupplyStore = 1 in 791
replace Int_Hydroponics = 1 in 791
replace Int_SpecialtyGeneric = 0 in 791
replace Int_AnimalGeneric = 1 in 792
replace Int_Pigs = 1 in 792
replace Int_CapitalGeneric = 1 in 793
replace Int_Storage = 1 in 793
replace Int_NothingGeneric = 1 in 794
replace Int_NothingGeneric = 1 in 795
replace Int_SpecialtyGeneric = 1 in 796
replace Int_Tobacco = 1 in 796
replace Int_SubCerealsGeneric = 1 in 797
replace Int_FieldCropGeneric = 1 in 797
replace Int_SubVeggieGeneric = 1 in 797
replace Int_Rice = 1 in 797
replace Int_Eggplants = 1 in 797
replace Int_AnimalGeneric = 1 in 797
replace Int_Goats = 1 in 797
replace Int_SpecialtyGeneric = 1 in 797
replace Int_Secondary = 1 in 797
replace Int_GardenGeneric = 1 in 798
replace Int_SpecialtyGeneric = 1 in 798
replace Int_Herbs = 1 in 798
replace Int_Seeds = 1 in 798
replace Int_SubCerealsGeneric = 1 in 799
replace Int_FieldCropGeneric = 1 in 799
replace Int_SpecialtyGeneric = 1 in 799
replace Int_CapitalGeneric = 1 in 799
replace Int_Restaurant = 1 in 799
replace Int_Restaurant = 0 in 799
replace Int_SupplyStore = 1 in 799
replace Int_SpecialtyGeneric = 0 in 799
replace Int_Chemicals = 1 in 799
replace Int_FieldCropGeneric = 1 in 800
replace Int_SubVeggieGeneric = 1 in 800
replace Int_AnimalGeneric = 1 in 800
replace Int_CapitalGeneric = 1 in 800
replace Int_Tomatoes = 1 in 800
replace Int_Chickens = 1 in 800
replace Int_Greenhouse = 1 in 800
replace Int_SubVeggieGeneric = 1 in 801
replace Int_SubCerealsGeneric = 1 in 801
replace Int_SubVeggieGeneric = 0 in 801
replace Int_FieldCropGeneric = 1 in 801
replace Int_Rice = 1 in 801
replace Int_Corn = 1 in 801
replace Int_FruitGeneric = 1 in 802
replace Int_Citrus = 1 in 802
replace Int_SubVeggieGeneric = 1 in 803
replace Int_FieldCropGeneric = 1 in 803
replace Int_AnimalGeneric = 1 in 803
replace Int_Cows = 1 in 803
replace Int_Pigs = 1 in 803
replace Int_FruitGeneric = 1 in 804
replace Int_AnimalGeneric = 1 in 804
replace Int_Chickens = 1 in 804
replace Int_Mangos = 1 in 804
replace Int_Bananas = 1 in 804
replace Int_Coconut = 1 in 804
replace Int_AnimalGeneric = 1 in 805
replace Int_Pigs = 1 in 805
replace Int_Chickens = 1 in 805
replace Int_Goats = 1 in 805
replace Int_FieldCropGeneric = 1 in 806
replace Int_SubVeggieGeneric = 1 in 806
replace Int_CapitalGeneric = 1 in 806
replace Int_Tomatoes = 1 in 806
replace Int_Beans = 1 in 806
replace Int_Greenhouse = 1 in 806
replace Int_NothingGeneric = 1 in 807
replace Int_AnimalGeneric = 1 in 808
replace Int_AnimalGeneric = 1 in 809
replace Int_Pigs = 1 in 809
replace Int_SubVeggieGeneric = 1 in 810
replace Int_FieldCropGeneric = 1 in 810
replace Int_GardenGeneric = 1 in 811
replace Int_SpecialtyGeneric = 1 in 811
replace Int_OrnamentalPl = 1 in 811
replace Int_Seeds = 1 in 811
replace Int_SubVeggieGeneric = 1 in 812
replace Int_FieldCropGeneric = 1 in 812
replace Int_SubCerealsGeneric = 1 in 812
replace Int_Rice = 1 in 812
replace Int_SpecialtyGeneric = 1 in 813
replace Int_GardenGeneric = 1 in 813
replace Int_OrnamentalPl = 1 in 813
replace Int_FruitGeneric = 1 in 814
replace Int_Cocoa = 1 in 814
replace Int_AnimalGeneric = 1 in 815
replace Int_Ducks = 1 in 815
replace Int_AnimalGeneric = 1 in 816
replace Int_Pigs = 1 in 816
replace Int_NothingGeneric = 1 in 817
replace Int_SpecialtyGeneric = 1 in 818
replace Int_Coffee = 1 in 818
replace Int_Restaurant = 1 in 818
replace Int_Secondary = 1 in 818
replace Int_FruitGeneric = 1 in 819
replace Int_Bananas = 1 in 819
replace Int_FieldCropGeneric = 1 in 820
replace Int_SubVeggieGeneric = 1 in 820
replace Int_Cucumbers = 1 in 820
replace Int_Tomatoes = 1 in 820
replace Int_NothingGeneric = 1 in 821
replace Int_AnimalGeneric = 1 in 822
replace Int_Pigs = 1 in 822
replace Int_SpecialtyGeneric = 1 in 822
replace Int_CapitalGeneric = 1 in 822
replace Int_CapitalGeneric = 0 in 822
replace Int_Secondary = 1 in 822
replace Int_Restaurant = 1 in 822
replace Int_FieldCropGeneric = 1 in 823
replace Int_SubVeggieGeneric = 1 in 823
replace Int_SpecialtyGeneric = 1 in 823
replace Int_CapitalGeneric = 1 in 823
replace Int_Storage = 1 in 823
replace Int_Seeds = 1 in 823
replace Int_FieldCropGeneric = 1 in 824
replace Int_SubVeggieGeneric = 1 in 824
replace Int_SubCerealsGeneric = 1 in 824
replace Int_FruitGeneric = 1 in 824
replace Int_SubCerealsGeneric = 0 in 824
replace Int_SpecialtyGeneric = 1 in 824
replace Int_CapitalGeneric = 1 in 824
replace Int_Greenhouse = 1 in 824
replace Int_Seeds = 1 in 824
replace Int_Tomatoes = 1 in 824
replace Int_Peppers = 1 in 824
replace Int_Eggplants = 1 in 824
replace Int_Melon = 1 in 824
replace Int_FruitGeneric = 1 in 825
replace Int_FieldCropGeneric = 1 in 826
replace Int_SubVeggieGeneric = 1 in 826
replace Int_AnimalGeneric = 1 in 826
replace Int_AnimalGeneric = 1 in 827
replace Int_Chickens = 1 in 827
replace Int_AnimalGeneric = 1 in 828
replace Int_Cows = 1 in 828
replace Int_AnimalGeneric = 1 in 829
replace Int_Cows = 1 in 829
replace Int_SubVeggieGeneric = 1 in 830
replace Int_FieldCropGeneric = 1 in 830
replace Int_FruitGeneric = 1 in 830
replace Int_AnimalGeneric = 1 in 830
replace Int_Potatoes = 1 in 830
replace Int_Cows = 1 in 830
replace Int_FruitGeneric = 1 in 831
replace Int_SpecialtyGeneric = 1 in 831
replace Int_Coconut = 1 in 831
replace Int_Secondary = 1 in 831
replace Int_FieldCropGeneric = 1 in 832
replace Int_SubVeggieGeneric = 1 in 832
replace Int_GardenGeneric = 1 in 832
replace Int_Tomatoes = 1 in 832
replace Int_Chili = 1 in 832
replace Int_SubVeggieGeneric = 1 in 833
replace Int_FieldCropGeneric = 1 in 833
replace Int_AnimalGeneric = 1 in 834
replace Int_Chickens = 1 in 834
replace Int_FruitGeneric = 1 in 835
replace Int_SpecialtyGeneric = 1 in 835
replace Int_CapitalGeneric = 1 in 835
replace Int_Pineapple = 1 in 835
replace Int_Secondary = 1 in 835
replace Int_SupplyStore = 1 in 835
replace Int_Machinery = 1 in 835
replace Int_SupplyStore = 0 in 835
replace Int_FieldCropGeneric = 1 in 836
replace Int_SubVeggieGeneric = 1 in 836
replace Int_AnimalGeneric = 1 in 836
replace Int_Cows = 1 in 836
replace Int_Chickens = 1 in 836
replace Int_SubCerealsGeneric = 1 in 837
replace Int_FieldCropGeneric = 1 in 837
replace Int_Rice = 1 in 837
replace Int_Wheat = 1 in 837
replace Int_NothingGeneric = 1 in 838
replace Int_GardenGeneric = 1 in 839
replace Int_SpecialtyGeneric = 1 in 839
replace Int_Coffee = 1 in 839
replace Int_Restaurant = 1 in 839
replace Int_Flowers = 1 in 839
replace Int_FieldCropGeneric = 1 in 840
replace Int_SubVeggieGeneric = 1 in 840
replace Int_GardenGeneric = 1 in 840
replace Int_CapitalGeneric = 1 in 840
replace Int_Cabbage = 1 in 840
replace Int_Chili = 1 in 840
replace Int_Storage = 1 in 840
replace Int_FieldCropGeneric = 1 in 841
replace Int_SubVeggieGeneric = 1 in 841
replace Int_CapitalGeneric = 1 in 841
replace Int_Lettuce = 1 in 841
replace Int_Storage = 1 in 841
replace Int_FieldCropGeneric = 1 in 842
replace Int_SubVeggieGeneric = 1 in 842
replace Int_AnimalGeneric = 1 in 842
replace Int_Chickens = 1 in 842
replace Int_FruitGeneric = 1 in 843
replace Int_AnimalGeneric = 1 in 843
replace Int_Sheep = 1 in 843
replace Int_Goats = 1 in 843
replace Int_Sheep = 0 in 843
replace Int_Passionfruit = 1 in 843
replace Int_Chickens = 1 in 843
replace Int_NothingGeneric = 1 in 844
replace Int_FieldCropGeneric = 1 in 845
replace Int_SubVeggieGeneric = 1 in 845
replace Int_AnimalGeneric = 1 in 845
replace Int_Potatoes = 1 in 845
replace Int_Pigs = 1 in 845
replace Int_FruitGeneric = 1 in 846
replace Int_AnimalGeneric = 1 in 846
replace Int_Chickens = 1 in 846
replace Int_NothingGeneric = 1 in 847
replace Int_FruitGeneric = 1 in 848
replace Int_Bananas = 1 in 848
replace Int_AnimalGeneric = 1 in 849
replace Int_Cows = 1 in 849
replace Int_Chickens = 1 in 849
replace Int_FieldCropGeneric = 1 in 850
replace Int_SubVeggieGeneric = 1 in 850
replace Int_CapitalGeneric = 1 in 850
replace Int_Chemicals = 1 in 850
replace Int_FieldCropGeneric = 1 in 851
replace Int_SubVeggieGeneric = 1 in 851
replace Int_FieldCropGeneric = 1 in 852
replace Int_SubCerealsGeneric = 1 in 852
replace Int_CapitalGeneric = 1 in 852
replace Int_Corn = 1 in 852
replace Int_Storage = 1 in 852
replace Int_NothingGeneric = 1 in 853
replace Int_AnimalGeneric = 1 in 854
replace Int_Cows = 1 in 854
replace Int_FieldCropGeneric = 1 in 855
replace Int_SubVeggieGeneric = 1 in 855
replace Int_AnimalGeneric = 1 in 855
replace Int_Tomatoes = 1 in 855
replace Int_Pigs = 1 in 855
replace Int_SpecialtyGeneric = 1 in 856
replace Int_FieldCropGeneric = 1 in 856
replace Int_Mushrooms = 1 in 856
replace Int_AnimalGeneric = 1 in 857
replace Int_SpecialtyGeneric = 1 in 857
replace Int_Pigs = 1 in 857
replace Int_Seeds = 1 in 857
replace Int_FieldCropGeneric = 1 in 857
replace Int_SubVeggieGeneric = 1 in 857
replace Int_Tomatoes = 1 in 857
replace Int_Peppers = 1 in 857
replace Int_AnimalGeneric = 1 in 858
replace Int_Cows = 1 in 858
replace Int_SpecialtyGeneric = 1 in 859
replace Int_CapitalGeneric = 1 in 859
replace Int_Mushrooms = 1 in 859
replace Int_Storage = 1 in 859
replace Int_AnimalGeneric = 1 in 860
replace Int_SubVeggieGeneric = 1 in 860
replace Int_FieldCropGeneric = 1 in 860
replace Int_FieldCropGeneric = 1 in 861
replace Int_SubVeggieGeneric = 1 in 861
replace Int_Tomatoes = 1 in 861
replace Int_Eggplants = 1 in 861
replace Int_Peppers = 1 in 861
replace Int_SubVeggieGeneric = 1 in 862
replace Int_FieldCropGeneric = 1 in 862
replace Int_AnimalGeneric = 1 in 862
replace Int_NothingGeneric = 1 in 863
replace Int_AnimalGeneric = 1 in 864
replace Int_Chickens = 1 in 864
replace Int_CapitalGeneric = 1 in 864
replace Int_Machinery = 1 in 864
replace Int_FruitGeneric = 1 in 865
replace Int_Passionfruit = 1 in 865
replace Int_FieldCropGeneric = 1 in 866
replace Int_SubVeggieGeneric = 1 in 866
replace Int_AnimalGeneric = 1 in 866
replace Int_Chickens = 1 in 866
replace Int_AnimalGeneric = 1 in 867
replace Int_Chickens = 1 in 867
replace Int_FieldCropGeneric = 1 in 868
replace Int_SubVeggieGeneric = 1 in 868
replace Int_FieldCropGeneric = 1 in 869
replace Int_SubVeggieGeneric = 1 in 869
replace Int_SubCerealsGeneric = 1 in 869
replace Int_Pigs = 1 in 869
replace Int_SpecialtyGeneric = 1 in 870
replace Int_SubVeggieGeneric = 1 in 870
replace Int_FieldCropGeneric = 1 in 870
replace Int_Tomatoes = 1 in 870
replace Int_Secondary = 1 in 870
replace Int_AnimalGeneric = 1 in 871
replace Int_Cows = 1 in 871
replace Int_AnimalGeneric = 1 in 872
replace Int_Goats = 1 in 872
replace Int_NothingGeneric = 1 in 873
replace Int_FieldCropGeneric = 1 in 874
replace Int_SubVeggieGeneric = 1 in 874
replace Int_Tomatoes = 1 in 874
replace Int_Cucumbers = 1 in 874
replace Int_FieldCropGeneric = 1 in 875
replace Int_SubVeggieGeneric = 1 in 875
replace Int_AnimalGeneric = 1 in 875
replace Int_Pigs = 1 in 875
replace Int_Chickens = 1 in 875
replace Int_AnimalGeneric = 1 in 876
replace Int_Cows = 1 in 876
replace Int_FieldCropGeneric = 1 in 877
replace Int_SubVeggieGeneric = 1 in 877
replace Int_GardenGeneric = 1 in 877
replace Int_Potatoes = 1 in 877
replace Int_Chili = 1 in 877
replace Int_FieldCropGeneric = 1 in 878
replace Int_SubVeggieGeneric = 1 in 878
replace Int_SubVeggieGeneric = 0 in 878
replace Int_SubCerealsGeneric = 1 in 878
replace Int_CapitalGeneric = 1 in 878
replace Int_Corn = 1 in 878
replace Int_SupplyStore = 1 in 878
replace Int_SubCerealsGeneric = 1 in 879
replace Int_FieldCropGeneric = 1 in 879
replace Int_AnimalGeneric = 1 in 879
replace Int_Chickens = 1 in 879
replace Int_SubCerealsGeneric = 1 in 880
replace Int_FieldCropGeneric = 1 in 880
replace Int_Corn = 1 in 880
replace Int_CapitalGeneric = 1 in 881
replace Int_SupplyStore = 1 in 881
replace Int_SpecialtyGeneric = 1 in 882
replace Int_Mushrooms = 1 in 882
replace Int_FruitGeneric = 1 in 883
replace Int_CapitalGeneric = 1 in 883
replace Int_Berries = 1 in 883
replace Int_Greenhouse = 1 in 883
replace Int_FieldCropGeneric = 1 in 884
replace Int_SubVeggieGeneric = 1 in 884
replace Int_GardenGeneric = 1 in 884
replace Int_Chili = 1 in 884
replace Int_Tomatoes = 1 in 884
replace Int_FieldCropGeneric = 1 in 885
replace Int_SubVeggieGeneric = 1 in 885
replace Int_Onions = 1 in 885
replace Int_SpecialtyGeneric = 1 in 886
replace Int_CapitalGeneric = 1 in 886
replace Int_Kombucha = 1 in 886
replace Int_Secondary = 1 in 886
replace Int_Machinery = 1 in 886
replace Int_FieldCropGeneric = 1 in 887
replace Int_SubVeggieGeneric = 1 in 887
replace Int_Tomatoes = 1 in 887
replace Int_NothingGeneric = 1 in 888
replace Int_NothingGeneric = 1 in 889
replace Int_SubCerealsGeneric = 1 in 890
replace Int_SubVeggieGeneric = 1 in 890
replace Int_FieldCropGeneric = 1 in 890
replace Int_Corn = 1 in 890
replace Int_Lentils = 1 in 890
replace Int_SubVeggieGeneric = 0 in 890
replace Int_SubVeggieGeneric = 1 in 890
replace Int_FieldCropGeneric = 1 in 891
replace Int_SubVeggieGeneric = 1 in 891
replace Int_GardenGeneric = 1 in 891
replace Int_Tomatoes = 1 in 891
replace Int_Cabbage = 1 in 891
replace Int_Lettuce = 1 in 891
replace Int_Peppers = 1 in 891
replace Int_MarketGarden = 1 in 891
replace Int_FieldCropGeneric = 1 in 892
replace Int_SubVeggieGeneric = 1 in 892
replace Int_Tomatoes = 1 in 892
replace Int_Peppers = 1 in 892
replace Int_SpecialtyGeneric = 1 in 893
replace Int_CapitalGeneric = 1 in 893
replace Int_Coffee = 1 in 893
replace Int_Secondary = 1 in 893
replace Int_Machinery = 1 in 893
replace Int_FieldCropGeneric = 1 in 894
replace Int_SubVeggieGeneric = 1 in 894
replace Int_AnimalGeneric = 1 in 894
replace Int_Cucumbers = 1 in 894
replace Int_Tomatoes = 1 in 894
replace Int_Pigs = 1 in 894
replace Int_Chickens = 1 in 895
replace Int_AnimalGeneric = 1 in 895
replace Int_SubVeggieGeneric = 1 in 896
replace Int_FieldCropGeneric = 1 in 896
replace Int_GardenGeneric = 1 in 896
replace Int_FieldCropGeneric = 1 in 897
replace Int_SubVeggieGeneric = 1 in 897
replace Int_Tomatoes = 1 in 897
replace Int_GardenGeneric = 1 in 898
replace Int_CapitalGeneric = 1 in 898
replace Int_SpecialtyGeneric = 1 in 898
replace Int_Chili = 1 in 898
replace Int_Secondary = 1 in 898
replace Int_Machinery = 1 in 898
replace Int_CapitalGeneric = 0 in 898
replace Int_Machinery = 0 in 898
replace Int_NothingGeneric = 1 in 899
replace Int_SubVeggieGeneric = 1 in 900
replace Int_FieldCropGeneric = 1 in 900
replace Int_Tomatoes = 1 in 900
replace Int_FieldCropGeneric = 1 in 901
replace Int_SubVeggieGeneric = 1 in 901
replace Int_GardenGeneric = 1 in 901
replace Int_SpecialtyGeneric = 1 in 901
replace Int_CapitalGeneric = 1 in 901
replace Int_SpecialtyGeneric = 0 in 901
replace Int_Fertilizer = 1 in 901
replace Int_Tomatoes = 1 in 901
replace Int_Onions = 1 in 901
replace Int_Peppers = 1 in 901
replace Int_Eggplants = 1 in 901
replace Int_Beans = 1 in 901
replace Int_Lettuce = 1 in 901
replace Int_Cabbage = 1 in 901
replace Int_Carrots = 1 in 901
replace Int_FieldCropGeneric = 1 in 902
replace Int_SubVeggieGeneric = 1 in 902
replace Int_Tomatoes = 1 in 902
replace Int_Okra = 1 in 902
replace Int_Peppers = 1 in 902
replace Int_AnimalGeneric = 1 in 903
replace Int_SpecialtyGeneric = 1 in 903
replace Int_Chickens = 1 in 903
replace Int_Snails = 1 in 903
replace Int_FishSeafood = 1 in 903
replace Int_AnimalGeneric = 1 in 904
replace Int_SpecialtyGeneric = 1 in 904
replace Int_FieldCropGeneric = 1 in 904
replace Int_SubVeggieGeneric = 1 in 904
replace Int_Potatoes = 1 in 904
replace Int_Rabbit = 1 in 904
replace Int_Pigs = 1 in 904
replace Int_MarketGarden = 1 in 904
replace Int_FishSeafood = 1 in 904
replace Int_Bees = 1 in 904
replace Int_GardenGeneric = 1 in 904
replace Int_GardenGeneric = 1 in 905
replace Int_Tumeric = 1 in 905
replace Int_FieldCropGeneric = 1 in 906
replace Int_SubVeggieGeneric = 1 in 906
replace Int_GardenGeneric = 1 in 906
replace Int_SpecialtyGeneric = 1 in 906
replace Int_AnimalGeneric = 1 in 906
replace Int_Tomatoes = 1 in 906
replace Int_Peppers = 1 in 906
replace Int_Ducks = 1 in 906
replace Int_FishSeafood = 1 in 906
replace Int_MarketGarden = 1 in 906
replace Int_Chili = 1 in 906
replace Int_GardenGeneric = 1 in 907
replace Int_SubCerealsGeneric = 1 in 907
replace Int_FieldCropGeneric = 1 in 907
replace Int_Rice = 1 in 907
replace Int_MarketGarden = 1 in 907
replace Int_SubCerealsGeneric = 1 in 908
replace Int_FieldCropGeneric = 1 in 908
replace Int_FieldCropGeneric = 1 in 909
replace Int_SubVeggieGeneric = 1 in 909
replace Int_Cabbage = 1 in 909
replace Int_FieldCropGeneric = 1 in 910
replace Int_SubVeggieGeneric = 1 in 910
replace Int_CapitalGeneric = 1 in 910
replace Int_Tomatoes = 1 in 910
replace Int_Greenhouse = 1 in 910
replace Int_AnimalGeneric = 1 in 911
replace Int_Pigs = 1 in 911
replace Int_FieldCropGeneric = 1 in 912
replace Int_SubVeggieGeneric = 1 in 912
replace Int_Tomatoes = 1 in 912
replace Int_GardenGeneric = 1 in 912
replace Int_MarketGarden = 1 in 912
replace Int_FruitGeneric = 1 in 913
replace Int_AnimalGeneric = 1 in 913
replace Int_SpecialtyGeneric = 1 in 913
replace Int_CapitalGeneric = 1 in 913
replace Int_FishSeafood = 1 in 913
replace Int_Hydroponics = 1 in 913
replace Int_FieldCropGeneric = 1 in 914
replace Int_SubVeggieGeneric = 1 in 914
replace Int_CapitalGeneric = 1 in 915
replace Int_Irrigation = 1 in 915
replace Int_AnimalGeneric = 1 in 916
replace Int_SpecialtyGeneric = 1 in 916
replace Int_Goats = 1 in 916
replace Int_Cows = 1 in 916
replace Int_Pigs = 1 in 916
replace Int_Rabbit = 1 in 916
replace Int_Bees = 1 in 916
replace Int_Snails = 1 in 916
replace Int_AnimalGeneric = 1 in 917
replace Int_SubVeggieGeneric = 1 in 917
replace Int_FieldCropGeneric = 1 in 917
replace Int_CapitalGeneric = 1 in 917
replace Int_SpecialtyGeneric = 1 in 917
replace Int_Corn = 1 in 917
replace Int_Chickens = 1 in 917
replace Int_Machinery = 1 in 917
replace Int_Secondary = 1 in 917
replace Int_FieldCropGeneric = 1 in 918
replace Int_SubVeggieGeneric = 1 in 918
replace Int_NothingGeneric = 1 in 919
replace Int_SubCerealsGeneric = 1 in 920
replace Int_FieldCropGeneric = 1 in 920
replace Int_Corn = 1 in 920
replace Int_Soy = 1 in 920
replace Int_FieldCropGeneric = 1 in 921
replace Int_SubVeggieGeneric = 1 in 921
replace Int_Tomatoes = 1 in 921
replace Int_Peppers = 1 in 921
replace Int_NothingGeneric = 1 in 922
replace Int_NothingGeneric = 1 in 923
replace Int_SubVeggieGeneric = 1 in 924
replace Int_FieldCropGeneric = 1 in 924
replace Int_SubCerealsGeneric = 1 in 924
replace Int_AnimalGeneric = 1 in 924
replace Int_Cassava = 1 in 924
replace Int_Corn = 1 in 924
replace Int_Goats = 1 in 924
replace Int_AnimalGeneric = 1 in 925
replace Int_Chickens = 1 in 925
replace Int_FieldCropGeneric = 1 in 926
replace Int_SubVeggieGeneric = 1 in 926
replace Int_Tomatoes = 1 in 926
replace Int_Peppers = 1 in 926
replace Int_CapitalGeneric = 1 in 927
replace Int_Irrigation = 1 in 927
replace Int_SubCerealsGeneric = 1 in 928
replace Int_FieldCropGeneric = 1 in 928
replace Int_AnimalGeneric = 1 in 928
replace Int_Chickens = 1 in 928
replace Int_SpecialtyGeneric = 1 in 929
replace Int_Trees = 1 in 929
replace Int_FieldCropGeneric = 1 in 930
replace Int_SubVeggieGeneric = 1 in 930
replace Int_GardenGeneric = 1 in 930
replace Int_Potatoes = 1 in 930
replace Int_MarketGarden = 1 in 930
replace Int_FieldCropGeneric = 1 in 931
replace Int_SubVeggieGeneric = 1 in 931
replace Int_GardenGeneric = 1 in 931
replace Int_Tomatoes = 1 in 931
replace Int_Lettuce = 1 in 931
replace Int_Carrots = 1 in 931
replace Int_Chili = 1 in 931
replace Int_FruitGeneric = 1 in 932
replace Int_GardenGeneric = 1 in 932
replace Int_CapitalGeneric = 1 in 932
replace Int_Avocado = 1 in 932
replace Int_Berries = 1 in 932
replace Int_Irrigation = 1 in 932
replace Int_FieldCropGeneric = 1 in 933
replace Int_SubVeggieGeneric = 1 in 933
replace Int_Peppers = 1 in 933
replace Int_Eggplants = 1 in 933
replace Int_Tomatoes = 1 in 933
replace Int_SpecialtyGeneric = 1 in 934
replace Int_CapitalGeneric = 1 in 934
replace Int_Machinery = 1 in 934
replace Int_Secondary = 1 in 934
replace Int_FieldCropGeneric = 1 in 935
replace Int_SubCerealsGeneric = 1 in 935
replace Int_Corn = 1 in 935
replace Int_AnimalGeneric = 1 in 936
replace Int_Chickens = 1 in 936
replace Int_CapitalGeneric = 1 in 936
replace Int_Storage = 1 in 936
replace Int_NothingGeneric = 1 in 937
replace Int_FieldCropGeneric = 1 in 938
replace Int_SubVeggieGeneric = 1 in 938
replace Int_AnimalGeneric = 1 in 938
replace Int_Pigs = 1 in 938
replace Int_AnimalGeneric = 1 in 939
replace Int_Chickens = 1 in 939
replace Int_Goats = 1 in 939
replace Int_FieldCropGeneric = 1 in 939
replace Int_SubCerealsGeneric = 1 in 939
replace Int_SubVeggieGeneric = 1 in 939
replace Int_GardenGeneric = 1 in 939
replace Int_FieldCropGeneric = 1 in 940
replace Int_SubVeggieGeneric = 1 in 940
replace Int_Tomatoes = 1 in 940
replace Int_GardenGeneric = 1 in 940
replace Int_AnimalGeneric = 1 in 940
replace Int_Pigs = 1 in 940
replace Int_Chickens = 1 in 940
replace Int_Chili = 1 in 940
replace Int_Cucumbers = 1 in 940
replace Int_NothingGeneric = 1 in 941
replace Int_SubVeggieGeneric = 1 in 942
replace Int_FieldCropGeneric = 1 in 942
replace Int_Onions = 1 in 942
replace Int_AnimalGeneric = 1 in 943
replace Int_SubCerealsGeneric = 1 in 943
replace Int_FieldCropGeneric = 1 in 943
replace Int_Corn = 1 in 943
replace Int_Pigs = 1 in 943
replace Int_Cows = 1 in 943
replace Int_FieldCropGeneric = 1 in 944
replace Int_SubVeggieGeneric = 1 in 944
replace Int_Tomatoes = 1 in 944
replace Int_FieldCropGeneric = 1 in 945
replace Int_SubVeggieGeneric = 1 in 945
replace Int_SubCerealsGeneric = 1 in 945
replace Int_Tomatoes = 1 in 945
replace Int_Corn = 1 in 945
replace Int_AnimalGeneric = 1 in 945
replace Int_GardenGeneric = 1 in 946
replace Int_SubCerealsGeneric = 1 in 946
replace Int_FieldCropGeneric = 1 in 946
replace Int_SubVeggieGeneric = 1 in 946
replace Int_Okra = 1 in 946
replace Int_Soy = 1 in 946
replace Int_Chili = 1 in 946
replace Int_FieldCropGeneric = 1 in 947
replace Int_SubVeggieGeneric = 1 in 947
replace Int_SubCerealsGeneric = 1 in 947
replace Int_Peppers = 1 in 947
replace Int_Soy = 1 in 947
replace Int_NothingGeneric = 1 in 948
replace Int_NothingGeneric = 1 in 949
replace Int_AnimalGeneric = 1 in 950
replace Int_Sheep = 1 in 950
replace Int_NothingGeneric = 1 in 951
replace Int_FieldCropGeneric = 1 in 952
replace Int_SubVeggieGeneric = 1 in 952
replace Int_GardenGeneric = 1 in 952
replace Int_AnimalGeneric = 1 in 952
replace Int_Peppers = 1 in 952
replace Int_Lettuce = 1 in 952
replace Int_Pigs = 1 in 952
replace Int_Chickens = 1 in 952
replace Int_Herbs = 1 in 952
replace Int_GardenGeneric = 0 in 952
replace Int_Herbs = 0 in 952
replace Int_FruitGeneric = 1 in 953
replace Int_Berries = 1 in 953
replace Int_Pineapple = 1 in 953
replace Int_FieldCropGeneric = 1 in 954
replace Int_SubVeggieGeneric = 1 in 954
replace Int_Tomatoes = 1 in 954
replace Int_NothingGeneric = 1 in 955
replace Int_SpecialtyGeneric = 1 in 956
replace Int_Flowers = 1 in 956
replace Int_FieldCropGeneric = 1 in 957
replace Int_SubVeggieGeneric = 1 in 957
replace Int_Potatoes = 1 in 957
replace Int_SpecialtyGeneric = 1 in 957
replace Int_Secondary = 1 in 957
replace Int_SubCerealsGeneric = 1 in 958
replace Int_FieldCropGeneric = 1 in 958
replace Int_Corn = 1 in 958
replace Int_AnimalGeneric = 1 in 959
replace Int_SpecialtyGeneric = 1 in 960
replace Int_Seeds = 1 in 960
replace Int_FieldCropGeneric = 1 in 961
replace Int_SubVeggieGeneric = 1 in 961
replace Int_NothingGeneric = 1 in 962
replace Int_SubCerealsGeneric = 1 in 963
replace Int_FieldCropGeneric = 1 in 963
replace Int_Corn = 1 in 963
replace Int_AnimalGeneric = 1 in 964
replace Int_SubVeggieGeneric = 1 in 964
replace Int_FieldCropGeneric = 1 in 964
replace Int_SubCerealsGeneric = 1 in 964
replace Int_Tomatoes = 1 in 964
replace Int_Rice = 1 in 964
replace Int_FieldCropGeneric = 1 in 965
replace Int_SubVeggieGeneric = 1 in 965
replace Int_CapitalGeneric = 1 in 965
replace Int_Tomatoes = 1 in 965
replace Int_Greenhouse = 1 in 965
replace Int_NothingGeneric = 1 in 966
replace Int_GardenGeneric = 1 in 967
replace Int_CapitalGeneric = 1 in 967
replace Int_Garlic = 1 in 967
replace Int_Herbs = 1 in 967
replace Int_Greenhouse = 1 in 967
replace Int_Storage = 1 in 967
replace Int_SubVeggieGeneric = 1 in 968
replace Int_FieldCropGeneric = 1 in 968
replace Int_AnimalGeneric = 1 in 968
replace Int_Chickens = 1 in 968
replace Int_SubCerealsGeneric = 1 in 968
replace Int_Cabbage = 1 in 968
replace Int_Corn = 1 in 968
replace Int_FieldCropGeneric = 1 in 969
replace Int_SubVeggieGeneric = 1 in 969
replace Int_SubCerealsGeneric = 1 in 969
replace Int_Tomatoes = 1 in 969
replace Int_Peppers = 1 in 969
replace Int_Eggplants = 1 in 969
replace Int_Soy = 1 in 969
replace Int_Sugar = 1 in 969
replace Int_CapitalGeneric = 1 in 970
replace Int_Greenhouse = 1 in 970
replace Int_FruitGeneric = 1 in 971
replace Int_SpecialtyGeneric = 1 in 971
replace Int_AnimalGeneric = 1 in 971
replace Int_Bananas = 1 in 971
replace Int_Coffee = 1 in 971
replace Int_Pigs = 1 in 971
replace Int_Chickens = 1 in 971
replace Int_CapitalGeneric = 1 in 972
replace Int_SubVeggieGeneric = 1 in 972
replace Int_FieldCropGeneric = 1 in 972
replace Int_Tomatoes = 1 in 972
replace Int_Greenhouse = 1 in 972
replace Int_FieldCropGeneric = 1 in 973
replace Int_SubVeggieGeneric = 1 in 973
replace Int_SpecialtyGeneric = 1 in 973
replace Int_Restaurant = 1 in 973
replace Int_FieldCropGeneric = 1 in 974
replace Int_SubCerealsGeneric = 1 in 974
replace Int_Corn = 1 in 974
replace Int_Soy = 1 in 974
replace Int_SubVeggieGeneric = 1 in 974
replace Int_NothingGeneric = 1 in 975
replace Int_AnimalGeneric = 1 in 976
replace Int_Pigs = 1 in 976
replace Int_FieldCropGeneric = 1 in 977
replace Int_SubVeggieGeneric = 1 in 977
replace Int_FruitGeneric = 1 in 977
replace Int_Mangos = 1 in 977
replace Int_Soy = 1 in 977
replace Int_Beans = 1 in 977
replace Int_SubCerealsGeneric = 1 in 977
replace Int_SubVeggieGeneric = 0 in 977
replace Int_SubCerealsGeneric = 1 in 978
replace Int_FieldCropGeneric = 1 in 978
replace Int_SubVeggieGeneric = 1 in 978
replace Int_Tomatoes = 1 in 978
replace Int_Rice = 1 in 978
replace Int_SubCerealsGeneric = 1 in 979
replace Int_FieldCropGeneric = 1 in 979
replace Int_Soy = 1 in 979
replace Int_NothingGeneric = 1 in 980
replace Int_SpecialtyGeneric = 1 in 981
replace Int_FieldCropGeneric = 1 in 981
replace Int_SubVeggieGeneric = 1 in 981
replace Int_SubCerealsGeneric = 1 in 981
replace Int_Soy = 1 in 981
replace Int_GardenGeneric = 1 in 981
replace Int_SpecialtyGeneric = 0 in 981
replace Int_Tobacco = 1 in 981
replace Int_AnimalGeneric = 1 in 981
replace Int_Chickens = 1 in 981
replace Int_Goats = 1 in 981
replace Int_AnimalGeneric = 1 in 982
replace Int_CapitalGeneric = 1 in 982
replace Int_SpecialtyGeneric = 1 in 982
replace Int_Seeds = 1 in 982
replace Int_SupplyStore = 1 in 982
replace Int_Chemicals = 1 in 982
replace Int_Insecticides = 1 in 982
replace Int_AnimalGeneric = 1 in 983
replace Int_SubCerealsGeneric = 1 in 983
replace Int_FieldCropGeneric = 1 in 983
replace Int_Corn = 1 in 983
replace Int_Pigs = 1 in 983
replace Int_SubVeggieGeneric = 1 in 984
replace Int_FieldCropGeneric = 1 in 984
replace Int_Tomatoes = 1 in 984
replace Int_FieldCropGeneric = 1 in 985
replace Int_SubVeggieGeneric = 1 in 985
replace Int_AnimalGeneric = 1 in 985
replace Int_Tomatoes = 1 in 985
replace Int_Pigs = 1 in 985
replace Int_SubVeggieGeneric = 1 in 986
replace Int_FieldCropGeneric = 1 in 986
replace Int_SubVeggieGeneric = 0 in 986
replace Int_SubCerealsGeneric = 1 in 986
replace Int_Corn = 1 in 986
replace Int_FruitGeneric = 1 in 987
replace Int_AnimalGeneric = 1 in 987
replace Int_SubCerealsGeneric = 1 in 987
replace Int_FieldCropGeneric = 1 in 987
replace Int_Soy = 1 in 987
replace Int_Bananas = 1 in 987
replace Int_Ducks = 1 in 987
replace Int_SubVeggieGeneric = 1 in 988
replace Int_FieldCropGeneric = 1 in 988
replace Int_SubCerealsGeneric = 1 in 988
replace Int_Corn = 1 in 988
replace Int_Soy = 1 in 988
replace Int_Tomatoes = 1 in 988
replace Int_Cassava = 1 in 988
replace Int_SubVeggieGeneric = 1 in 989
replace Int_FieldCropGeneric = 1 in 989
replace Int_SubCerealsGeneric = 1 in 989
replace Int_Corn = 1 in 989
replace Int_CapitalGeneric = 1 in 989
replace Int_SupplyStore = 1 in 989
replace Int_SubVeggieGeneric = 1 in 990
replace Int_FieldCropGeneric = 1 in 990
replace Int_Tomatoes = 1 in 990
replace Int_CapitalGeneric = 1 in 990
replace Int_Greenhouse = 1 in 990
replace Int_FruitGeneric = 1 in 991
replace Int_FieldCropGeneric = 1 in 991
replace Int_SubVeggieGeneric = 1 in 991
replace Int_Tomatoes = 1 in 991
replace Int_CapitalGeneric = 1 in 991
replace Int_SpecialtyGeneric = 1 in 991
replace Int_Storage = 1 in 991
replace Int_Secondary = 1 in 991
replace Int_Citrus = 1 in 991
replace Int_SubVeggieGeneric = 1 in 992
replace Int_FieldCropGeneric = 1 in 992
replace Int_SubVeggieGeneric = 0 in 992
replace Int_SubCerealsGeneric = 1 in 992
replace Int_AnimalGeneric = 1 in 992
replace Int_Pigs = 1 in 992
replace Int_Chickens = 1 in 992
replace Int_Corn = 1 in 992
replace Int_FieldCropGeneric = 1 in 993
replace Int_FieldCropGeneric = 0 in 993
replace Int_AnimalGeneric = 1 in 993
replace Int_Pigs = 1 in 993
replace Int_Chickens = 1 in 993
replace Int_Ducks = 1 in 993
replace Int_FieldCropGeneric = 1 in 994
replace Int_SubVeggieGeneric = 1 in 994
replace Int_Beans = 1 in 994
replace Int_FieldCropGeneric = 1 in 995
replace Int_SubCerealsGeneric = 1 in 995
replace Int_AnimalGeneric = 1 in 995
replace Int_Corn = 1 in 995
replace Int_Pigs = 1 in 995
replace Int_FieldCropGeneric = 1 in 996
replace Int_SubCerealsGeneric = 1 in 996
replace Int_AnimalGeneric = 1 in 996
replace Int_CapitalGeneric = 1 in 996
replace Int_Pigs = 1 in 996
replace Int_Irrigation = 1 in 996
replace Int_SubCerealsGeneric = 1 in 997
replace Int_FieldCropGeneric = 1 in 997
replace Int_SubVeggieGeneric = 1 in 997
replace Int_Corn = 1 in 997
replace Int_Beans = 1 in 997
replace Int_Soy = 1 in 997
replace Int_Beans = 0 in 997
replace Int_CapitalGeneric = 1 in 997
replace Int_Machinery = 1 in 997
replace Int_Irrigation = 1 in 997
replace Int_SubVeggieGeneric = 1 in 998
replace Int_FieldCropGeneric = 1 in 998
replace Int_Tomatoes = 1 in 998
replace Int_FieldCropGeneric = 1 in 999
replace Int_SubVeggieGeneric = 1 in 999
replace Int_Tomatoes = 1 in 999
replace Int_SubVeggieGeneric = 1 in 1000
replace Int_FieldCropGeneric = 1 in 1000
replace Int_AnimalGeneric = 1 in 1000
replace Int_Chickens = 1 in 1000
replace Int_FieldCropGeneric = 1 in 1001
replace Int_SubVeggieGeneric = 1 in 1001
replace Int_SubCerealsGeneric = 1 in 1001
replace Int_Corn = 1 in 1001
replace Int_Soy = 1 in 1001
replace Int_AnimalGeneric = 1 in 1002
replace Int_Pigs = 1 in 1002
replace Int_FieldCropGeneric = 1 in 1003
replace Int_SubVeggieGeneric = 1 in 1003
replace Int_CapitalGeneric = 1 in 1003
replace Int_Irrigation = 1 in 1003
replace Int_Storage = 1 in 1003
replace Int_Greenhouse = 1 in 1003
replace Int_AnimalGeneric = 1 in 1004
replace Int_FieldCropGeneric = 1 in 1004
replace Int_SubVeggieGeneric = 1 in 1004
replace Int_CapitalGeneric = 1 in 1004
replace Int_Pigs = 1 in 1004
replace Int_Greenhouse = 1 in 1004
replace Int_FieldCropGeneric = 1 in 1005
replace Int_SubVeggieGeneric = 1 in 1005
replace Int_Peppers = 1 in 1005
replace Int_Tomatoes = 1 in 1006
replace Int_NothingGeneric = 1 in 1006
replace Int_Tomatoes = 0 in 1006
replace Int_GardenGeneric = 1 in 1007
replace Int_SubVeggieGeneric = 1 in 1007
replace Int_FieldCropGeneric = 1 in 1007
replace Int_Cucumbers = 1 in 1007
replace Int_Garlic = 1 in 1007
replace Int_FieldCropGeneric = 1 in 1008
replace Int_SubCerealsGeneric = 1 in 1008
replace Int_Corn = 1 in 1008
replace Int_FruitGeneric = 1 in 1009
replace Int_CapitalGeneric = 1 in 1009
replace Int_Irrigation = 1 in 1009
replace Int_Melon = 1 in 1009
replace Int_AnimalGeneric = 1 in 1010
replace Int_AnimalGeneric = 0 in 1010
replace Int_Cows = 1 in 1010
replace Int_Chickens = 1 in 1010
replace Int_Goats = 1 in 1010
replace Int_SubVeggieGeneric = 1 in 1011
replace Int_FieldCropGeneric = 1 in 1011
replace Int_SpecialtyGeneric = 1 in 1011
replace Int_Potatoes = 1 in 1011
replace Int_FishSeafood = 1 in 1011
replace Int_FishSeafood = 0 in 1011
replace Int_Seeds = 1 in 1011
replace Int_GardenGeneric = 1 in 1012
replace Int_Garlic = 1 in 1012
replace Int_Chili = 1 in 1012
replace Int_FieldCropGeneric = 1 in 1013
replace Int_SubVeggieGeneric = 1 in 1013
replace Int_SubCerealsGeneric = 1 in 1013
replace Int_FruitGeneric = 1 in 1013
replace Int_NothingGeneric = 1 in 1013
replace Int_NothingGeneric = 0 in 1013
replace Int_Tomatoes = 1 in 1013
replace Int_Corn = 1 in 1013
replace Int_Bananas = 1 in 1013
replace Int_SubCerealsGeneric = 1 in 1014
replace Int_FieldCropGeneric = 1 in 1014
replace Int_Rice = 1 in 1014
replace Int_Corn = 1 in 1014
replace Int_FruitGeneric = 1 in 1015
replace Int_Citrus = 1 in 1015
replace Int_SubCerealsGeneric = 1 in 1016
replace Int_SubVeggieGeneric = 1 in 1016
replace Int_FieldCropGeneric = 1 in 1016
replace Int_Rice = 1 in 1016
replace Int_Soy = 1 in 1016
replace Int_AnimalGeneric = 1 in 1017
replace Int_SubVeggieGeneric = 1 in 1017
replace Int_FieldCropGeneric = 1 in 1017
replace Int_FruitGeneric = 1 in 1017
replace Int_Onions = 1 in 1017
replace Int_Tomatoes = 1 in 1017
replace Int_Melon = 1 in 1017
replace Int_Pigs = 1 in 1017
replace Int_FieldCropGeneric = 1 in 1018
replace Int_SubVeggieGeneric = 1 in 1018
replace Int_SubCerealsGeneric = 1 in 1018
replace Int_FruitGeneric = 1 in 1018
replace Int_FruitGeneric = 0 in 1018
replace Int_Citrus = 1 in 1018
replace Int_Corn = 1 in 1018
replace Int_NothingGeneric = 1 in 1019
replace Int_FieldCropGeneric = 1 in 1020
replace Int_SubVeggieGeneric = 1 in 1020
replace Int_SubCerealsGeneric = 1 in 1020
replace Int_SpecialtyGeneric = 1 in 1020
replace Int_Corn = 1 in 1020
replace Int_Seeds = 1 in 1020
replace Int_FruitGeneric = 1 in 1021
replace Int_SubVeggieGeneric = 1 in 1021
replace Int_FieldCropGeneric = 1 in 1021
replace Int_SubVeggieGeneric = 0 in 1021
replace Int_SubCerealsGeneric = 1 in 1021
replace Int_SubVeggieGeneric = 1 in 1021
replace Int_Corn = 1 in 1021
replace Int_Bananas = 1 in 1021
replace Int_FieldCropGeneric = 1 in 1022
replace Int_SubVeggieGeneric = 1 in 1022
replace Int_FruitGeneric = 1 in 1022
replace Int_Cocoa = 1 in 1022
replace Int_Grapes = 1 in 1022
replace Int_SubCerealsGeneric = 1 in 1023
replace Int_FieldCropGeneric = 1 in 1023
replace Int_Corn = 1 in 1023
replace Int_FruitGeneric = 1 in 1024
replace Int_Avocado = 1 in 1024
replace Int_SubCerealsGeneric = 1 in 1025
replace Int_SubVeggieGeneric = 1 in 1025
replace Int_FieldCropGeneric = 1 in 1025
replace Int_Tomatoes = 1 in 1025
replace Int_CapitalGeneric = 1 in 1025
replace Int_Rice = 1 in 1025
replace Int_Greenhouse = 1 in 1025
replace Int_FieldCropGeneric = 1 in 1026
replace Int_SubVeggieGeneric = 1 in 1026
replace Int_FruitGeneric = 1 in 1026
replace Int_Bananas = 1 in 1026
replace Int_Tomatoes = 1 in 1026
replace Int_Onions = 1 in 1026
replace Int_SubVeggieGeneric = 1 in 1027
replace Int_FieldCropGeneric = 1 in 1027
replace Int_Potatoes = 1 in 1027
replace Int_SubCerealsGeneric = 1 in 1028
replace Int_FieldCropGeneric = 1 in 1028
replace Int_SpecialtyGeneric = 1 in 1028
replace Int_Corn = 1 in 1028
replace Int_Seeds = 1 in 1028
replace Int_SubVeggieGeneric = 1 in 1029
replace Int_FieldCropGeneric = 1 in 1029
replace Int_Tomatoes = 1 in 1029
replace Int_CapitalGeneric = 1 in 1030
replace Int_Irrigation = 1 in 1030
replace Int_CapitalGeneric = 1 in 1031
replace Int_SpecialtyGeneric = 1 in 1031
replace Int_Seeds = 1 in 1031
replace Int_SupplyStore = 1 in 1031
replace Int_SubVeggieGeneric = 1 in 1032
replace Int_FieldCropGeneric = 1 in 1032
replace Int_FruitGeneric = 1 in 1032
replace Int_Beans = 1 in 1032
replace Int_Avocado = 1 in 1032
replace Int_FruitGeneric = 1 in 1033
replace Int_SubVeggieGeneric = 1 in 1033
replace Int_FieldCropGeneric = 1 in 1033
replace Int_CapitalGeneric = 1 in 1033
replace Int_Tomatoes = 1 in 1033
replace Int_Melon = 1 in 1033
replace Int_Greenhouse = 1 in 1033
replace Int_SubVeggieGeneric = 1 in 1034
replace Int_FieldCropGeneric = 1 in 1034
replace Int_Tomatoes = 1 in 1034
replace Int_Potatoes = 1 in 1034
replace Int_CapitalGeneric = 1 in 1035
replace Int_Irrigation = 1 in 1035
replace Int_FieldCropGeneric = 1 in 1036
replace Int_SubVeggieGeneric = 1 in 1036
replace Int_SubCerealsGeneric = 1 in 1036
replace Int_SubCerealsGeneric = 1 in 1037
replace Int_FieldCropGeneric = 1 in 1037
replace Int_CapitalGeneric = 1 in 1037
replace Int_Corn = 1 in 1037
replace Int_Soy = 1 in 1037
replace Int_SupplyStore = 1 in 1037
replace Int_AnimalGeneric = 1 in 1038
replace Int_SpecialtyGeneric = 1 in 1038
replace Int_FieldCropGeneric = 1 in 1038
replace Int_SubVeggieGeneric = 1 in 1038
replace Int_Tomatoes = 1 in 1038
replace Int_Cabbage = 1 in 1038
replace Int_Chickens = 1 in 1038
replace Int_Cows = 1 in 1038
replace Int_Goats = 1 in 1038
replace Int_Mushrooms = 1 in 1038
replace Int_SpecialtyGeneric = 1 in 1039
replace Int_GardenGeneric = 1 in 1039
replace Int_SpecialtyGeneric = 0 in 1039
replace Int_Flowers = 1 in 1039
replace Int_SubVeggieGeneric = 1 in 1040
replace Int_FieldCropGeneric = 1 in 1040
replace Int_SubVeggieGeneric = 1 in 1041
replace Int_FieldCropGeneric = 1 in 1041
replace Int_AnimalGeneric = 1 in 1041
replace Int_Chickens = 1 in 1041
replace Int_SubCerealsGeneric = 1 in 1042
replace Int_SubVeggieGeneric = 1 in 1042
replace Int_FieldCropGeneric = 1 in 1042
replace Int_Soy = 1 in 1042
replace Int_CapitalGeneric = 1 in 1043
replace Int_Machinery = 1 in 1043
replace Int_FieldCropGeneric = 1 in 1044
replace Int_SubVeggieGeneric = 1 in 1044
replace Int_SubCerealsGeneric = 1 in 1044
replace Int_SpecialtyGeneric = 1 in 1045
replace Int_Seeds = 1 in 1045
replace Int_SubCerealsGeneric = 1 in 1046
replace Int_SubVeggieGeneric = 1 in 1046
replace Int_Beans = 1 in 1046
replace Int_Corn = 1 in 1046
replace Int_FieldCropGeneric = 1 in 1046
replace Int_AnimalGeneric = 1 in 1047
replace Int_Pigs = 1 in 1047
replace Int_FieldCropGeneric = 1 in 1048
replace Int_SubVeggieGeneric = 1 in 1048
replace Int_SubCerealsGeneric = 1 in 1048
replace Int_FruitGeneric = 1 in 1049
replace Int_CapitalGeneric = 1 in 1049
replace Int_SubVeggieGeneric = 1 in 1049
replace Int_FieldCropGeneric = 1 in 1049
replace Int_Tomatoes = 1 in 1049
replace Int_Bananas = 1 in 1049
replace Int_Greenhouse = 1 in 1049
replace Int_GardenGeneric = 1 in 1050
replace Int_SpecialtyGeneric = 1 in 1050
replace Int_Herbs = 1 in 1050
replace Int_Snails = 1 in 1050
replace Int_Mushrooms = 1 in 1050
replace Int_Snails = 0 in 1050
replace Int_FieldCropGeneric = 1 in 1051
replace Int_SubVeggieGeneric = 1 in 1051
replace Int_FruitGeneric = 1 in 1052
replace Int_CapitalGeneric = 1 in 1052
replace Int_SpecialtyGeneric = 1 in 1052
replace Int_Bananas = 1 in 1052
replace Int_SupplyStore = 1 in 1052
replace Int_Fertilizer = 1 in 1052
replace Int_Seeds = 1 in 1052
replace Int_FieldCropGeneric = 1 in 1053
replace Int_SubVeggieGeneric = 1 in 1053
replace Int_AnimalGeneric = 1 in 1053
replace Int_Chickens = 1 in 1053
replace Int_FieldCropGeneric = 1 in 1054
replace Int_SubVeggieGeneric = 1 in 1054
replace Int_SubCerealsGeneric = 1 in 1054
replace Int_FruitGeneric = 1 in 1054
replace Int_Tomatoes = 1 in 1054
replace Int_Cassava = 1 in 1054
replace Int_Avocado = 1 in 1054
replace Int_Mangos = 1 in 1054
replace Int_CapitalGeneric = 1 in 1054
replace Int_Beans = 1 in 1054
replace Int_Potatoes = 1 in 1054
replace Int_Irrigation = 1 in 1054
replace Int_SubVeggieGeneric = 1 in 1055
replace Int_FieldCropGeneric = 1 in 1055
replace Int_Peppers = 1 in 1055
replace Int_FruitGeneric = 1 in 1056
replace Int_Avocado = 1 in 1056
replace Int_Mangos = 1 in 1056
replace Int_Citrus = 1 in 1056
replace Int_AnimalGeneric = 1 in 1057
replace Int_FieldCropGeneric = 1 in 1057
replace Int_SubCerealsGeneric = 1 in 1057
replace Int_Corn = 1 in 1057
replace Int_Chickens = 1 in 1057
replace Int_Rabbit = 1 in 1057
replace Int_SubCerealsGeneric = 1 in 1058
replace Int_FieldCropGeneric = 1 in 1058
replace Int_Rice = 1 in 1058
replace Int_FruitGeneric = 1 in 1059
replace Int_Bananas = 1 in 1059
replace Int_CapitalGeneric = 1 in 1060
replace Int_SubVeggieGeneric = 1 in 1060
replace Int_FieldCropGeneric = 1 in 1060
replace Int_Irrigation = 1 in 1060
replace Int_FieldCropGeneric = 1 in 1061
replace Int_SubVeggieGeneric = 1 in 1061
replace Int_SubCerealsGeneric = 1 in 1061
replace Int_GardenGeneric = 1 in 1061
replace Int_Tomatoes = 1 in 1061
replace Int_Corn = 1 in 1061
replace Int_Soy = 1 in 1061
replace Int_Tobacco = 1 in 1061
replace Int_Beans = 1 in 1061
replace Int_Beans = 0 in 1061
replace Int_CapitalGeneric = 1 in 1062
replace Int_SubVeggieGeneric = 1 in 1062
replace Int_FieldCropGeneric = 1 in 1062
replace Int_FruitGeneric = 1 in 1062
replace Int_Tomatoes = 1 in 1062
replace Int_Beans = 1 in 1062
replace Int_Melon = 1 in 1062
replace Int_Irrigation = 1 in 1062
replace Int_FieldCropGeneric = 1 in 1063
replace Int_SubVeggieGeneric = 1 in 1063
replace Int_SubCerealsGeneric = 1 in 1063
replace Int_Tomatoes = 1 in 1063
replace Int_Corn = 1 in 1063
replace Int_Soy = 1 in 1063
replace Int_FruitGeneric = 1 in 1063
replace Int_Melon = 1 in 1063
replace Int_SubVeggieGeneric = 1 in 1064
replace Int_FieldCropGeneric = 1 in 1064
replace Int_Tomatoes = 1 in 1064
replace Int_Potatoes = 1 in 1064
replace Int_Beans = 1 in 1064
replace Int_AnimalGeneric = 1 in 1065
replace Int_Chickens = 1 in 1065
replace Int_AnimalGeneric = 1 in 1066
replace Int_Pigs = 1 in 1066
replace Int_NothingGeneric = 1 in 1067
replace Int_AnimalGeneric = 1 in 1068
replace Int_AnimalGeneric = 0 in 1068
replace Int_SpecialtyGeneric = 1 in 1068
replace Int_CapitalGeneric = 1 in 1068
replace Int_FishSeafood = 1 in 1068
replace Int_Hydroponics = 1 in 1068
replace Int_SubCerealsGeneric = 1 in 1069
replace Int_FieldCropGeneric = 1 in 1069
replace Int_AnimalGeneric = 1 in 1069
replace Int_CapitalGeneric = 1 in 1069
replace Int_Cows = 1 in 1069
replace Int_Fertilizer = 1 in 1069
replace Int_NothingGeneric = 1 in 1070
replace Int_NothingGeneric = 0 in 1070
replace Int_NothingGeneric = 1 in 1071
replace Int_NothingGeneric = 1 in 1070
replace Int_AnimalGeneric = 1 in 1072
replace Int_Chickens = 1 in 1072
replace Int_CapitalGeneric = 1 in 1072
replace Int_SupplyStore = 1 in 1072
replace Int_AnimalGeneric = 1 in 1073
replace Int_Pigs = 1 in 1073
replace Int_GardenGeneric = 1 in 1074
replace Int_SpecialtyGeneric = 1 in 1074
replace Int_Sunflowers = 1 in 1074
replace Int_Secondary = 1 in 1074
replace Int_AnimalGeneric = 1 in 1075
replace Int_Chickens = 1 in 1073
replace Int_Chickens = 1 in 1075
replace Int_AnimalGeneric = 1 in 1076
replace Int_Chickens = 1 in 1076
replace Int_FieldCropGeneric = 1 in 1077
replace Int_SubVeggieGeneric = 1 in 1077
replace Int_SubCerealsGeneric = 1 in 1077
replace Int_Potatoes = 1 in 1077
replace Int_Beans = 1 in 1077
replace Int_Corn = 1 in 1077
replace Int_Rice = 1 in 1077
replace Int_FruitGeneric = 1 in 1077
replace Int_SpecialtyGeneric = 1 in 1077
replace Int_Secondary = 1 in 1077
replace Int_SpecialtyGeneric = 1 in 1078
replace Int_Bees = 1 in 1078
replace Int_AnimalGeneric = 1 in 1079
replace Int_Cows = 1 in 1079
replace Int_AnimalGeneric = 1 in 1080
replace Int_Chickens = 1 in 1080
replace Int_AnimalGeneric = 1 in 1081
replace Int_SpecialtyGeneric = 1 in 1081
replace Int_Cows = 1 in 1081
replace Int_Restaurant = 1 in 1081
replace Int_FieldCropGeneric = 1 in 1082
replace Int_SubVeggieGeneric = 1 in 1082
replace Int_CapitalGeneric = 1 in 1082
replace Int_Tomatoes = 1 in 1082
replace Int_Irrigation = 1 in 1082

replace Int_NothingGeneric=1 if ResponseId=="R_C2ddCkCUOrJDd2p"
replace Int_NothingGeneric=1 if ResponseId=="R_Y68fTfjWzP1GMDL"
replace Int_AnimalGeneric=1 if ResponseId=="R_1IyoixPqTINqBPo"
replace Int_Chickens=1 if ResponseId=="R_1IyoixPqTINqBPo"
replace Int_Cows=1 if ResponseId=="R_1IyoixPqTINqBPo"
replace Int_Goats=1 if ResponseId=="R_1IyoixPqTINqBPo"
replace Int_SpecialtyGeneric=0 if ResponseId=="R_Q9V4cEZ5xLi1Xrj"
replace Int_FruitGeneric=1 if ResponseId=="R_Q9V4cEZ5xLi1Xrj"
replace Int_CapitalGeneric=0 if ResponseId=="R_u4gRnRJOd5Vk33H"
replace Int_GardenGeneric=1 if ResponseId=="R_246PKIeq7Bu8N9y"

replace Int_CapitalGeneric=1 if Int_Hydroponics==1


*This section has the final checks for intentions
*reminder of two rules. First must mention product. Second must imply producing product.
*Soybeans count as a cereal in this case though considered a legume in others
*Legumes are considered vegetables
*for this section, I focused on level 2s only
*Other than these changes, my results should be the same as the previous do file with some name changes only
replace Int_CapitalGeneric = 1 in 28
replace Int_NothingGeneric = 0 in 28
replace Int_SpecialtyGeneric = 0 in 54
replace Int_GardenGeneric = 0 in 89
replace Int_SubVeggieGeneric = 1 in 89
replace Int_AnimalGeneric = 0 in 94
replace Int_SpecialtyGeneric = 0 in 112
replace Int_SpecialtyGeneric = 0 in 121
replace Int_CapitalGeneric = 1 in 134
replace Int_SpecialtyGeneric = 0 in 140
replace Int_AnimalGeneric = 1 in 147
replace Int_SpecialtyGeneric = 1 in 148
replace Int_GardenGeneric = 1 in 190
replace Int_SubCerealsGeneric = 1 in 196
replace Int_CapitalGeneric = 1 in 209
replace Int_FruitGeneric = 1 in 243
replace Int_SpecialtyGeneric = 0 in 243
replace Int_GardenGeneric = 0 in 257
replace Int_NothingGeneric = 1 in 280
replace Int_GardenGeneric = 0 in 303
replace Int_AnimalGeneric = 0 in 303
replace Int_SpecialtyGeneric = 0 in 305
replace Int_GardenGeneric = 0 in 326
replace Int_SpecialtyGeneric = 1 in 354
replace Int_SubCerealsGeneric = 0 in 354
replace Int_SubCerealsGeneric = 1 in 363
replace Int_SubVeggieGeneric = 1 in 386
replace Int_SubVeggieGeneric = 1 in 405
replace Int_GardenGeneric = 0 in 424
replace Int_GardenGeneric = 1 in 425
replace Int_CapitalGeneric = 0 in 442
replace Int_SpecialtyGeneric = 0 in 488
replace Int_CapitalGeneric = 1 in 488
replace Int_SpecialtyGeneric = 0 in 509
replace Int_SubVeggieGeneric = 1 in 523
replace Int_GardenGeneric = 0 in 523
replace Int_NothingGeneric = 1 in 532
replace Int_SpecialtyGeneric = 0 in 532
replace Int_GardenGeneric = 0 in 540
replace Int_SpecialtyGeneric = 0 in 545
replace Int_SpecialtyGeneric = 0 in 546
replace Int_SpecialtyGeneric = 1 in 557
replace Int_SpecialtyGeneric = 1 in 564
replace Int_FruitGeneric = 1 in 565
replace Int_SpecialtyGeneric = 0 in 574
replace Int_GardenGeneric = 0 in 576
replace Int_CapitalGeneric = 0 in 602
replace Int_FruitGeneric = 1 in 637
replace Int_SpecialtyGeneric = 0 in 637
replace Int_SubVeggieGeneric = 1 in 638
replace Int_GardenGeneric = 0 in 650
replace Int_GardenGeneric = 0 in 658
replace Int_SpecialtyGeneric = 1 in 658
replace Int_SpecialtyGeneric = 1 in 667
replace Int_GardenGeneric = 1 in 669
replace Int_GardenGeneric = 0 in 669
replace Int_CapitalGeneric = 0 in 670
replace Int_GardenGeneric = 0 in 672
replace Int_AnimalGeneric = 1 in 716
replace Int_FruitGeneric = 1 in 739
replace Int_FruitGeneric = 1 in 744
replace Int_GardenGeneric = 0 in 744
replace Int_FruitGeneric = 0 in 744
replace Int_GardenGeneric = 0 in 750
replace Int_CapitalGeneric = 0 in 785
replace Int_SpecialtyGeneric = 0 in 790
replace Int_SpecialtyGeneric = 0 in 798
replace Int_SubCerealsGeneric = 0 in 799
replace Int_SpecialtyGeneric = 0 in 822
replace Int_CapitalGeneric = 1 in 822
replace Int_SpecialtyGeneric = 1 in 825
replace Int_GardenGeneric = 0 in 832
replace Int_CapitalGeneric = 0 in 835
replace Int_AnimalGeneric = 1 in 869
replace Int_GardenGeneric = 0 in 877
replace Int_CapitalGeneric = 0 in 881
replace Int_NothingGeneric = 1 in 881
replace Int_GardenGeneric = 0 in 884
replace Int_CapitalGeneric = 0 in 886
replace Int_GardenGeneric = 0 in 891
replace Int_SpecialtyGeneric = 0 in 893
replace Int_SpecialtyGeneric = 1 in 893
replace Int_CapitalGeneric = 0 in 893
replace Int_FruitGeneric = 1 in 893
replace Int_SubVeggieGeneric = 1 in 895
replace Int_SubVeggieGeneric = 0 in 896
replace Int_GardenGeneric = 0 in 896
replace Int_SpecialtyGeneric = 1 in 896
replace Int_CapitalGeneric = 1 in 896
replace Int_GardenGeneric = 0 in 898
replace Int_SubVeggieGeneric = 1 in 898
replace Int_GardenGeneric = 0 in 901
replace Int_GardenGeneric = 0 in 904
replace Int_GardenGeneric = 0 in 906
replace Int_GardenGeneric = 0 in 907
replace Int_SubVeggieGeneric = 1 in 907
replace Int_GardenGeneric = 0 in 912
replace Int_SubVeggieGeneric = 0 in 917
replace Int_AnimalGeneric = 1 in 919
replace Int_NothingGeneric = 0 in 919
replace Int_SubVeggieGeneric = 1 in 922
replace Int_NothingGeneric = 0 in 922
replace Int_SubVeggieGeneric = 1 in 927
replace Int_GardenGeneric = 0 in 930
replace Int_GardenGeneric = 0 in 931
replace Int_GardenGeneric = 0 in 932
replace Int_SubVeggieGeneric = 1 in 934
replace Int_GardenGeneric = 0 in 940
replace Int_GardenGeneric = 0 in 946
replace Int_SpecialtyGeneric = 0 in 956
replace Int_GardenGeneric = 1 in 956
replace Int_SpecialtyGeneric = 1 in 959
replace Int_SpecialtyGeneric = 1 in 969
replace Int_SpecialtyGeneric = 0 in 971
replace Int_SubVeggieGeneric = 1 in 977
replace Int_GardenGeneric = 0 in 981
replace Int_SpecialtyGeneric = 1 in 981
replace Int_FruitGeneric = 1 in 998
replace Int_SubVeggieGeneric = 1 in 1012
replace Int_CapitalGeneric = 0 in 1030
replace Int_NothingGeneric = 1 in 1030
replace Int_SubVeggieGeneric = 1 in 1035
replace Int_SpecialtyGeneric = 0 in 1052
replace Int_CapitalGeneric = 1 in 1061
replace Int_GardenGeneric = 0 in 1061


*Now we start manipulating and generating measurement variables


rename Int_AnimalGeneric Int_LivestockGeneric
rename Int_GardenGeneric Int_CashCropsGeneric
rename Int_FruitGeneric Int_FruitsGeneric

gen Int_Lvl2_Sum=Int_SubVeggieGeneric+Int_SubCerealsGeneric+Int_FruitsGeneric+Int_LivestockGeneric+Int_CashCropsGeneric+Int_SpecialtyGeneric+Int_CapitalGeneric+Int_NothingGeneric

gen Fam_Lvl2_Fruits=1 if Family_Grows_Fruits==1
replace Fam_Lvl2_Fruits=0 if missing(Fam_Lvl2_Fruits)

gen Fam_Lvl2_Livestock=1 if Family_Grows_Cows==1 | Family_Grows_Pigs==1 | Family_Grows_Chicken==1 | Family_Grows_Sheep==1
replace Fam_Lvl2_Livestock=0 if missing(Fam_Lvl2_Livestock)

gen Fam_Lvl2_Cereals=1 if Family_Grows_Cereals==1
replace Fam_Lvl2_Cereals=0 if missing(Fam_Lvl2_Cereals)

gen Fam_Lvl2_Vegetables=1 if Family_Grows_Legumes==1 | Family_Grows_Vegetables==1
replace Fam_Lvl2_Vegetables=0 if missing(Fam_Lvl2_Vegetables)

gen Fam_Lvl2_CashCrops=1 if Family_Grows_Flowers==1 | Family_Grows_Spices==1 | Family_Grows_Oilseeds==1
replace Fam_Lvl2_CashCrops=0 if missing(Fam_Lvl2_CashCrops)

gen Fam_Lvl2_Specialty=1 if Family_Grows_Bees==1 | Family_Grows_Fish==1 | Family_Grows_Niche==1
replace Fam_Lvl2_Specialty=0 if missing(Fam_Lvl2_Specialty)

gen Fam_Lvl2_Nothing=1 if Family_Grows_Nothing==1
replace Fam_Lvl2_Nothing=0 if missing(Fam_Lvl2_Nothing)

gen Fam_Lvl2_Sum=Fam_Lvl2_Nothing+Fam_Lvl2_Specialty+Fam_Lvl2_CashCrops+Fam_Lvl2_Vegetables+Fam_Lvl2_Cereals+Fam_Lvl2_Livestock+Fam_Lvl2_Fruits

gen Wrk_Lvl2_Fruits=1 if Demo_Wrk_Fruits==1
replace Wrk_Lvl2_Fruits=0 if missing(Wrk_Lvl2_Fruits)

gen Wrk_Lvl2_Capital=1 if Demo_Wrk_ProtectedCult==1 | Demo_Wrk_PackingStorage==1 | Demo_Wrk_Irrigation==1
replace Wrk_Lvl2_Capital=0 if missing(Wrk_Lvl2_Capital)

gen Wrk_Lvl2_Cereals=1 if Demo_Wrk_Cereals==1
replace Wrk_Lvl2_Cereals=0 if missing(Wrk_Lvl2_Cereals)

gen Wrk_Lvl2_Vegetables=1 if Demo_Wrk_Vegetables==1 | Demo_Wrk_Legumes==1
replace Wrk_Lvl2_Vegetables=0 if missing(Wrk_Lvl2_Vegetables)

gen Wrk_Lvl2_CashCrops=1 if Demo_Wrk_Flowers==1 | Demo_Wrk_Oilseeds==1 | Demo_Wrk_Spices==1
replace Wrk_Lvl2_CashCrops=0 if missing(Wrk_Lvl2_CashCrops)

gen Wrk_Lvl2_Specialty=1 if Demo_Wrk_Bees==1 | Demo_Wrk_Fish==1 | Demo_Wrk_Niche==1
replace Wrk_Lvl2_Specialty=0 if missing(Wrk_Lvl2_Specialty)

gen Wrk_Lvl2_Livestock=1 if Demo_Wrk_Cows==1 | Demo_Wrk_Chickens==1 | Demo_Wrk_GoatsSheep==1
replace Wrk_Lvl2_Livestock=0 if missing(Wrk_Lvl2_Livestock)

gen Wrk_Lvl2_Sum=Wrk_Lvl2_Fruits+Wrk_Lvl2_Capital+Wrk_Lvl2_Cereals+Wrk_Lvl2_Vegetables+Wrk_Lvl2_CashCrops+Wrk_Lvl2_Specialty+Wrk_Lvl2_Livestock

gen Fam_Lvl3_Horti=1 if Fam_Lvl2_Fruits==1 | Fam_Lvl2_Cereals==1 | Fam_Lvl2_Vegetables==1 | Fam_Lvl2_Specialty==1 | Fam_Lvl2_CashCrops==1
replace Fam_Lvl3_Horti=0 if missing(Fam_Lvl3_Horti)

gen Fam_Lvl3_Ani=1 if Fam_Lvl2_Livestock==1
replace Fam_Lvl3_Ani=0 if missing(Fam_Lvl3_Ani)

gen Fam_Lvl3_Nothing=1 if Fam_Lvl2_Nothing==1
replace Fam_Lvl3_Nothing=0 if missing(Fam_Lvl3_Nothing)

gen Fam_Lvl3_Sum=Fam_Lvl3_Horti+Fam_Lvl3_Ani+Fam_Lvl3_Nothing

gen Wrk_Lvl3_Horti=1 if Wrk_Lvl2_Fruits==1 | Wrk_Lvl2_Capital==1 | Wrk_Lvl2_Vegetables==1 | Wrk_Lvl2_Specialty==1 | Wrk_Lvl2_Cereals==1 | Wrk_Lvl2_CashCrops==1
replace Wrk_Lvl3_Horti=0 if missing(Wrk_Lvl3_Horti)

gen Wrk_Lvl3_Ani=1 if Wrk_Lvl2_Livestock==1
replace Wrk_Lvl3_Ani=0 if missing(Wrk_Lvl3_Ani)

gen Wrk_Lvl3_Sum=Wrk_Lvl3_Horti+Wrk_Lvl3_Ani

gen Profile_Fam_Horticult=1 if Fam_Lvl3_Horti==1 & Fam_Lvl3_Ani==0
replace Profile_Fam_Horticult=0 if missing(Profile_Fam_Horticult)

gen Profile_Fam_Animal=1 if Fam_Lvl3_Ani==1 & Fam_Lvl3_Horti==0
replace Profile_Fam_Animal=0 if missing(Profile_Fam_Animal)

gen Profile_Fam_Both=1 if Fam_Lvl3_Ani==1 & Fam_Lvl3_Horti==1
replace Profile_Fam_Both=0 if missing(Profile_Fam_Both)

gen Profile_Fam_Nothing=1 if Fam_Lvl3_Ani==0 & Fam_Lvl3_Horti==0
replace Profile_Fam_Nothing=0 if missing(Profile_Fam_Nothing)

gen Profile_Wrk_Horticult=1 if Wrk_Lvl3_Horti==1 & Wrk_Lvl3_Ani==0
replace Profile_Wrk_Horticult=0 if missing(Profile_Wrk_Horticult)

gen Profile_Wrk_Animal=1 if Wrk_Lvl3_Horti==0 & Wrk_Lvl3_Ani==1
replace Profile_Wrk_Animal=0 if missing(Profile_Wrk_Animal)

gen Profile_Wrk_Both=1 if Wrk_Lvl3_Horti==1 & Wrk_Lvl3_Ani==1
replace Profile_Wrk_Both=0 if missing(Profile_Wrk_Both)

gen Profile_GreatLakes=1 if DNationality==15 | DNationality==20 | DNationality==22 | DNationality==25
replace Profile_GreatLakes=0 if missing(Profile_GreatLakes)

gen Profile_SEA=1 if DNationality==1 | DNationality==3 | DNationality==19
replace Profile_SEA=0 if missing(Profile_SEA)

gen Profile_WestAfrica=1 if DNationality==8 | DNationality==10 | DNationality==24 | DNationality==29
replace Profile_WestAfrica=0 if missing(Profile_WestAfrica)

*Matrix for Family Intention Interaction at the Level 2, or the established 7 groups. Noted as Matrix "A"

gen a1x1p=0
gen a1x2=0
gen a1x3=0
gen a1x4=0
gen a1x5=0
gen a1x6=0
gen a1x7=0
gen a1x8=0

gen a2x1=0
gen a2x2p=0
gen a2x3=0
gen a2x4=0
gen a2x5=0
gen a2x6=0
gen a2x7=0
gen a2x8=0

gen a3x1=0
gen a3x2=0
gen a3x3p=0
gen a3x4=0
gen a3x5=0
gen a3x6=0
gen a3x7=0
gen a3x8=0

gen a4x1=0
gen a4x2=0
gen a4x3=0
gen a4x4p=0
gen a4x5=0
gen a4x6=0
gen a4x7=0
gen a4x8=0

gen a5x1=0
gen a5x2=0
gen a5x3=0
gen a5x4=0
gen a5x5p=0
gen a5x6=0
gen a5x7=0
gen a5x8=0

gen a6x1=0
gen a6x2=0
gen a6x3=0
gen a6x4=0
gen a6x5=0
gen a6x6p=0
gen a6x7=0
gen a6x8=0

gen a7x1=0
gen a7x2=0
gen a7x3=0
gen a7x4=0
gen a7x5=0
gen a7x6=0
gen a7x7=0
gen a7x8p=0

replace a1x1p=1 if Fam_Lvl2_Cereals==1 & Int_SubCerealsGeneric==1
replace a1x2=1 if Fam_Lvl2_Cereals==1 & Int_SubVeggieGeneric==1
replace a1x3=1 if Fam_Lvl2_Cereals==1 & Int_FruitsGeneric==1
replace a1x4=1 if Fam_Lvl2_Cereals==1 & Int_CashCropsGeneric==1
replace a1x5=1 if Fam_Lvl2_Cereals==1 & Int_LivestockGeneric==1
replace a1x6=1 if Fam_Lvl2_Cereals==1 & Int_SpecialtyGeneric==1
replace a1x7=1 if Fam_Lvl2_Cereals==1 & Int_CapitalGeneric==1
replace a1x8=1 if Fam_Lvl2_Cereals==1 & Int_NothingGeneric==1

replace a2x1=1 if Fam_Lvl2_Vegetables==1 & Int_SubCerealsGeneric==1
replace a2x2p=1 if Fam_Lvl2_Vegetables==1 & Int_SubVeggieGeneric==1
replace a2x3=1 if Fam_Lvl2_Vegetables==1 & Int_FruitsGeneric==1
replace a2x4=1 if Fam_Lvl2_Vegetables==1 & Int_CashCropsGeneric==1
replace a2x5=1 if Fam_Lvl2_Vegetables==1 & Int_LivestockGeneric==1
replace a2x6=1 if Fam_Lvl2_Vegetables==1 & Int_SpecialtyGeneric==1
replace a2x7=1 if Fam_Lvl2_Vegetables==1 & Int_CapitalGeneric==1
replace a2x8=1 if Fam_Lvl2_Vegetables==1 & Int_NothingGeneric==1

replace a3x1=1 if Fam_Lvl2_Fruits==1 & Int_SubCerealsGeneric==1
replace a3x2=1 if Fam_Lvl2_Fruits==1 & Int_SubVeggieGeneric==1
replace a3x3p=1 if Fam_Lvl2_Fruits==1 & Int_FruitsGeneric==1
replace a3x4=1 if Fam_Lvl2_Fruits==1 & Int_CashCropsGeneric==1
replace a3x5=1 if Fam_Lvl2_Fruits==1 & Int_LivestockGeneric==1
replace a3x6=1 if Fam_Lvl2_Fruits==1 & Int_SpecialtyGeneric==1
replace a3x7=1 if Fam_Lvl2_Fruits==1 & Int_CapitalGeneric==1
replace a3x8=1 if Fam_Lvl2_Fruits==1 & Int_NothingGeneric==1

replace a4x1=1 if Fam_Lvl2_CashCrops==1 & Int_SubCerealsGeneric==1
replace a4x2=1 if Fam_Lvl2_CashCrops==1 & Int_SubVeggieGeneric==1
replace a4x3=1 if Fam_Lvl2_CashCrops==1 & Int_FruitsGeneric==1
replace a4x4p=1 if Fam_Lvl2_CashCrops==1 & Int_CashCropsGeneric==1
replace a4x5=1 if Fam_Lvl2_CashCrops==1 & Int_LivestockGeneric==1
replace a4x6=1 if Fam_Lvl2_CashCrops==1 & Int_SpecialtyGeneric==1
replace a4x7=1 if Fam_Lvl2_CashCrops==1 & Int_CapitalGeneric==1
replace a4x8=1 if Fam_Lvl2_CashCrops==1 & Int_NothingGeneric==1

replace a5x1=1 if Fam_Lvl2_Livestock==1 & Int_SubCerealsGeneric==1
replace a5x2=1 if Fam_Lvl2_Livestock==1 & Int_SubVeggieGeneric==1
replace a5x3=1 if Fam_Lvl2_Livestock==1 & Int_FruitsGeneric==1
replace a5x4=1 if Fam_Lvl2_Livestock==1 & Int_CashCropsGeneric==1
replace a5x5p=1 if Fam_Lvl2_Livestock==1 & Int_LivestockGeneric==1
replace a5x6=1 if Fam_Lvl2_Livestock==1 & Int_SpecialtyGeneric==1
replace a5x7=1 if Fam_Lvl2_Livestock==1 & Int_CapitalGeneric==1
replace a5x8=1 if Fam_Lvl2_Livestock==1 & Int_NothingGeneric==1

replace a6x1=1 if Fam_Lvl2_Specialty==1 & Int_SubCerealsGeneric==1
replace a6x2=1 if Fam_Lvl2_Specialty==1 & Int_SubVeggieGeneric==1
replace a6x3=1 if Fam_Lvl2_Specialty==1 & Int_FruitsGeneric==1
replace a6x4=1 if Fam_Lvl2_Specialty==1 & Int_CashCropsGeneric==1
replace a6x5=1 if Fam_Lvl2_Specialty==1 & Int_LivestockGeneric==1
replace a6x6p=1 if Fam_Lvl2_Specialty==1 & Int_SpecialtyGeneric==1
replace a6x7=1 if Fam_Lvl2_Specialty==1 & Int_CapitalGeneric==1
replace a6x8=1 if Fam_Lvl2_Specialty==1 & Int_NothingGeneric==1

replace a7x1=1 if Fam_Lvl2_Nothing==1 & Int_SubCerealsGeneric==1
replace a7x2=1 if Fam_Lvl2_Nothing==1 & Int_SubVeggieGeneric==1
replace a7x3=1 if Fam_Lvl2_Nothing==1 & Int_FruitsGeneric==1
replace a7x4=1 if Fam_Lvl2_Nothing==1 & Int_CashCropsGeneric==1
replace a7x5=1 if Fam_Lvl2_Nothing==1 & Int_LivestockGeneric==1
replace a7x6=1 if Fam_Lvl2_Nothing==1 & Int_SpecialtyGeneric==1
replace a7x7=1 if Fam_Lvl2_Nothing==1 & Int_CapitalGeneric==1
replace a7x8p=1 if Fam_Lvl2_Nothing==1 & Int_NothingGeneric==1

*Matrix for Work Intention Interaction at the Level 2. Noted as matrix "B"

gen b1x1p=0
gen b1x2=0
gen b1x3=0
gen b1x4=0
gen b1x5=0
gen b1x6=0
gen b1x7=0
gen b1x8=0

gen b2x1=0
gen b2x2p=0
gen b2x3=0
gen b2x4=0
gen b2x5=0
gen b2x6=0
gen b2x7=0
gen b2x8=0

gen b3x1=0
gen b3x2=0
gen b3x3p=0
gen b3x4=0
gen b3x5=0
gen b3x6=0
gen b3x7=0
gen b3x8=0

gen b4x1=0
gen b4x2=0
gen b4x3=0
gen b4x4p=0
gen b4x5=0
gen b4x6=0
gen b4x7=0
gen b4x8=0

gen b5x1=0
gen b5x2=0
gen b5x3=0
gen b5x4=0
gen b5x5p=0
gen b5x6=0
gen b5x7=0
gen b5x8=0

gen b6x1=0
gen b6x2=0
gen b6x3=0
gen b6x4=0
gen b6x5=0
gen b6x6p=0
gen b6x7=0
gen b6x8=0

gen b7x1=0
gen b7x2=0
gen b7x3=0
gen b7x4=0
gen b7x5=0
gen b7x6=0
gen b7x7p=0
gen b7x8=0

replace b1x1p=1 if Wrk_Lvl2_Cereals==1 & Int_SubCerealsGeneric==1
replace b1x2=1 if Wrk_Lvl2_Cereals==1 & Int_SubVeggieGeneric==1
replace b1x3=1 if Wrk_Lvl2_Cereals==1 & Int_FruitsGeneric==1
replace b1x4=1 if Wrk_Lvl2_Cereals==1 & Int_CashCropsGeneric==1
replace b1x5=1 if Wrk_Lvl2_Cereals==1 & Int_LivestockGeneric==1
replace b1x6=1 if Wrk_Lvl2_Cereals==1 & Int_SpecialtyGeneric==1
replace b1x7=1 if Wrk_Lvl2_Cereals==1 & Int_CapitalGeneric==1
replace b1x8=1 if Wrk_Lvl2_Cereals==1 & Int_NothingGeneric==1

replace b2x1=1 if Wrk_Lvl2_Vegetables==1 & Int_SubCerealsGeneric==1
replace b2x2p=1 if Wrk_Lvl2_Vegetables==1 & Int_SubVeggieGeneric==1
replace b2x3=1 if Wrk_Lvl2_Vegetables==1 & Int_FruitsGeneric==1
replace b2x4=1 if Wrk_Lvl2_Vegetables==1 & Int_CashCropsGeneric==1
replace b2x5=1 if Wrk_Lvl2_Vegetables==1 & Int_LivestockGeneric==1
replace b2x6=1 if Wrk_Lvl2_Vegetables==1 & Int_SpecialtyGeneric==1
replace b2x7=1 if Wrk_Lvl2_Vegetables==1 & Int_CapitalGeneric==1
replace b2x8=1 if Wrk_Lvl2_Vegetables==1 & Int_NothingGeneric==1

replace b3x1=1 if Wrk_Lvl2_Fruits==1 & Int_SubCerealsGeneric==1
replace b3x2=1 if Wrk_Lvl2_Fruits==1 & Int_SubVeggieGeneric==1
replace b3x3p=1 if Wrk_Lvl2_Fruits==1 & Int_FruitsGeneric==1
replace b3x4=1 if Wrk_Lvl2_Fruits==1 & Int_CashCropsGeneric==1
replace b3x5=1 if Wrk_Lvl2_Fruits==1 & Int_LivestockGeneric==1
replace b3x6=1 if Wrk_Lvl2_Fruits==1 & Int_SpecialtyGeneric==1
replace b3x7=1 if Wrk_Lvl2_Fruits==1 & Int_CapitalGeneric==1
replace b3x8=1 if Wrk_Lvl2_Fruits==1 & Int_NothingGeneric==1

replace b4x1=1 if Wrk_Lvl2_CashCrops==1 & Int_SubCerealsGeneric==1
replace b4x2=1 if Wrk_Lvl2_CashCrops==1 & Int_SubVeggieGeneric==1
replace b4x3=1 if Wrk_Lvl2_CashCrops==1 & Int_FruitsGeneric==1
replace b4x4p=1 if Wrk_Lvl2_CashCrops==1 & Int_CashCropsGeneric==1
replace b4x5=1 if Wrk_Lvl2_CashCrops==1 & Int_LivestockGeneric==1
replace b4x6=1 if Wrk_Lvl2_CashCrops==1 & Int_SpecialtyGeneric==1
replace b4x7=1 if Wrk_Lvl2_CashCrops==1 & Int_CapitalGeneric==1
replace b4x8=1 if Wrk_Lvl2_CashCrops==1 & Int_NothingGeneric==1

replace b5x1=1 if Wrk_Lvl2_Livestock==1 & Int_SubCerealsGeneric==1
replace b5x2=1 if Wrk_Lvl2_Livestock==1 & Int_SubVeggieGeneric==1
replace b5x3=1 if Wrk_Lvl2_Livestock==1 & Int_FruitsGeneric==1
replace b5x4=1 if Wrk_Lvl2_Livestock==1 & Int_CashCropsGeneric==1
replace b5x5p=1 if Wrk_Lvl2_Livestock==1 & Int_LivestockGeneric==1
replace b5x6=1 if Wrk_Lvl2_Livestock==1 & Int_SpecialtyGeneric==1
replace b5x7=1 if Wrk_Lvl2_Livestock==1 & Int_CapitalGeneric==1
replace b5x8=1 if Wrk_Lvl2_Livestock==1 & Int_NothingGeneric==1

replace b6x1=1 if Wrk_Lvl2_Specialty==1 & Int_SubCerealsGeneric==1
replace b6x2=1 if Wrk_Lvl2_Specialty==1 & Int_SubVeggieGeneric==1
replace b6x3=1 if Wrk_Lvl2_Specialty==1 & Int_FruitsGeneric==1
replace b6x4=1 if Wrk_Lvl2_Specialty==1 & Int_CashCropsGeneric==1
replace b6x5=1 if Wrk_Lvl2_Specialty==1 & Int_LivestockGeneric==1
replace b6x6p=1 if Wrk_Lvl2_Specialty==1 & Int_SpecialtyGeneric==1
replace b6x7=1 if Wrk_Lvl2_Specialty==1 & Int_CapitalGeneric==1
replace b6x8=1 if Wrk_Lvl2_Specialty==1 & Int_NothingGeneric==1


replace b7x1=1 if Wrk_Lvl2_Capital==1 & Int_SubCerealsGeneric==1
replace b7x2=1 if Wrk_Lvl2_Capital==1 & Int_SubVeggieGeneric==1
replace b7x3=1 if Wrk_Lvl2_Capital==1 & Int_FruitsGeneric==1
replace b7x4=1 if Wrk_Lvl2_Capital==1 & Int_CashCropsGeneric==1
replace b7x5=1 if Wrk_Lvl2_Capital==1 & Int_LivestockGeneric==1
replace b7x6=1 if Wrk_Lvl2_Capital==1 & Int_SpecialtyGeneric==1
replace b7x7p=1 if Wrk_Lvl2_Capital==1 & Int_CapitalGeneric==1
replace b7x8=1 if Wrk_Lvl2_Capital==1 & Int_NothingGeneric==1




*Matrix for Family Work at level 2, Noted as Matrix "C"

gen c1x1p=0
gen c1x2=0
gen c1x3=0
gen c1x4=0
gen c1x5=0
gen c1x6=0
gen c1x7=0

gen c2x1=0
gen c2x2p=0
gen c2x3=0
gen c2x4=0
gen c2x5=0
gen c2x6=0
gen c2x7=0

gen c3x1=0
gen c3x2=0
gen c3x3p=0
gen c3x4=0
gen c3x5=0
gen c3x6=0
gen c3x7=0

gen c4x1=0
gen c4x2=0
gen c4x3=0
gen c4x4p=0
gen c4x5=0
gen c4x6=0
gen c4x7=0

gen c5x1=0
gen c5x2=0
gen c5x3=0
gen c5x4=0
gen c5x5p=0
gen c5x6=0
gen c5x7=0

gen c6x1=0
gen c6x2=0
gen c6x3=0
gen c6x4=0
gen c6x5=0
gen c6x6p=0
gen c6x7=0

gen c7x1=0
gen c7x2=0
gen c7x3=0
gen c7x4=0
gen c7x5=0
gen c7x6=0
gen c7x7=0

replace c1x1p=1 if Fam_Lvl2_Cereals==1 & Wrk_Lvl2_Cereals==1
replace c1x2=1 if Fam_Lvl2_Cereals==1 & Wrk_Lvl2_Vegetables==1
replace c1x3=1 if Fam_Lvl2_Cereals==1 & Wrk_Lvl2_Fruits==1
replace c1x4=1 if Fam_Lvl2_Cereals==1 & Wrk_Lvl2_CashCrops==1
replace c1x5=1 if Fam_Lvl2_Cereals==1 & Wrk_Lvl2_Livestock==1
replace c1x6=1 if Fam_Lvl2_Cereals==1 & Wrk_Lvl2_Specialty==1
replace c1x7=1 if Fam_Lvl2_Cereals==1 & Wrk_Lvl2_Capital==1

replace c2x1=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_Cereals==1
replace c2x2p=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_Vegetables==1
replace c2x3=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_Fruits==1
replace c2x4=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_CashCrops==1
replace c2x5=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_Livestock==1
replace c2x6=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_Specialty==1
replace c2x7=1 if Fam_Lvl2_Vegetables==1 & Wrk_Lvl2_Capital==1

replace c3x1=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_Cereals==1
replace c3x2=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_Vegetables==1
replace c3x3p=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_Fruits==1
replace c3x4=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_CashCrops==1
replace c3x5=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_Livestock==1
replace c3x6=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_Specialty==1
replace c3x7=1 if Fam_Lvl2_Fruits==1 & Wrk_Lvl2_Capital==1

replace c4x1=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_Cereals==1
replace c4x2=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_Vegetables==1
replace c4x3=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_Fruits==1
replace c4x4p=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_CashCrops==1
replace c4x5=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_Livestock==1
replace c4x6=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_Specialty==1
replace c4x7=1 if Fam_Lvl2_CashCrops==1 & Wrk_Lvl2_Capital==1

replace c5x1=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_Cereals==1
replace c5x2=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_Vegetables==1
replace c5x3=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_Fruits==1
replace c5x4=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_CashCrops==1
replace c5x5p=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_Livestock==1
replace c5x6=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_Specialty==1
replace c5x7=1 if Fam_Lvl2_Livestock==1 & Wrk_Lvl2_Capital==1

replace c6x1=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_Cereals==1
replace c6x2=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_Vegetables==1
replace c6x3=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_Fruits==1
replace c6x4=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_CashCrops==1
replace c6x5=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_Livestock==1
replace c6x6p=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_Specialty==1
replace c6x7=1 if Fam_Lvl2_Specialty==1 & Wrk_Lvl2_Capital==1

replace c7x1=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_Cereals==1
replace c7x2=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_Vegetables==1
replace c7x3=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_Fruits==1
replace c7x4=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_CashCrops==1
replace c7x5=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_Livestock==1
replace c7x6=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_Specialty==1
replace c7x7=1 if Fam_Lvl2_Nothing==1 & Wrk_Lvl2_Capital==1



*Family Wrk Matchings at the other two levels. Noted as matrices "D" for level 1 and "E" for level 3. Fuck matrix D BTW. It fucking sucks. I ican't futhre stress how much I fucking hate it.;

gen d01x01p=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Vegetables==1
gen d01x02=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Cereals==1
gen d01x03=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Legumes==1
gen d01x04=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Fruits==1
gen d01x05=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Oilseeds==1
gen d01x06=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Flowers==1
gen d01x07=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Spices==1
gen d01x08=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Cows==1
gen d01x09=1 if Family_Grows_Vegetables==1 & Demo_Wrk_GoatsSheep==1
gen d01x10=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Chickens==1
gen d01x11=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Bees==1
gen d01x12=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Niche==1
gen d01x13=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Fish==1
gen d01x14=1 if Family_Grows_Vegetables==1 & Demo_Wrk_Irrigation==1
gen d01x15=1 if Family_Grows_Vegetables==1 & Demo_Wrk_PackingStorage==1
gen d01x16=1 if Family_Grows_Vegetables==1 & Demo_Wrk_ProtectedCult==1

gen d02x01=1 if Family_Grows_Cereals==1 & Demo_Wrk_Vegetables==1
gen d02x02p=1 if Family_Grows_Cereals==1 & Demo_Wrk_Cereals==1
gen d02x03=1 if Family_Grows_Cereals==1 & Demo_Wrk_Legumes==1
gen d02x04=1 if Family_Grows_Cereals==1 & Demo_Wrk_Fruits==1
gen d02x05=1 if Family_Grows_Cereals==1 & Demo_Wrk_Oilseeds==1
gen d02x06=1 if Family_Grows_Cereals==1 & Demo_Wrk_Flowers==1
gen d02x07=1 if Family_Grows_Cereals==1 & Demo_Wrk_Spices==1
gen d02x08=1 if Family_Grows_Cereals==1 & Demo_Wrk_Cows==1
gen d02x09=1 if Family_Grows_Cereals==1 & Demo_Wrk_GoatsSheep==1
gen d02x10=1 if Family_Grows_Cereals==1 & Demo_Wrk_Chickens==1
gen d02x11=1 if Family_Grows_Cereals==1 & Demo_Wrk_Bees==1
gen d02x12=1 if Family_Grows_Cereals==1 & Demo_Wrk_Niche==1
gen d02x13=1 if Family_Grows_Cereals==1 & Demo_Wrk_Fish==1
gen d02x14=1 if Family_Grows_Cereals==1 & Demo_Wrk_Irrigation==1
gen d02x15=1 if Family_Grows_Cereals==1 & Demo_Wrk_PackingStorage==1
gen d02x16=1 if Family_Grows_Cereals==1 & Demo_Wrk_ProtectedCult==1

gen d03x01=1 if Family_Grows_Legumes==1 & Demo_Wrk_Vegetables==1
gen d03x02=1 if Family_Grows_Legumes==1 & Demo_Wrk_Cereals==1
gen d03x03p=1 if Family_Grows_Legumes==1 & Demo_Wrk_Legumes==1
gen d03x04=1 if Family_Grows_Legumes==1 & Demo_Wrk_Fruits==1
gen d03x05=1 if Family_Grows_Legumes==1 & Demo_Wrk_Oilseeds==1
gen d03x06=1 if Family_Grows_Legumes==1 & Demo_Wrk_Flowers==1
gen d03x07=1 if Family_Grows_Legumes==1 & Demo_Wrk_Spices==1
gen d03x08=1 if Family_Grows_Legumes==1 & Demo_Wrk_Cows==1
gen d03x09=1 if Family_Grows_Legumes==1 & Demo_Wrk_GoatsSheep==1
gen d03x10=1 if Family_Grows_Legumes==1 & Demo_Wrk_Chickens==1
gen d03x11=1 if Family_Grows_Legumes==1 & Demo_Wrk_Bees==1
gen d03x12=1 if Family_Grows_Legumes==1 & Demo_Wrk_Niche==1
gen d03x13=1 if Family_Grows_Legumes==1 & Demo_Wrk_Fish==1
gen d03x14=1 if Family_Grows_Legumes==1 & Demo_Wrk_Irrigation==1
gen d03x15=1 if Family_Grows_Legumes==1 & Demo_Wrk_PackingStorage==1
gen d03x16=1 if Family_Grows_Legumes==1 & Demo_Wrk_ProtectedCult==1

gen d04x01=1 if Family_Grows_Fruits==1 & Demo_Wrk_Vegetables==1
gen d04x02=1 if Family_Grows_Fruits==1 & Demo_Wrk_Cereals==1
gen d04x03=1 if Family_Grows_Fruits==1 & Demo_Wrk_Legumes==1
gen d04x04p=1 if Family_Grows_Fruits==1 & Demo_Wrk_Fruits==1
gen d04x05=1 if Family_Grows_Fruits==1 & Demo_Wrk_Oilseeds==1
gen d04x06=1 if Family_Grows_Fruits==1 & Demo_Wrk_Flowers==1
gen d04x07=1 if Family_Grows_Fruits==1 & Demo_Wrk_Spices==1
gen d04x08=1 if Family_Grows_Fruits==1 & Demo_Wrk_Cows==1
gen d04x09=1 if Family_Grows_Fruits==1 & Demo_Wrk_GoatsSheep==1
gen d04x10=1 if Family_Grows_Fruits==1 & Demo_Wrk_Chickens==1
gen d04x11=1 if Family_Grows_Fruits==1 & Demo_Wrk_Bees==1
gen d04x12=1 if Family_Grows_Fruits==1 & Demo_Wrk_Niche==1
gen d04x13=1 if Family_Grows_Fruits==1 & Demo_Wrk_Fish==1
gen d04x14=1 if Family_Grows_Fruits==1 & Demo_Wrk_Irrigation==1
gen d04x15=1 if Family_Grows_Fruits==1 & Demo_Wrk_PackingStorage==1
gen d04x16=1 if Family_Grows_Fruits==1 & Demo_Wrk_ProtectedCult==1

gen d05x01=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Vegetables==1
gen d05x02=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Cereals==1
gen d05x03=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Legumes==1
gen d05x04=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Fruits==1
gen d05x05p=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Oilseeds==1
gen d05x06=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Flowers==1
gen d05x07=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Spices==1
gen d05x08=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Cows==1
gen d05x09=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_GoatsSheep==1
gen d05x10=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Chickens==1
gen d05x11=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Bees==1
gen d05x12=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Niche==1
gen d05x13=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Fish==1
gen d05x14=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_Irrigation==1
gen d05x15=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_PackingStorage==1
gen d05x16=1 if Family_Grows_Oilseeds==1 & Demo_Wrk_ProtectedCult==1

gen d06x01=1 if Family_Grows_Flowers==1 & Demo_Wrk_Vegetables==1
gen d06x02=1 if Family_Grows_Flowers==1 & Demo_Wrk_Cereals==1
gen d06x03=1 if Family_Grows_Flowers==1 & Demo_Wrk_Legumes==1
gen d06x04=1 if Family_Grows_Flowers==1 & Demo_Wrk_Fruits==1
gen d06x05=1 if Family_Grows_Flowers==1 & Demo_Wrk_Oilseeds==1
gen d06x06p=1 if Family_Grows_Flowers==1 & Demo_Wrk_Flowers==1
gen d06x07=1 if Family_Grows_Flowers==1 & Demo_Wrk_Spices==1
gen d06x08=1 if Family_Grows_Flowers==1 & Demo_Wrk_Cows==1
gen d06x09=1 if Family_Grows_Flowers==1 & Demo_Wrk_GoatsSheep==1
gen d06x10=1 if Family_Grows_Flowers==1 & Demo_Wrk_Chickens==1
gen d06x11=1 if Family_Grows_Flowers==1 & Demo_Wrk_Bees==1
gen d06x12=1 if Family_Grows_Flowers==1 & Demo_Wrk_Niche==1
gen d06x13=1 if Family_Grows_Flowers==1 & Demo_Wrk_Fish==1
gen d06x14=1 if Family_Grows_Flowers==1 & Demo_Wrk_Irrigation==1
gen d06x15=1 if Family_Grows_Flowers==1 & Demo_Wrk_PackingStorage==1
gen d06x16=1 if Family_Grows_Flowers==1 & Demo_Wrk_ProtectedCult==1

gen d07x01=1 if Family_Grows_Spices==1 & Demo_Wrk_Vegetables==1
gen d07x02=1 if Family_Grows_Spices==1 & Demo_Wrk_Cereals==1
gen d07x03=1 if Family_Grows_Spices==1 & Demo_Wrk_Legumes==1
gen d07x04=1 if Family_Grows_Spices==1 & Demo_Wrk_Fruits==1
gen d07x05=1 if Family_Grows_Spices==1 & Demo_Wrk_Oilseeds==1
gen d07x06=1 if Family_Grows_Spices==1 & Demo_Wrk_Flowers==1
gen d07x07p=1 if Family_Grows_Spices==1 & Demo_Wrk_Spices==1
gen d07x08=1 if Family_Grows_Spices==1 & Demo_Wrk_Cows==1
gen d07x09=1 if Family_Grows_Spices==1 & Demo_Wrk_GoatsSheep==1
gen d07x10=1 if Family_Grows_Spices==1 & Demo_Wrk_Chickens==1
gen d07x11=1 if Family_Grows_Spices==1 & Demo_Wrk_Bees==1
gen d07x12=1 if Family_Grows_Spices==1 & Demo_Wrk_Niche==1
gen d07x13=1 if Family_Grows_Spices==1 & Demo_Wrk_Fish==1
gen d07x14=1 if Family_Grows_Spices==1 & Demo_Wrk_Irrigation==1
gen d07x15=1 if Family_Grows_Spices==1 & Demo_Wrk_PackingStorage==1
gen d07x16=1 if Family_Grows_Spices==1 & Demo_Wrk_ProtectedCult==1

gen d08x01=1 if Family_Grows_Cows==1 & Demo_Wrk_Vegetables==1
gen d08x02=1 if Family_Grows_Cows==1 & Demo_Wrk_Cereals==1
gen d08x03=1 if Family_Grows_Cows==1 & Demo_Wrk_Legumes==1
gen d08x04=1 if Family_Grows_Cows==1 & Demo_Wrk_Fruits==1
gen d08x05=1 if Family_Grows_Cows==1 & Demo_Wrk_Oilseeds==1
gen d08x06=1 if Family_Grows_Cows==1 & Demo_Wrk_Flowers==1
gen d08x07=1 if Family_Grows_Cows==1 & Demo_Wrk_Spices==1
gen d08x08p=1 if Family_Grows_Cows==1 & Demo_Wrk_Cows==1
gen d08x09=1 if Family_Grows_Cows==1 & Demo_Wrk_GoatsSheep==1
gen d08x10=1 if Family_Grows_Cows==1 & Demo_Wrk_Chickens==1
gen d08x11=1 if Family_Grows_Cows==1 & Demo_Wrk_Bees==1
gen d08x12=1 if Family_Grows_Cows==1 & Demo_Wrk_Niche==1
gen d08x13=1 if Family_Grows_Cows==1 & Demo_Wrk_Fish==1
gen d08x14=1 if Family_Grows_Cows==1 & Demo_Wrk_Irrigation==1
gen d08x15=1 if Family_Grows_Cows==1 & Demo_Wrk_PackingStorage==1
gen d08x16=1 if Family_Grows_Cows==1 & Demo_Wrk_ProtectedCult==1

gen d09x01=1 if Family_Grows_Sheep==1 & Demo_Wrk_Vegetables==1
gen d09x02=1 if Family_Grows_Sheep==1 & Demo_Wrk_Cereals==1
gen d09x03=1 if Family_Grows_Sheep==1 & Demo_Wrk_Legumes==1
gen d09x04=1 if Family_Grows_Sheep==1 & Demo_Wrk_Fruits==1
gen d09x05=1 if Family_Grows_Sheep==1 & Demo_Wrk_Oilseeds==1
gen d09x06=1 if Family_Grows_Sheep==1 & Demo_Wrk_Flowers==1
gen d09x07=1 if Family_Grows_Sheep==1 & Demo_Wrk_Spices==1
gen d09x08=1 if Family_Grows_Sheep==1 & Demo_Wrk_Cows==1
gen d09x09p=1 if Family_Grows_Sheep==1 & Demo_Wrk_GoatsSheep==1
gen d09x10=1 if Family_Grows_Sheep==1 & Demo_Wrk_Chickens==1
gen d09x11=1 if Family_Grows_Sheep==1 & Demo_Wrk_Bees==1
gen d09x12=1 if Family_Grows_Sheep==1 & Demo_Wrk_Niche==1
gen d09x13=1 if Family_Grows_Sheep==1 & Demo_Wrk_Fish==1
gen d09x14=1 if Family_Grows_Sheep==1 & Demo_Wrk_Irrigation==1
gen d09x15=1 if Family_Grows_Sheep==1 & Demo_Wrk_PackingStorage==1
gen d09x16=1 if Family_Grows_Sheep==1 & Demo_Wrk_ProtectedCult==1

gen d10x01=1 if Family_Grows_Pigs==1 & Demo_Wrk_Vegetables==1
gen d10x02=1 if Family_Grows_Pigs==1 & Demo_Wrk_Cereals==1
gen d10x03=1 if Family_Grows_Pigs==1 & Demo_Wrk_Legumes==1
gen d10x04=1 if Family_Grows_Pigs==1 & Demo_Wrk_Fruits==1
gen d10x05=1 if Family_Grows_Pigs==1 & Demo_Wrk_Oilseeds==1
gen d10x06=1 if Family_Grows_Pigs==1 & Demo_Wrk_Flowers==1
gen d10x07=1 if Family_Grows_Pigs==1 & Demo_Wrk_Spices==1
gen d10x08=1 if Family_Grows_Pigs==1 & Demo_Wrk_Cows==1
gen d10x09=1 if Family_Grows_Pigs==1 & Demo_Wrk_GoatsSheep==1
gen d10x10=1 if Family_Grows_Pigs==1 & Demo_Wrk_Chickens==1
gen d10x11=1 if Family_Grows_Pigs==1 & Demo_Wrk_Bees==1
gen d10x12=1 if Family_Grows_Pigs==1 & Demo_Wrk_Niche==1
gen d10x13=1 if Family_Grows_Pigs==1 & Demo_Wrk_Fish==1
gen d10x14=1 if Family_Grows_Pigs==1 & Demo_Wrk_Irrigation==1
gen d10x15=1 if Family_Grows_Pigs==1 & Demo_Wrk_PackingStorage==1
gen d10x16=1 if Family_Grows_Pigs==1 & Demo_Wrk_ProtectedCult==1

gen d11x01=1 if Family_Grows_Chicken==1 & Demo_Wrk_Vegetables==1
gen d11x02=1 if Family_Grows_Chicken==1 & Demo_Wrk_Cereals==1
gen d11x03=1 if Family_Grows_Chicken==1 & Demo_Wrk_Legumes==1
gen d11x04=1 if Family_Grows_Chicken==1 & Demo_Wrk_Fruits==1
gen d11x05=1 if Family_Grows_Chicken==1 & Demo_Wrk_Oilseeds==1
gen d11x06=1 if Family_Grows_Chicken==1 & Demo_Wrk_Flowers==1
gen d11x07=1 if Family_Grows_Chicken==1 & Demo_Wrk_Spices==1
gen d11x08=1 if Family_Grows_Chicken==1 & Demo_Wrk_Cows==1
gen d11x09=1 if Family_Grows_Chicken==1 & Demo_Wrk_GoatsSheep==1
gen d11x10p=1 if Family_Grows_Chicken==1 & Demo_Wrk_Chickens==1
gen d11x11=1 if Family_Grows_Chicken==1 & Demo_Wrk_Bees==1
gen d11x12=1 if Family_Grows_Chicken==1 & Demo_Wrk_Niche==1
gen d11x13=1 if Family_Grows_Chicken==1 & Demo_Wrk_Fish==1
gen d11x14=1 if Family_Grows_Chicken==1 & Demo_Wrk_Irrigation==1
gen d11x15=1 if Family_Grows_Chicken==1 & Demo_Wrk_PackingStorage==1
gen d11x16=1 if Family_Grows_Chicken==1 & Demo_Wrk_ProtectedCult==1

gen d12x01=1 if Family_Grows_Bees==1 & Demo_Wrk_Vegetables==1
gen d12x02=1 if Family_Grows_Bees==1 & Demo_Wrk_Cereals==1
gen d12x03=1 if Family_Grows_Bees==1 & Demo_Wrk_Legumes==1
gen d12x04=1 if Family_Grows_Bees==1 & Demo_Wrk_Fruits==1
gen d12x05=1 if Family_Grows_Bees==1 & Demo_Wrk_Oilseeds==1
gen d12x06=1 if Family_Grows_Bees==1 & Demo_Wrk_Flowers==1
gen d12x07=1 if Family_Grows_Bees==1 & Demo_Wrk_Spices==1
gen d12x08=1 if Family_Grows_Bees==1 & Demo_Wrk_Cows==1
gen d12x09=1 if Family_Grows_Bees==1 & Demo_Wrk_GoatsSheep==1
gen d12x10=1 if Family_Grows_Bees==1 & Demo_Wrk_Chickens==1
gen d12x11p=1 if Family_Grows_Bees==1 & Demo_Wrk_Bees==1
gen d12x12=1 if Family_Grows_Bees==1 & Demo_Wrk_Niche==1
gen d12x13=1 if Family_Grows_Bees==1 & Demo_Wrk_Fish==1
gen d12x14=1 if Family_Grows_Bees==1 & Demo_Wrk_Irrigation==1
gen d12x15=1 if Family_Grows_Bees==1 & Demo_Wrk_PackingStorage==1
gen d12x16=1 if Family_Grows_Bees==1 & Demo_Wrk_ProtectedCult==1

gen d13x01=1 if Family_Grows_Niche==1 & Demo_Wrk_Vegetables==1
gen d13x02=1 if Family_Grows_Niche==1 & Demo_Wrk_Cereals==1
gen d13x03=1 if Family_Grows_Niche==1 & Demo_Wrk_Legumes==1
gen d13x04=1 if Family_Grows_Niche==1 & Demo_Wrk_Fruits==1
gen d13x05=1 if Family_Grows_Niche==1 & Demo_Wrk_Oilseeds==1
gen d13x06=1 if Family_Grows_Niche==1 & Demo_Wrk_Flowers==1
gen d13x07=1 if Family_Grows_Niche==1 & Demo_Wrk_Spices==1
gen d13x08=1 if Family_Grows_Niche==1 & Demo_Wrk_Cows==1
gen d13x09=1 if Family_Grows_Niche==1 & Demo_Wrk_GoatsSheep==1
gen d13x10=1 if Family_Grows_Niche==1 & Demo_Wrk_Chickens==1
gen d13x11=1 if Family_Grows_Niche==1 & Demo_Wrk_Bees==1
gen d13x12p=1 if Family_Grows_Niche==1 & Demo_Wrk_Niche==1
gen d13x13=1 if Family_Grows_Niche==1 & Demo_Wrk_Fish==1
gen d13x14=1 if Family_Grows_Niche==1 & Demo_Wrk_Irrigation==1
gen d13x15=1 if Family_Grows_Niche==1 & Demo_Wrk_PackingStorage==1
gen d13x16=1 if Family_Grows_Niche==1 & Demo_Wrk_ProtectedCult==1

gen d14x01=1 if Family_Grows_Fish==1 & Demo_Wrk_Vegetables==1
gen d14x02=1 if Family_Grows_Fish==1 & Demo_Wrk_Cereals==1
gen d14x03=1 if Family_Grows_Fish==1 & Demo_Wrk_Legumes==1
gen d14x04=1 if Family_Grows_Fish==1 & Demo_Wrk_Fruits==1
gen d14x05=1 if Family_Grows_Fish==1 & Demo_Wrk_Oilseeds==1
gen d14x06=1 if Family_Grows_Fish==1 & Demo_Wrk_Flowers==1
gen d14x07=1 if Family_Grows_Fish==1 & Demo_Wrk_Spices==1
gen d14x08=1 if Family_Grows_Fish==1 & Demo_Wrk_Cows==1
gen d14x09=1 if Family_Grows_Fish==1 & Demo_Wrk_GoatsSheep==1
gen d14x10=1 if Family_Grows_Fish==1 & Demo_Wrk_Chickens==1
gen d14x11=1 if Family_Grows_Fish==1 & Demo_Wrk_Bees==1
gen d14x12=1 if Family_Grows_Fish==1 & Demo_Wrk_Niche==1
gen d14x13p=1 if Family_Grows_Fish==1 & Demo_Wrk_Fish==1
gen d14x14=1 if Family_Grows_Fish==1 & Demo_Wrk_Irrigation==1
gen d14x15=1 if Family_Grows_Fish==1 & Demo_Wrk_PackingStorage==1
gen d14x16=1 if Family_Grows_Fish==1 & Demo_Wrk_ProtectedCult==1

gen d15x01=1 if Family_Grows_Nothing==1 & Demo_Wrk_Vegetables==1
gen d15x02=1 if Family_Grows_Nothing==1 & Demo_Wrk_Cereals==1
gen d15x03=1 if Family_Grows_Nothing==1 & Demo_Wrk_Legumes==1
gen d15x04=1 if Family_Grows_Nothing==1 & Demo_Wrk_Fruits==1
gen d15x05=1 if Family_Grows_Nothing==1 & Demo_Wrk_Oilseeds==1
gen d15x06=1 if Family_Grows_Nothing==1 & Demo_Wrk_Flowers==1
gen d15x07=1 if Family_Grows_Nothing==1 & Demo_Wrk_Spices==1
gen d15x08=1 if Family_Grows_Nothing==1 & Demo_Wrk_Cows==1
gen d15x09=1 if Family_Grows_Nothing==1 & Demo_Wrk_GoatsSheep==1
gen d15x10=1 if Family_Grows_Nothing==1 & Demo_Wrk_Chickens==1
gen d15x11=1 if Family_Grows_Nothing==1 & Demo_Wrk_Bees==1
gen d15x12=1 if Family_Grows_Nothing==1 & Demo_Wrk_Niche==1
gen d15x13=1 if Family_Grows_Nothing==1 & Demo_Wrk_Fish==1
gen d15x14=1 if Family_Grows_Nothing==1 & Demo_Wrk_Irrigation==1
gen d15x15=1 if Family_Grows_Nothing==1 & Demo_Wrk_PackingStorage==1
gen d15x16=1 if Family_Grows_Nothing==1 & Demo_Wrk_ProtectedCult==1



replace d01x01p=0 if missing(d01x01p)
replace d01x02=0 if missing(d01x02)
replace d01x03=0 if missing(d01x03)
replace d01x04=0 if missing(d01x04)
replace d01x05=0 if missing(d01x05)
replace d01x06=0 if missing(d01x06)
replace d01x07=0 if missing(d01x07)
replace d01x08=0 if missing(d01x08)
replace d01x09=0 if missing(d01x09)
replace d01x10=0 if missing(d01x10)
replace d01x11=0 if missing(d01x11)
replace d01x12=0 if missing(d01x12)
replace d01x13=0 if missing(d01x13)
replace d01x14=0 if missing(d01x14)
replace d01x15=0 if missing(d01x15)
replace d01x16=0 if missing(d01x16)

replace d02x01=0 if missing(d02x01)
replace d02x02p=0 if missing(d02x02p)
replace d02x03=0 if missing(d02x03)
replace d02x04=0 if missing(d02x04)
replace d02x05=0 if missing(d02x05)
replace d02x06=0 if missing(d02x06)
replace d02x07=0 if missing(d02x07)
replace d02x08=0 if missing(d02x08)
replace d02x09=0 if missing(d02x09)
replace d02x10=0 if missing(d02x10)
replace d02x11=0 if missing(d02x11)
replace d02x12=0 if missing(d02x12)
replace d02x13=0 if missing(d02x13)
replace d02x14=0 if missing(d02x14)
replace d02x15=0 if missing(d02x15)
replace d02x16=0 if missing(d02x16)

replace d03x01=0 if missing(d03x01)
replace d03x02=0 if missing(d03x02)
replace d03x03p=0 if missing(d03x03p)
replace d03x04=0 if missing(d03x04)
replace d03x05=0 if missing(d03x05)
replace d03x06=0 if missing(d03x06)
replace d03x07=0 if missing(d03x07)
replace d03x08=0 if missing(d03x08)
replace d03x09=0 if missing(d03x09)
replace d03x10=0 if missing(d03x10)
replace d03x11=0 if missing(d03x11)
replace d03x12=0 if missing(d03x12)
replace d03x13=0 if missing(d03x13)
replace d03x14=0 if missing(d03x14)
replace d03x15=0 if missing(d03x15)
replace d03x16=0 if missing(d03x16)

replace d04x01=0 if missing(d04x01)
replace d04x02=0 if missing(d04x02)
replace d04x03=0 if missing(d04x03)
replace d04x04p=0 if missing(d04x04p)
replace d04x05=0 if missing(d04x05)
replace d04x06=0 if missing(d04x06)
replace d04x07=0 if missing(d04x07)
replace d04x08=0 if missing(d04x08)
replace d04x09=0 if missing(d04x09)
replace d04x10=0 if missing(d04x10)
replace d04x11=0 if missing(d04x11)
replace d04x12=0 if missing(d04x12)
replace d04x13=0 if missing(d04x13)
replace d04x14=0 if missing(d04x14)
replace d04x15=0 if missing(d04x15)
replace d04x16=0 if missing(d04x16)

replace d05x01=0 if missing(d05x01)
replace d05x02=0 if missing(d05x02)
replace d05x03=0 if missing(d05x03)
replace d05x04=0 if missing(d05x04)
replace d05x05p=0 if missing(d05x05p)
replace d05x06=0 if missing(d05x06)
replace d05x07=0 if missing(d05x07)
replace d05x08=0 if missing(d05x08)
replace d05x09=0 if missing(d05x09)
replace d05x10=0 if missing(d05x10)
replace d05x11=0 if missing(d05x11)
replace d05x12=0 if missing(d05x12)
replace d05x13=0 if missing(d05x13)
replace d05x14=0 if missing(d05x14)
replace d05x15=0 if missing(d05x15)
replace d05x16=0 if missing(d05x16)

replace d06x01=0 if missing(d06x01)
replace d06x02=0 if missing(d06x02)
replace d06x03=0 if missing(d06x03)
replace d06x04=0 if missing(d06x04)
replace d06x05=0 if missing(d06x05)
replace d06x06p=0 if missing(d06x06p)
replace d06x07=0 if missing(d06x07)
replace d06x08=0 if missing(d06x08)
replace d06x09=0 if missing(d06x09)
replace d06x10=0 if missing(d06x10)
replace d06x11=0 if missing(d06x11)
replace d06x12=0 if missing(d06x12)
replace d06x13=0 if missing(d06x13)
replace d06x14=0 if missing(d06x14)
replace d06x15=0 if missing(d06x15)
replace d06x16=0 if missing(d06x16)

replace d07x01=0 if missing(d07x01)
replace d07x02=0 if missing(d07x02)
replace d07x03=0 if missing(d07x03)
replace d07x04=0 if missing(d07x04)
replace d07x05=0 if missing(d07x05)
replace d07x06=0 if missing(d07x06)
replace d07x07p=0 if missing(d07x07p)
replace d07x08=0 if missing(d07x08)
replace d07x09=0 if missing(d07x09)
replace d07x10=0 if missing(d07x10)
replace d07x11=0 if missing(d07x11)
replace d07x12=0 if missing(d07x12)
replace d07x13=0 if missing(d07x13)
replace d07x14=0 if missing(d07x14)
replace d07x15=0 if missing(d07x15)
replace d07x16=0 if missing(d07x16)

replace d08x01=0 if missing(d08x01)
replace d08x02=0 if missing(d08x02)
replace d08x03=0 if missing(d08x03)
replace d08x04=0 if missing(d08x04)
replace d08x05=0 if missing(d08x05)
replace d08x06=0 if missing(d08x06)
replace d08x07=0 if missing(d08x07)
replace d08x08p=0 if missing(d08x08p)
replace d08x09=0 if missing(d08x09)
replace d08x10=0 if missing(d08x10)
replace d08x11=0 if missing(d08x11)
replace d08x12=0 if missing(d08x12)
replace d08x13=0 if missing(d08x13)
replace d08x14=0 if missing(d08x14)
replace d08x15=0 if missing(d08x15)
replace d08x16=0 if missing(d08x16)

replace d09x01=0 if missing(d09x01)
replace d09x02=0 if missing(d09x02)
replace d09x03=0 if missing(d09x03)
replace d09x04=0 if missing(d09x04)
replace d09x05=0 if missing(d09x05)
replace d09x06=0 if missing(d09x06)
replace d09x07=0 if missing(d09x07)
replace d09x08=0 if missing(d09x08)
replace d09x09p=0 if missing(d09x09p)
replace d09x10=0 if missing(d09x10)
replace d09x11=0 if missing(d09x11)
replace d09x12=0 if missing(d09x12)
replace d09x13=0 if missing(d09x13)
replace d09x14=0 if missing(d09x14)
replace d09x15=0 if missing(d09x15)
replace d09x16=0 if missing(d09x16)

replace d10x01=0 if missing(d10x01)
replace d10x02=0 if missing(d10x02)
replace d10x03=0 if missing(d10x03)
replace d10x04=0 if missing(d10x04)
replace d10x05=0 if missing(d10x05)
replace d10x06=0 if missing(d10x06)
replace d10x07=0 if missing(d10x07)
replace d10x08=0 if missing(d10x08)
replace d10x09=0 if missing(d10x09)
replace d10x10=0 if missing(d10x10)
replace d10x11=0 if missing(d10x11)
replace d10x12=0 if missing(d10x12)
replace d10x13=0 if missing(d10x13)
replace d10x14=0 if missing(d10x14)
replace d10x15=0 if missing(d10x15)
replace d10x16=0 if missing(d10x16)

replace d11x01=0 if missing(d11x01)
replace d11x02=0 if missing(d11x02)
replace d11x03=0 if missing(d11x03)
replace d11x04=0 if missing(d11x04)
replace d11x05=0 if missing(d11x05)
replace d11x06=0 if missing(d11x06)
replace d11x07=0 if missing(d11x07)
replace d11x08=0 if missing(d11x08)
replace d11x09=0 if missing(d11x09)
replace d11x10p=0 if missing(d11x10p)
replace d11x11=0 if missing(d11x11)
replace d11x12=0 if missing(d11x12)
replace d11x13=0 if missing(d11x13)
replace d11x14=0 if missing(d11x14)
replace d11x15=0 if missing(d11x15)
replace d11x16=0 if missing(d11x16)

replace d12x01=0 if missing(d12x01)
replace d12x02=0 if missing(d12x02)
replace d12x03=0 if missing(d12x03)
replace d12x04=0 if missing(d12x04)
replace d12x05=0 if missing(d12x05)
replace d12x06=0 if missing(d12x06)
replace d12x07=0 if missing(d12x07)
replace d12x08=0 if missing(d12x08)
replace d12x09=0 if missing(d12x09)
replace d12x10=0 if missing(d12x10)
replace d12x11p=0 if missing(d12x11p)
replace d12x12=0 if missing(d12x12)
replace d12x13=0 if missing(d12x13)
replace d12x14=0 if missing(d12x14)
replace d12x15=0 if missing(d12x15)
replace d12x16=0 if missing(d12x16)

replace d13x01=0 if missing(d13x01)
replace d13x02=0 if missing(d13x02)
replace d13x03=0 if missing(d13x03)
replace d13x04=0 if missing(d13x04)
replace d13x05=0 if missing(d13x05)
replace d13x06=0 if missing(d13x06)
replace d13x07=0 if missing(d13x07)
replace d13x08=0 if missing(d13x08)
replace d13x09=0 if missing(d13x09)
replace d13x10=0 if missing(d13x10)
replace d13x11=0 if missing(d13x11)
replace d13x12p=0 if missing(d13x12p)
replace d13x13=0 if missing(d13x13)
replace d13x14=0 if missing(d13x14)
replace d13x15=0 if missing(d13x15)
replace d13x16=0 if missing(d13x16)

replace d14x01=0 if missing(d14x01)
replace d14x02=0 if missing(d14x02)
replace d14x03=0 if missing(d14x03)
replace d14x04=0 if missing(d14x04)
replace d14x05=0 if missing(d14x05)
replace d14x06=0 if missing(d14x06)
replace d14x07=0 if missing(d14x07)
replace d14x08=0 if missing(d14x08)
replace d14x09=0 if missing(d14x09)
replace d14x10=0 if missing(d14x10)
replace d14x11=0 if missing(d14x11)
replace d14x12=0 if missing(d14x12)
replace d14x13p=0 if missing(d14x13p)
replace d14x14=0 if missing(d14x14)
replace d14x15=0 if missing(d14x15)
replace d14x16=0 if missing(d14x16)

replace d15x01=0 if missing(d15x01)
replace d15x02=0 if missing(d15x02)
replace d15x03=0 if missing(d15x03)
replace d15x04=0 if missing(d15x04)
replace d15x05=0 if missing(d15x05)
replace d15x06=0 if missing(d15x06)
replace d15x07=0 if missing(d15x07)
replace d15x08=0 if missing(d15x08)
replace d15x09=0 if missing(d15x09)
replace d15x10=0 if missing(d15x10)
replace d15x11=0 if missing(d15x11)
replace d15x12=0 if missing(d15x12)
replace d15x13=0 if missing(d15x13)
replace d15x14=0 if missing(d15x14)
replace d15x15=0 if missing(d15x15)
replace d15x16=0 if missing(d15x16)


gen e1x1p=0
gen e1x2=0

gen e2x1=0
gen e2x2p=0

gen e3x1=0
gen e3x2=0

replace e1x1p=1 if Fam_Lvl3_Horti==1 & Wrk_Lvl3_Horti==1
replace e1x2=1 if Fam_Lvl3_Horti==1 & Wrk_Lvl3_Ani==1

replace e2x1=1 if Fam_Lvl3_Ani==1 & Wrk_Lvl3_Horti==1
replace e2x2p=1 if Fam_Lvl3_Ani==1 & Wrk_Lvl3_Ani==1

replace e3x1=1 if Fam_Lvl3_Nothing==1 & Wrk_Lvl3_Horti==1
replace e3x2=1 if Fam_Lvl3_Nothing==1 & Wrk_Lvl3_Ani==1

*Establishing Paired Categories. Note that this format will have multiple positives as opposed to the "profiled"

gen Paired_Lvl3_FamWrk_Sum=e1x1p+e2x2p
replace Paired_Lvl3_FamWrk_Sum=0 if missing(Paired_Lvl3_FamWrk_Sum)

gen Paired_Lvl3_FamWrk=1 if Paired_Lvl3_FamWrk_Sum==1 | Paired_Lvl3_FamWrk_Sum==2
replace Paired_Lvl3_FamWrk=0 if missing(Paired_Lvl3_FamWrk)

gen Paired_Lvl1_FamWrk_Sum=d01x01p+d02x02p+d03x03p+d04x04p+d05x05p+d06x06p+d07x07p+d08x08p+d09x09p+d11x10p+d12x11p+d13x12p+d14x13p
replace Paired_Lvl1_FamWrk_Sum=0 if missing(Paired_Lvl1_FamWrk_Sum)

gen Paired_Lvl1_FamWrk=1 if Paired_Lvl1_FamWrk_Sum==1 | Paired_Lvl1_FamWrk_Sum==2 | Paired_Lvl1_FamWrk_Sum==3 | Paired_Lvl1_FamWrk_Sum==4
replace Paired_Lvl1_FamWrk=0 if missing(Paired_Lvl1_FamWrk)

gen Paired_Lvl2_FamInt_Sum=a1x1p+a2x2p+a3x3p+a4x4p+a5x5p+a6x6p+a7x8p
replace Paired_Lvl2_FamInt_Sum=0 if missing(Paired_Lvl2_FamInt_Sum)

gen Paired_Lvl2_WrkInt_Sum=b1x1p+b2x2p+b3x3p+b4x4p+b5x5p+b6x6p+b7x7p
replace Paired_Lvl2_WrkInt_Sum=0 if missing(Paired_Lvl2_WrkInt_Sum)

gen Paired_Lvl2_FamWrk_Sum=c1x1p+c2x2p+c3x3p+c4x4p+c5x5p+c6x6p
replace Paired_Lvl2_FamWrk_Sum=0 if missing(Paired_Lvl2_FamWrk_Sum)

gen Paired_Lvl2_FamInt=1 if Paired_Lvl2_FamInt_Sum==1 | Paired_Lvl2_FamInt_Sum==2 | Paired_Lvl2_FamInt_Sum==3 | Paired_Lvl2_FamInt_Sum==4
replace Paired_Lvl2_FamInt=0 if missing(Paired_Lvl2_FamInt)

gen Paired_Lvl2_WrkInt=1 if Paired_Lvl2_WrkInt_Sum==1 | Paired_Lvl2_WrkInt_Sum==3 | Paired_Lvl2_WrkInt_Sum==2 | Paired_Lvl2_WrkInt_Sum==4
replace Paired_Lvl2_WrkInt=0 if missing(Paired_Lvl2_WrkInt)

gen Paired_Lvl2_FamWrk=1 if Paired_Lvl2_FamWrk_Sum==1 | Paired_Lvl2_FamWrk_Sum==2 | Paired_Lvl2_FamWrk_Sum==3 | Paired_Lvl2_FamWrk_Sum==4
replace Paired_Lvl2_FamWrk=0 if missing(Paired_Lvl2_FamWrk)


*Group the career pathways

gen Return_to_Land=1 if Mrg_FamFarm==1 | Mrg_FindFarmJob==1 | Mrg_OwnFarm==1
replace Return_to_Land=0 if missing(Return_to_Land)


*For second group of hypotheses, I group the student body into three sections. First are the students who were succesfully family and work paired at level 3. Second are the studnets who were successfully family and work paired at Level 3. Finally are the students who never ever had the opportunity to be paired, coming from families who never farmed.

gen Sorted_Lvl3_NoTrad=1 if Paired_Lvl3_FamWrk==0 & Family_Grows_Nothing==1
replace Sorted_Lvl3_NoTrad=0 if missing(Sorted_Lvl3_NoTrad)

gen Sorted_Lvl3_Paired=1 if Paired_Lvl3_FamWrk==1
replace Sorted_Lvl3_Paired=0 if missing(Sorted_Lvl3_Paired)

gen Sorted_Lvl3_NoPaired=1 if Paired_Lvl3_FamWrk==0 & Family_Grows_Nothing==0
replace Sorted_Lvl3_NoPaired=0 if missing(Sorted_Lvl3_NoPaired)

gen Sorted_Lvl2_NoTrad=1 if Paired_Lvl2_FamWrk==0 & Family_Grows_Nothing==1
replace Sorted_Lvl2_NoTrad=0 if missing(Sorted_Lvl2_NoTrad)

gen Sorted_Lvl2_Paired=1 if Paired_Lvl2_FamWrk==1
replace Sorted_Lvl2_Paired=0 if missing(Sorted_Lvl2_Paired)

gen Sorted_Lvl2_NoPaired=1 if Paired_Lvl2_FamWrk==0 & Family_Grows_Nothing==0
replace Sorted_Lvl2_NoPaired=0 if missing(Sorted_Lvl2_NoPaired)



*As a reimagining of the mainline regression... miniMAList

gen Mal_Fam_NotCereals=1 if Fam_Lvl2_CashCrops==1 | Fam_Lvl2_Fruits==1 | Fam_Lvl2_Livestock==1 | Fam_Lvl2_Nothing==1 | Fam_Lvl2_Specialty==1 | Fam_Lvl2_Vegetables==1
replace Mal_Fam_NotCereals=0 if missing(Mal_Fam_NotCereals)

gen Mal_Fam_Cereals=1 if Fam_Lvl2_Cereals==1
replace Mal_Fam_Cereals=0 if missing(Mal_Fam_Cereals)

gen Mal_Fam_NotVeggies=1 if Fam_Lvl2_CashCrops==1 | Fam_Lvl2_Fruits==1 | Fam_Lvl2_Livestock==1 | Fam_Lvl2_Nothing==1 | Fam_Lvl2_Specialty==1 | Fam_Lvl2_Cereals==1
replace Mal_Fam_NotVeggies=0 if missing(Mal_Fam_NotVeggies)

gen Mal_Fam_Veggies=1 if Fam_Lvl2_Vegetables==1
replace Mal_Fam_Veggies=0 if missing(Mal_Fam_Veggies)

gen Mal_Fam_NotFruits=1 if Fam_Lvl2_CashCrops==1 | Fam_Lvl2_Cereals==1 | Fam_Lvl2_Livestock==1 | Fam_Lvl2_Nothing==1 | Fam_Lvl2_Specialty==1 | Fam_Lvl2_Vegetables==1
replace Mal_Fam_NotFruits=0 if missing(Mal_Fam_NotFruits)

gen Mal_Fam_Fruits=1 if Fam_Lvl2_Fruits==1
replace Mal_Fam_Fruits=0 if missing(Mal_Fam_Fruits)

gen Mal_Fam_NotCashCrops=1 if Fam_Lvl2_Fruits==1 | Fam_Lvl2_Cereals==1 | Fam_Lvl2_Livestock==1 | Fam_Lvl2_Nothing==1 | Fam_Lvl2_Specialty==1 | Fam_Lvl2_Vegetables==1
replace Mal_Fam_NotCashCrops=0 if missing(Mal_Fam_NotCashCrops)

gen Mal_Fam_CashCrops=1 if Fam_Lvl2_CashCrops==1
replace Mal_Fam_CashCrops=0 if missing(Mal_Fam_CashCrops)

gen Mal_Fam_NotLivestock=1 if Fam_Lvl2_Fruits==1 | Fam_Lvl2_Cereals==1 | Fam_Lvl2_CashCrops==1 | Fam_Lvl2_Nothing==1 | Fam_Lvl2_Specialty==1 | Fam_Lvl2_Vegetables==1
replace Mal_Fam_NotLivestock=0 if missing(Mal_Fam_NotLivestock)

gen Mal_Fam_Livestock=1 if Fam_Lvl2_Livestock==1
replace Mal_Fam_Livestock=0 if missing(Mal_Fam_Livestock)

gen Mal_Fam_NotSpecialties=1 if Fam_Lvl2_Fruits==1 | Fam_Lvl2_Cereals==1 | Fam_Lvl2_CashCrops==1 | Fam_Lvl2_Nothing==1 | Fam_Lvl2_Livestock==1 | Fam_Lvl2_Vegetables==1
replace Mal_Fam_NotSpecialties=0 if missing(Mal_Fam_NotSpecialties)

gen Mal_Fam_Specialties=1 if Fam_Lvl2_Specialty==1
replace Mal_Fam_Specialties=0 if missing(Mal_Fam_Specialties)

gen Mal_Fam_NotNothings=1 if Fam_Lvl2_Fruits==1 | Fam_Lvl2_Cereals==1 | Fam_Lvl2_CashCrops==1 | Fam_Lvl2_Specialty==1 | Fam_Lvl2_Livestock==1 | Fam_Lvl2_Vegetables==1
replace Mal_Fam_NotNothings=0 if missing(Mal_Fam_NotNothings)

gen Mal_Fam_Nothings=1 if Fam_Lvl2_Nothing==1
replace Mal_Fam_Nothings=0 if missing(Mal_Fam_Nothings)

gen Mal_Wrk_NotCereals=1 if Wrk_Lvl2_Capital==1 | Wrk_Lvl2_CashCrops==1 | Wrk_Lvl2_Fruits==1 | Wrk_Lvl2_Livestock==1 | Wrk_Lvl2_Specialty==1 | Wrk_Lvl2_Vegetables==1
replace Mal_Wrk_NotCereals=0 if missing(Mal_Wrk_NotCereals)

gen Mal_Wrk_Cereals=1 if Wrk_Lvl2_Cereals==1
replace Mal_Wrk_Cereals=0 if missing(Mal_Wrk_Cereals)

gen Mal_Wrk_NotVeggies=1 if Wrk_Lvl2_Capital==1 | Wrk_Lvl2_CashCrops==1 | Wrk_Lvl2_Fruits==1 | Wrk_Lvl2_Livestock==1 | Wrk_Lvl2_Specialty==1 | Wrk_Lvl2_Cereals==1
replace Mal_Wrk_NotVeggies=0 if missing(Mal_Wrk_NotVeggies)

gen Mal_Wrk_Veggies=1 if Wrk_Lvl2_Vegetables==1
replace Mal_Wrk_Veggies=0 if missing(Mal_Wrk_Veggies)

gen Mal_Wrk_NotFruits=1 if Wrk_Lvl2_Capital==1 | Wrk_Lvl2_CashCrops==1 | Wrk_Lvl2_Cereals==1 | Wrk_Lvl2_Livestock==1 | Wrk_Lvl2_Specialty==1 | Wrk_Lvl2_Vegetables==1
replace Mal_Wrk_NotFruits=0 if missing(Mal_Wrk_NotFruits)

gen Mal_Wrk_Fruits=1 if Wrk_Lvl2_Fruits==1
replace Mal_Wrk_Fruits=0 if missing(Mal_Wrk_Fruits)

gen Mal_Wrk_NotCashCrops=1 if Wrk_Lvl2_Capital==1 | Wrk_Lvl2_Cereals==1 | Wrk_Lvl2_Fruits==1 | Wrk_Lvl2_Livestock==1 | Wrk_Lvl2_Specialty==1 | Wrk_Lvl2_Vegetables==1
replace Mal_Wrk_NotCashCrops=0 if missing(Mal_Wrk_NotCashCrops)

gen Mal_Wrk_CashCrops=1 if Wrk_Lvl2_CashCrops==1
replace Mal_Wrk_CashCrops=0 if missing(Mal_Wrk_CashCrops)

gen Mal_Wrk_NotLivestock=1 if Wrk_Lvl2_Capital==1 | Wrk_Lvl2_CashCrops==1 | Wrk_Lvl2_Fruits==1 | Wrk_Lvl2_Cereals==1 | Wrk_Lvl2_Specialty==1 | Wrk_Lvl2_Vegetables==1
replace Mal_Wrk_NotLivestock=0 if missing(Mal_Wrk_NotLivestock)

gen Mal_Wrk_Livestock=1 if Wrk_Lvl2_Livestock==1
replace Mal_Wrk_Livestock=0 if missing(Mal_Wrk_Livestock)

gen Mal_Wrk_NotSpecialties=1 if Wrk_Lvl2_Capital==1 | Wrk_Lvl2_CashCrops==1 | Wrk_Lvl2_Fruits==1 | Wrk_Lvl2_Livestock==1 | Wrk_Lvl2_Cereals==1 | Wrk_Lvl2_Vegetables==1
replace Mal_Wrk_NotSpecialties=0 if missing(Mal_Wrk_NotSpecialties)

gen Mal_Wrk_Specialties=1 if Wrk_Lvl2_Specialty==1
replace Mal_Wrk_Specialties=0 if missing(Mal_Wrk_Specialties)

gen Mal_Wrk_NotCapital=1 if Wrk_Lvl2_Cereals==1 | Wrk_Lvl2_CashCrops==1 | Wrk_Lvl2_Fruits==1 | Wrk_Lvl2_Livestock==1 | Wrk_Lvl2_Specialty==1 | Wrk_Lvl2_Vegetables==1
replace Mal_Wrk_NotCapital=0 if missing(Mal_Wrk_NotCapital)

gen Mal_Wrk_Capital=1 if Wrk_Lvl2_Capital==1
replace Mal_Wrk_Capital=0 if missing(Mal_Wrk_Capital)


decode Demo_Birth, generate(StringYear)

destring StringYear, generate(BirthYear)

gen Age=2023-BirthYear

drop StringYear
drop Demo_Birth
drop BirthYear

gen check_fam_fruits=1 if Family_Grows_Fruits==1 & Family_Grows_Sum==1
replace check_fam_fruits=0 if missing(check_fam_fruits)

gen check_fam_veggies=1 if Family_Grows_Vegetables==1 & Family_Grows_Sum==1
replace check_fam_veggies=0 if missing(check_fam_veggies)

gen check_wrk_fruits=1 if Demo_Wrk_Fruits==1 & Demo_Wrk_Sum==1
replace check_wrk_fruits=0 if missing(check_wrk_fruits)

gen check_wrk_veggies=1 if Demo_Wrk_Vegetables==1 & Demo_Wrk_Sum==1
replace check_wrk_veggies=0 if missing(check_wrk_veggies)

gen fam_fruits_only=1 if Fam_Lvl2_Fruits==1 & Fam_Lvl2_Sum==1

gen fam_cereals_only=1 if Fam_Lvl2_Cereals==1 & Fam_Lvl2_Sum==1

gen fam_veggies_only=1 if Fam_Lvl2_Vegetables==1 & Fam_Lvl2_Sum==1

gen fam_CCs_only=1 if Fam_Lvl2_CashCrops==1 & Fam_Lvl2_Sum==1

gen fam_annies_only=1 if Fam_Lvl2_Livestock==1 & Fam_Lvl2_Sum==1

gen fam_species_only=1 if Fam_Lvl2_Specialty==1 & Fam_Lvl2_Sum==1

gen fam_nothing_only=1 if Fam_Lvl2_Nothing==1 & Fam_Lvl2_Sum==1

*Matrix F is tentative. Messin with Something

gen f1x1=1 if fam_cereals_only==1 & Wrk_Lvl2_Cereals==1
gen f1x2=1 if fam_cereals_only==1 & Wrk_Lvl2_Vegetables==1
gen f1x3=1 if fam_cereals_only==1 & Wrk_Lvl2_Fruits==1
gen f1x4=1 if fam_cereals_only==1 & Wrk_Lvl2_CashCrops==1
gen f1x5=1 if fam_cereals_only==1 & Wrk_Lvl2_Livestock==1
gen f1x6=1 if fam_cereals_only==1 & Wrk_Lvl2_Specialty==1
gen f1x7=1 if fam_cereals_only==1 & Wrk_Lvl2_Capital==1

gen f2x1=1 if fam_veggies_only==1 & Wrk_Lvl2_Cereals==1
gen f2x2=1 if fam_veggies_only==1 & Wrk_Lvl2_Vegetables==1
gen f2x3=1 if fam_veggies_only==1 & Wrk_Lvl2_Fruits==1
gen f2x4=1 if fam_veggies_only==1 & Wrk_Lvl2_CashCrops==1
gen f2x5=1 if fam_veggies_only==1 & Wrk_Lvl2_Livestock==1
gen f2x6=1 if fam_veggies_only==1 & Wrk_Lvl2_Specialty==1
gen f2x7=1 if fam_veggies_only==1 & Wrk_Lvl2_Capital==1

gen f3x1=1 if fam_fruits_only==1 & Wrk_Lvl2_Cereals==1
gen f3x2=1 if fam_fruits_only==1 & Wrk_Lvl2_Vegetables==1
gen f3x3=1 if fam_fruits_only==1 & Wrk_Lvl2_Fruits==1
gen f3x4=1 if fam_fruits_only==1 & Wrk_Lvl2_CashCrops==1
gen f3x5=1 if fam_fruits_only==1 & Wrk_Lvl2_Livestock==1
gen f3x6=1 if fam_fruits_only==1 & Wrk_Lvl2_Specialty==1
gen f3x7=1 if fam_fruits_only==1 & Wrk_Lvl2_Capital==1

gen f4x1=1 if fam_CCs_only==1 & Wrk_Lvl2_Cereals==1
gen f4x2=1 if fam_CCs_only==1 & Wrk_Lvl2_Vegetables==1
gen f4x3=1 if fam_CCs_only==1 & Wrk_Lvl2_Fruits==1
gen f4x4=1 if fam_CCs_only==1 & Wrk_Lvl2_CashCrops==1
gen f4x5=1 if fam_CCs_only==1 & Wrk_Lvl2_Livestock==1
gen f4x6=1 if fam_CCs_only==1 & Wrk_Lvl2_Specialty==1
gen f4x7=1 if fam_CCs_only==1 & Wrk_Lvl2_Capital==1

gen f5x1=1 if fam_annies_only==1 & Wrk_Lvl2_Cereals==1
gen f5x2=1 if fam_annies_only==1 & Wrk_Lvl2_Vegetables==1
gen f5x3=1 if fam_annies_only==1 & Wrk_Lvl2_Fruits==1
gen f5x4=1 if fam_annies_only==1 & Wrk_Lvl2_CashCrops==1
gen f5x5=1 if fam_annies_only==1 & Wrk_Lvl2_Livestock==1
gen f5x6=1 if fam_annies_only==1 & Wrk_Lvl2_Specialty==1
gen f5x7=1 if fam_annies_only==1 & Wrk_Lvl2_Capital==1

gen f6x1=1 if fam_species_only==1 & Wrk_Lvl2_Cereals==1
gen f6x2=1 if fam_species_only==1 & Wrk_Lvl2_Vegetables==1
gen f6x3=1 if fam_species_only==1 & Wrk_Lvl2_Fruits==1
gen f6x4=1 if fam_species_only==1 & Wrk_Lvl2_CashCrops==1
gen f6x5=1 if fam_species_only==1 & Wrk_Lvl2_Livestock==1
gen f6x6=1 if fam_species_only==1 & Wrk_Lvl2_Specialty==1
gen f6x7=1 if fam_species_only==1 & Wrk_Lvl2_Capital==1

gen f7x1=1 if fam_nothing_only==1 & Wrk_Lvl2_Cereals==1
gen f7x2=1 if fam_nothing_only==1 & Wrk_Lvl2_Vegetables==1
gen f7x3=1 if fam_nothing_only==1 & Wrk_Lvl2_Fruits==1
gen f7x4=1 if fam_nothing_only==1 & Wrk_Lvl2_CashCrops==1
gen f7x5=1 if fam_nothing_only==1 & Wrk_Lvl2_Livestock==1
gen f7x6=1 if fam_nothing_only==1 & Wrk_Lvl2_Specialty==1
gen f7x7=1 if fam_nothing_only==1 & Wrk_Lvl2_Capital==1



gen Int_Horti=1 if Int_SubVeggieGeneric==1 | Int_SubCerealsGeneric==1 | Int_FruitsGeneric==1 | Int_CashCropsGeneric==1 | Int_SpecialtyGeneric==1 | Int_CapitalGeneric==1

replace Int_Horti=0 if missing(Int_Horti)

gen Int_Nothing=1 if Int_NothingGeneric==1
replace Int_Nothing=0 if missing(Int_Nothing)

gen Int_Ani=1 if Int_LivestockGeneric==1

replace Int_Ani=0 if missing(Int_Ani)

gen RealHope=Pathway_Score+Agency_Score



*Regression List
*Mainline Regression W/ Country Fixed Effects and Entire Population
*Mainline Regression W/O Country Fixed Effects and Entire Population
*Mainline Regression W/O Country Fixed Effects and Horti Population then Ani Population then NoTrad Population

*Mainline Regression but with "miniMAList" forms

*Secondline Paired Regression outcome being career paths and the three sorted

*Secondline Paired Regression outcome being grouped careerpaths

*Secondline Paired Regression outcomg being the FIVE scores



*Eventually need to do some sort've "random placement testing"

*probably the cross table with "Profiles"

*Return the Old Tables, but updated


*At this stage, compare with older data results (matches and general tallys with the results from the original do file) ignoring the latest checks to intentions
*Then do intention checks
*then review Wrk and Fam Assignments

*Finally, do table reproductions and regression variations then fucking done with all this work.

*One of the regressions that needs to be addressed with Ram is what happens when I look at the no family farming population. For this population, the solidifying effects of what they do are no longer stratified. They seem to get nothing from their assignment.

*reg Int_LivestockGeneric Wrk_Lvl2_Capital Wrk_Lvl2_CashCrops Wrk_Lvl2_Cereals Wrk_Lvl2_Fruits Wrk_Lvl2_Livestock Wrk_Lvl2_Specialty Wrk_Lvl2_Vegetables if Family_Grows_Nothing==1

*Maybe in the cases of No Family History. the Effects are more along the lines of what they don't want to do.

*Is the diagonal still strong in either case of no family tradition and yes family tradition?

*gen SME_Farm=1 if Mrg_FamFarm==1 | Mrg_FindFarmJob==1 | Mrg_OwnFarm==1
*replace SME_Farm=0 if missing(SME_Farm)

*reg Int_LivestockGeneric Wrk_Lvl2_Fruits Wrk_Lvl2_Capital Wrk_Lvl2_Cereals Wrk_Lvl2_Vegetables Wrk_Lvl2_CashCrops Wrk_Lvl2_Specialty Wrk_Lvl2_Livestock i.DNationality if Family_Grows_Nothing==0

*reg Int_LivestockGeneric Wrk_Lvl2_Fruits Wrk_Lvl2_Capital Wrk_Lvl2_Cereals Wrk_Lvl2_Vegetables Wrk_Lvl2_CashCrops Wrk_Lvl2_Specialty Wrk_Lvl2_Livestock i.DNationality if Family_Grows_Nothing==1
