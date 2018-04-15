data housetrain;
	infile '/home/mpalanisamy0/train_new.csv' dsd firstobs=2;
	input id1 id MSSubClass MSZoning $ LotFrontage LotArea 
		Street $ Alley $ LotShape $  LandContour $ Utilities $ 
	LotConfig $ LandSlope $ Neighborhood $ Condition1 $ Condition2 $ 
	BldgType $ HouseStyle $ OverallQual OverallCond YearBuilt YearRemodAdd 
		RoofStyle $ RoofMatl $ Exterior1st $ Exterior2nd $ 
	MasVnrType $ MasVnrArea ExterQual $ ExterCond $ Foundation $ 
	BsmtQual $ BsmtCond $ BsmtExposure $ BsmtFinType1 $ BsmtFinSF1 
		BsmtFinType2 $ BsmtFinSF2 BsmtUnfSF TotalBsmtSF Heating $ 
	HeatingQC $ CentralAir $ Electrical $ FstFirSF SndFirSF LowQualFinSF 
		GrLivArea BsmtFullBath BsmtHalfBath FullBath HalfBath BedroomAbvGr 
		KitchenAbvGr KitchenQual $ TotRmsAbvGrd Functional $ 
	Fireplaces FireplacesQu $ GarageType $ GarageYrBlt GarageFinish $ 
	GarageCars GarageArea GarageQual $ GarageCond $ PavedDrive $ 
	WoodDeckSF OpenPorchSF EnclosedPorch ThirdSsnPorch ScreenPorch PoolArea 
		PoolQC $  Fence $ MiscFeature $ MiscVal MoSold YrSold 
		SaleType $ SaleCondition $ SalePrice;
	TotalSqft=GrLivArea + TotalBsmtSF;
	TotalBath=FullBath + HalfBath + BsmtFullBath + BsmtHalfBath;
	Age=YrSold - YearRemodAdd;

	if MSZoning="A" then
		MSZone=1;

	if MSZoning="C (all)" then
		MSZone=2;

	if MSZoning="FV" then
		MSZone=3;

	if MSZoning="I" then
		MSZone=4;

	if MSZoning="RH" then
		MSZone=5;

	if MSZoning="RL" then
		MSZone=6;

	if MSZoning="RP" then
		MSzone=7;

	if MSZoning="RM" then
		MSzone=8;

	if Street="Pave" then
		St=1;

	if Street="Grvl" then
		St=2;

	if Alley="Pave" then
		Aly=1;

	if Alley="Grvl" then
		Aly=2;

	if Alley="NA" then
		Aly=3;

	if LotShape="Reg" then
		LotSh=1;

	if LotShape="IR1" then
		LotSh=2;

	if LotShape="IR2" then
		LotSh=3;

	if LotShape="IR3" then
		LotSh=4;

	if LandContour="Lvl" then
		LandCt=1;

	if LandContour="Bnk" then
		LandCt=2;

	if LandContour="HLS" then
		LandCt=3;

	if LandContour="Low" then
		LandCt=4;

	if Utilities="AllPub" then
		Util=1;

	if Utilities="NoSewr" then
		Util=2;

	if Utilities="NoSeWa" then
		Util=3;

	if Utilities="ELO" then
		Util=4;

	if LotConfig="Inside" then
		LotConf=1;

	if LotConfig="Corner" then
		LotConf=2;

	if LotConfig="CulDSac" then
		LotConf=3;

	if LotConfig="FR2" then
		LotConf=4;

	if LotConfig="FR3" then
		LotConf=5;

	if LandSlope="Gtl" then
		LandSl=1;

	if LandSlope="Mod" then
		LandSl=2;

	if LandSlope="Sev" then
		LandSl=3;

	if Neighborhood="Blmngtn" then
		Neighb=1;

	if Neighborhood="Blueste" then
		Neighb=2;

	if Neighborhood="BrDale" then
		Neighb=3;

	if Neighborhood="BrkSide" then
		Neighb=4;

	if Neighborhood="ClearCr" then
		Neighb=5;

	if Neighborhood="CollgCr" then
		Neighb=6;

	if Neighborhood="Crawfor" then
		Neighb=7;

	if Neighborhood="Edwards" then
		Neighb=8;

	if Neighborhood="Gilbert" then
		Neighb=9;

	if Neighborhood="IDOTRR" then
		Neighb=10;

	if Neighborhood="MeadowV" then
		Neighb=11;

	if Neighborhood="Mitchel" then
		Neighb=12;

	if Neighborhood="NAmes" then
		Neighb=13;

	if Neighborhood="NoRidge" then
		Neighb=14;

	if Neighborhood="NPkVill" then
		Neighb=15;

	if Neighborhood="NridgHt" then
		Neighb=16;

	if Neighborhood="NWAmes" then
		Neighb=17;

	if Neighborhood="OldTown" then
		Neighb=18;

	if Neighborhood="SWISU" then
		Neighb=19;

	if Neighborhood="Sawyer" then
		Neighb=20;

	if Neighborhood="SawyerW" then
		Neighb=21;

	if Neighborhood="Somerst" then
		Neighb=22;

	if Neighborhood="StoneBr" then
		Neighb=23;

	if Neighborhood="Timber" then
		Neighb=24;

	if Neighborhood="Veenker" then
		Neighb=25;

	if Condition1="Artery" then
		Cond1=1;

	if Condition1="Feedr" then
		Cond1=2;

	if Condition1="Norm" then
		Cond1=3;

	if Condition1="RRNn" then
		Cond1=4;

	if Condition1="RRAn" then
		Cond1=5;

	if Condition1="PosN" then
		Cond1=6;

	if Condition1="PosA" then
		Cond1=7;

	if Condition1="RRNe" then
		Cond1=8;

	if Condition1="RRAe" then
		Cond1=9;

	if Condition2="Artery" then
		Cond2=1;

	if Condition2="Feedr" then
		Cond2=2;

	if Condition2="Norm" then
		Cond2=3;

	if Condition2="RRNn" then
		Cond2=4;

	if Condition2="RRAn" then
		Cond2=5;

	if Condition2="PosN" then
		Cond2=6;

	if Condition2="PosA" then
		Cond2=7;

	if Condition2="RRNe" then
		Cond2=8;

	if Condition2="RRAe" then
		Cond2=9;

	if BldgType="1Fam" then
		BldgTyp=1;

	if BldgType="2fmCon" then
		BldgTyp=2;

	if BldgType="Duplex" then
		BldgTyp=3;

	if BldgType="Twnhs" then
		BldgTyp=4;

	if BldgType="TwnhsE" then
		BldgTyp=5;

	if HouseStyle="1Story" then
		HouseStyl=1;

	if HouseStyle="1.5Fin" then
		HouseStyl=1;

	if HouseStyle="1.5Unf" then
		HouseStyl=2;

	if HouseStyle="2Story" then
		HouseStyl=3;

	if HouseStyle="2.5Fin" then
		HouseStyl=4;

	if HouseStyle="2.5Unf" then
		HouseStyl=5;

	if HouseStyle="SFoyer" then
		HouseStyl=6;

	if HouseStyle="SLvl" then
		HouseStyl=7;

	if RoofStyle="Flat" then
		RoofStyl=1;

	if RoofStyle="Gable" then
		RoofStyl=2;

	if RoofStyle="Gambrel" then
		RoofStyl=3;

	if RoofStyle="Hip" then
		RoofStyl=4;

	if RoofStyle="Mansard" then
		RoofStyl=5;

	if RoofStyle="Shed" then
		RoofStyl=6;

	if RoofMatl="ClyTile" then
		RoofMat=1;

	if RoofMatl="CompShg" then
		RoofMat=2;

	if RoofMatl="Membran" then
		RoofMat=3;

	if RoofMatl="Metal" then
		RoofMat=4;

	if RoofMatl="Roll" then
		RoofMat=5;

	if RoofMatl="Tar&Grv" then
		RoofMat=6;

	if RoofMatl="WdShake" then
		RoofMat=7;

	if RoofMatl="WdShngl" then
		RoofMat=8;

	if Exterior1st="AsbShng" then
		Ext1=1;

	if Exterior1st="AsphShn" then
		Ext1=1;

	if Exterior1st="BrkComm" then
		Ext1=2;

	if Exterior1st="BrkFace" then
		Ext1=3;

	if Exterior1st="CBlock" then
		Ext1=4;

	if Exterior1st="CemntBd" then
		Ext1=5;

	if Exterior1st="HdBoard" then
		Ext1=6;

	if Exterior1st="ImStucc" then
		Ext1=7;

	if Exterior1st="MetalSd" then
		Ext1=8;

	if Exterior1st="Other" then
		Ext1=9;

	if Exterior1st="Plywood" then
		Ext1=10;

	if Exterior1st="PreCast" then
		Ext1=11;

	if Exterior1st="Stone" then
		Ext1=12;

	if Exterior1st="Stucco" then
		Ext1=13;

	if Exterior1st="VinylSd" then
		Ext1=14;

	if Exterior1st="Wd Sdng" then
		Ext1=15;

	if Exterior1st="WdShing" then
		Ext1=16;

	if Exterior2nd="AsbShng" then
		Ext2=1;

	if Exterior2nd="AsphShn" then
		Ext2=2;

	if Exterior2nd="Brk Cmn" then
		Ext2=3;

	if Exterior2nd="BrkFace" then
		Ext2=4;

	if Exterior2nd="CBlock" then
		Ext2=5;

	if Exterior2nd="CmentBd" then
		Ext2=6;

	if Exterior2nd="HdBoard" then
		Ext2=7;

	if Exterior2nd="ImStucc" then
		Ext2=8;

	if Exterior2nd="MetalSd" then
		Ext2=9;

	if Exterior2nd="Other" then
		Ext2=10;

	if Exterior2nd="Plywood" then
		Ext2=11;

	if Exterior2nd="PreCast" then
		Ext2=12;

	if Exterior2nd="Stone" then
		Ext2=13;

	if Exterior2nd="Stucco" then
		Ext2=14;

	if Exterior2nd="VinylSd" then
		Ext2=15;

	if Exterior2nd="Wd Sdng" then
		Ext2=16;

	if Exterior2nd="Wd Shng" then
		Ext2=17;

	if MasVnrType="BrkCmn" then
		MasVnrTyp=1;

	if MasVnrType="BrkFace" then
		MasVnrTyp=2;

	if MasVnrType="CBlock" then
		MasVnrTyp=3;

	if MasVnrType="None" then
		MasVnrTyp=4;

	if MasVnrType="Stone" then
		MasVnrTyp=5;

	if ExterQual="Ex" then
		ExterQ=1;

	if ExterQual="Gd" then
		ExterQ=2;

	if ExterQual="TA" then
		ExterQ=3;

	if ExterQual="Fa" then
		ExterQ=4;

	if ExterQual="Po" then
		ExterQ=5;

	if ExterCond="Ex" then
		ExterCt=1;

	if ExterCond="Gd" then
		ExterCt=2;

	if ExterCond="TA" then
		ExterCt=3;

	if ExterCond="Fa" then
		ExterCt=4;

	if ExterCond="Po" then
		ExterCt=5;

	if BsmtQual="Ex" then
		BsmtQ=1;

	if BsmtQual="Gd" then
		BsmtQ=2;

	if BsmtQual="TA" then
		BsmtQ=3;

	if BsmtQual="Fa" then
		BsmtQ=4;

	if BsmtQual="Po" then
		BsmtQ=5;

	if BsmtQual="NA" then
		BsmtQ=6;

	if Foundation="BrkTil" then
		Foundt=1;

	if Foundation="CBlock" then
		Foundt=2;

	if Foundation="PConc" then
		Foundt=3;

	if Foundation="Slab" then
		Foundt=4;

	if Foundation="Stone" then
		Foundt=5;

	if Foundation="Wood" then
		Foundt=6;

	if BsmtCond="Ex" then
		BsmtC=1;

	if BsmtCond="Gd" then
		BsmtC=2;

	if BsmtCond="TA" then
		BsmtC=3;

	if BsmtCond="Fa" then
		BsmtC=4;

	if BsmtCond="Po" then
		BsmtC=5;

	if BsmtCond="NA" then
		BsmtC=6;

	if BsmtExposure="Gd" then
		BsmtEx=1;

	if BsmtExposure="Av" then
		BsmtEx=2;

	if BsmtExposure="Mn" then
		BsmtEx=3;

	if BsmtExposure="No" then
		BsmtEx=4;

	if BsmtExposure="NA" then
		BsmtEx=5;

	if BsmtFinType1="GLQ" then
		BsmtFT1=1;

	if BsmtFinType1="ALQ" then
		BsmtFT1=2;

	if BsmtFinType1="BLQ" then
		BsmtFT1=3;

	if BsmtFinType1="Rec" then
		BsmtFT1=4;

	if BsmtFinType1="LwQ" then
		BsmtFT1=5;

	if BsmtFinType1="Unf" then
		BsmtFT1=6;

	if BsmtFinType1="NA" then
		BsmtFT1=7;

	if BsmtFinType2="GLQ" then
		BsmtFT2=1;

	if BsmtFinType2="ALQ" then
		BsmtFT2=2;

	if BsmtFinType2="BLQ" then
		BsmtFT2=3;

	if BsmtFinType2="Rec" then
		BsmtFT2=4;

	if BsmtFinType2="LwQ" then
		BsmtFT2=5;

	if BsmtFinType2="Unf" then
		BsmtFT2=6;

	if BsmtFinType2="NA" then
		BsmtFT2=7;

	if Heating="Floor" then
		Heat=1;

	if Heating="GasA" then
		Heat=2;

	if Heating="GasW" then
		Heat=3;

	if Heating="Grav" then
		Heat=4;

	if Heating="OthW" then
		Heat=5;

	if Heating="Wall" then
		Heat=6;

	if HeatingQC="Ex" then
		HeatQC=1;

	if HeatingQC="Gd" then
		HeatQC=2;

	if HeatingQC="TA" then
		HeatQC=3;

	if HeatingQC="Fa" then
		HeatQC=4;

	if HeatingQC="Po" then
		HeatQC=5;

	if CentralAir="N" then
		CentAir=1;

	if CentralAir="Y" then
		CentAir=2;

	if Electrical="SBrkr" then
		Elec=1;

	if Electrical="FuseA" then
		Elec=2;

	if Electrical="FuseF" then
		Elec=3;

	if Electrical="FuseP" then
		Elec=4;

	if Electrical="Mix" then
		Elec=5;

	if KitchenQual="Ex" then
		KitchenQC=1;

	if KitchenQual="Gd" then
		KitchenQC=2;

	if KitchenQual="TA" then
		KitchenQC=3;

	if KitchenQual="Fa" then
		KitchenQC=4;

	if KitchenQual="Po" then
		KitchenQC=5;

	if Functional="Typ" then
		Funct=1;

	if Functional="Min1" then
		Funct=2;

	if Functional="Min2" then
		Funct=3;

	if Functional="Mod" then
		Funct=4;

	if Functional="Maj1" then
		Funct=5;

	if Functional="Maj2" then
		Funct=6;

	if Functional="Sev" then
		Funct=7;

	if Functional="Sal" then
		Funct=8;

	if FireplacesQu="Ex" then
		FireplaceQC=1;

	if FireplacesQu="Gd" then
		FireplaceQC=2;

	if FireplacesQu="TA" then
		FireplaceQC=3;

	if FireplacesQu="Fa" then
		FireplaceQC=4;

	if FireplacesQu="Po" then
		FireplaceQC=5;

	if GarageType="2Types" then
		GarType=1;

	if GarageType="Attchd" then
		GarType=2;

	if GarageType="Basment" then
		GarType=3;

	if GarageType="BuiltIn" then
		GarType=4;

	if GarageType="CarPort" then
		GarType=5;

	if GarageType="Detchd" then
		GarType=6;

	if GarageType="NA" then
		GarType=7;

	if GarageFinish="Fin" then
		GarFin=1;

	if GarageFinish="RFn" then
		GarFin=2;

	if GarageFinish="Unf" then
		GarFin=3;

	if GarageFinish="NA" then
		GarFin=4;

	if GarageQual="Ex" then
		GarageQC=1;

	if GarageQual="Gd" then
		GarageQC=2;

	if GarageQual="TA" then
		GarageQC=3;

	if GarageQual="Fa" then
		GarageQC=4;

	if GarageQual="Po" then
		GarageQC=5;

	if GarageQual="NA" then
		GarageQC=6;

	if GarageCond="Ex" then
		GarageCT=1;

	if GarageCond="Gd" then
		GarageCT=2;

	if GarageCond="TA" then
		GarageCT=3;

	if GarageCond="Fa" then
		GarageCT=4;

	if GarageCond="Po" then
		GarageCT=5;

	if PavedDrive="Y" then
		PDrive=1;

	if PavedDrive="P" then
		PDrive=2;

	if PavedDrive="N" then
		PDrive=3;

	if PoolQC="Ex" then
		PQC=1;

	if PoolQC="Gd" then
		PQC=2;

	if PoolQC="TA" then
		PQC=3;

	if PoolQC="Fa" then
		PQC=4;

	if PoolQC="NA" then
		PQC=5;

	if Fence="GdPrv" then
		Fnce=1;

	if Fence="MnPrv" then
		Fnce=2;

	if Fence="GdWo" then
		Fnce=3;

	if Fence="MnWw" then
		Fnce=4;

	if Fence="NA" then
		Fnce=5;

	if MiscFeature="Elev" then
		MisFt=1;

	if MiscFeature="Gar2" then
		MisFt=2;

	if MiscFeature="Othr" then
		MisFt=3;

	if MiscFeature="Shed" then
		MisFt=4;

	if MiscFeature="TenC" then
		MisFt=5;

	if MiscFeature="NA" then
		MisFt=6;

	if SaleType="WD" then
		SType=1;

	if SaleType="CWD" then
		SType=2;

	if SaleType="VWD" then
		SType=3;

	if SaleType="New" then
		SType=4;

	if SaleType="COD" then
		SType=5;

	if SaleType="Con" then
		SType=6;

	if SaleType="ConLw" then
		SType=7;

	if SaleType="ConLI" then
		SType=8;

	if SaleType="ConLD" then
		SType=9;

	if SaleType="Oth" then
		SType=10;

	if SaleCondition="Normal" then
		SaleCnd=1;

	if SaleCondition="Abnorml" then
		SaleCnd=2;

	if SaleCondition="AdjLand" then
		SaleCnd=3;

	if SaleCondition="Alloca" then
		SaleCnd=4;

	if SaleCondition="Family" then
		SaleCnd=5;

	if SaleCondition="Partial" then
		SaleCnd=6;
	drop MSZoning;
	drop Street;
	drop Alley;
	drop LotShape;
	drop LandContour;
	drop Utilities;
	drop LotConfig;
	drop Neighborhood;
	drop Condition1;
	drop Condition2;
	drop BldgType;
	drop HouseStyle;
	drop RoofStyle;
	drop RoofMatl;
	drop Exterior1st;
	drop Exterior2nd;
	drop MasVnrType;
	drop ExterQual;
	drop ExterCond;
	drop BsmtQual;
	drop Foundation;
	drop BsmtCond;
	drop BsmtExposure;
	drop BsmtFinType1;
	drop BsmtFinType2;
	drop Heating;
	drop HeatingQC;
	drop CentralAir;
	drop Electrical;
	drop KitchenQual;
	drop Functional;
	drop FireplacesQu;
	drop GarageType;
	drop GarageFinish;
	drop GarageQual;
	drop GarageCond;
	drop PavedDrive;
	drop PoolQC;
	drop Fence;
	drop MiscFeature;
	drop SaleType;
	drop SaleCondition;
	drop LandSlope;
	drop id1;
run;

/*PROC IMPORT
DATAFILE='/home/mpalanisamy0/test_new.csv'
DBMS=CSV
OUT=HouseTest
replace;
run;
*/
data housetest;
	infile '/home/mpalanisamy0/test_new.csv' dsd firstobs=2;
	input id1 id MSSubClass MSZoning $ LotFrontage LotArea 
		Street $ Alley $ LotShape $  LandContour $ Utilities $ 
	LotConfig $ LandSlope $ Neighborhood $ Condition1 $ Condition2 $ 
	BldgType $ HouseStyle $ OverallQual OverallCond YearBuilt YearRemodAdd 
		RoofStyle $ RoofMatl $ Exterior1st $ Exterior2nd $ 
	MasVnrType $ MasVnrArea ExterQual $ ExterCond $ Foundation $ 
	BsmtQual $ BsmtCond $ BsmtExposure $ BsmtFinType1 $ BsmtFinSF1 
		BsmtFinType2 $ BsmtFinSF2 BsmtUnfSF TotalBsmtSF Heating $ 
	HeatingQC $ CentralAir $ Electrical $ FstFirSF SndFirSF LowQualFinSF 
		GrLivArea BsmtFullBath BsmtHalfBath FullBath HalfBath BedroomAbvGr 
		KitchenAbvGr KitchenQual $ TotRmsAbvGrd Functional $ 
	Fireplaces FireplacesQu $ GarageType $ GarageYrBlt GarageFinish $ 
	GarageCars GarageArea GarageQual $ GarageCond $ PavedDrive $ 
	WoodDeckSF OpenPorchSF EnclosedPorch ThirdSsnPorch ScreenPorch PoolArea 
		PoolQC $  Fence $ MiscFeature $ MiscVal MoSold YrSold 
		SaleType $ SaleCondition $;
	TotalSqft=GrLivArea + TotalBsmtSF;
	TotalBath=FullBath + HalfBath + BsmtFullBath + BsmtHalfBath;
	Age=YrSold - YearRemodAdd;

	if MSZoning="A" then
		MSZone=1;

	if MSZoning="C (all)" then
		MSZone=2;

	if MSZoning="FV" then
		MSZone=3;

	if MSZoning="I" then
		MSZone=4;

	if MSZoning="RH" then
		MSZone=5;

	if MSZoning="RL" then
		MSZone=6;

	if MSZoning="RP" then
		MSzone=7;

	if MSZoning="RM" then
		MSzone=8;

	if Street="Pave" then
		St=1;

	if Street="Grvl" then
		St=2;

	if Alley="Pave" then
		Aly=1;

	if Alley="Grvl" then
		Aly=2;

	if Alley="NA" then
		Aly=3;

	if LotShape="Reg" then
		LotSh=1;

	if LotShape="IR1" then
		LotSh=2;

	if LotShape="IR2" then
		LotSh=3;

	if LotShape="IR3" then
		LotSh=4;

	if LandContour="Lvl" then
		LandCt=1;

	if LandContour="Bnk" then
		LandCt=2;

	if LandContour="HLS" then
		LandCt=3;

	if LandContour="Low" then
		LandCt=4;

	if Utilities="AllPub" then
		Util=1;

	if Utilities="NoSewr" then
		Util=2;

	if Utilities="NoSeWa" then
		Util=3;

	if Utilities="ELO" then
		Util=4;

	if LotConfig="Inside" then
		LotConf=1;

	if LotConfig="Corner" then
		LotConf=2;

	if LotConfig="CulDSac" then
		LotConf=3;

	if LotConfig="FR2" then
		LotConf=4;

	if LotConfig="FR3" then
		LotConf=5;

	if LandSlope="Gtl" then
		LandSl=1;

	if LandSlope="Mod" then
		LandSl=2;

	if LandSlope="Sev" then
		LandSl=3;

	if Neighborhood="Blmngtn" then
		Neighb=1;

	if Neighborhood="Blueste" then
		Neighb=2;

	if Neighborhood="BrDale" then
		Neighb=3;

	if Neighborhood="BrkSide" then
		Neighb=4;

	if Neighborhood="ClearCr" then
		Neighb=5;

	if Neighborhood="CollgCr" then
		Neighb=6;

	if Neighborhood="Crawfor" then
		Neighb=7;

	if Neighborhood="Edwards" then
		Neighb=8;

	if Neighborhood="Gilbert" then
		Neighb=9;

	if Neighborhood="IDOTRR" then
		Neighb=10;

	if Neighborhood="MeadowV" then
		Neighb=11;

	if Neighborhood="Mitchel" then
		Neighb=12;

	if Neighborhood="NAmes" then
		Neighb=13;

	if Neighborhood="NoRidge" then
		Neighb=14;

	if Neighborhood="NPkVill" then
		Neighb=15;

	if Neighborhood="NridgHt" then
		Neighb=16;

	if Neighborhood="NWAmes" then
		Neighb=17;

	if Neighborhood="OldTown" then
		Neighb=18;

	if Neighborhood="SWISU" then
		Neighb=19;

	if Neighborhood="Sawyer" then
		Neighb=20;

	if Neighborhood="SawyerW" then
		Neighb=21;

	if Neighborhood="Somerst" then
		Neighb=22;

	if Neighborhood="StoneBr" then
		Neighb=23;

	if Neighborhood="Timber" then
		Neighb=24;

	if Neighborhood="Veenker" then
		Neighb=25;

	if Condition1="Artery" then
		Cond1=1;

	if Condition1="Feedr" then
		Cond1=2;

	if Condition1="Norm" then
		Cond1=3;

	if Condition1="RRNn" then
		Cond1=4;

	if Condition1="RRAn" then
		Cond1=5;

	if Condition1="PosN" then
		Cond1=6;

	if Condition1="PosA" then
		Cond1=7;

	if Condition1="RRNe" then
		Cond1=8;

	if Condition1="RRAe" then
		Cond1=9;

	if Condition2="Artery" then
		Cond2=1;

	if Condition2="Feedr" then
		Cond2=2;

	if Condition2="Norm" then
		Cond2=3;

	if Condition2="RRNn" then
		Cond2=4;

	if Condition2="RRAn" then
		Cond2=5;

	if Condition2="PosN" then
		Cond2=6;

	if Condition2="PosA" then
		Cond2=7;

	if Condition2="RRNe" then
		Cond2=8;

	if Condition2="RRAe" then
		Cond2=9;

	if BldgType="1Fam" then
		BldgTyp=1;

	if BldgType="2fmCon" then
		BldgTyp=2;

	if BldgType="Duplex" then
		BldgTyp=3;

	if BldgType="Twnhs" then
		BldgTyp=4;

	if BldgType="TwnhsE" then
		BldgTyp=5;

	if HouseStyle="1Story" then
		HouseStyl=1;

	if HouseStyle="1.5Fin" then
		HouseStyl=1;

	if HouseStyle="1.5Unf" then
		HouseStyl=2;

	if HouseStyle="2Story" then
		HouseStyl=3;

	if HouseStyle="2.5Fin" then
		HouseStyl=4;

	if HouseStyle="2.5Unf" then
		HouseStyl=5;

	if HouseStyle="SFoyer" then
		HouseStyl=6;

	if HouseStyle="SLvl" then
		HouseStyl=7;

	if RoofStyle="Flat" then
		RoofStyl=1;

	if RoofStyle="Gable" then
		RoofStyl=2;

	if RoofStyle="Gambrel" then
		RoofStyl=3;

	if RoofStyle="Hip" then
		RoofStyl=4;

	if RoofStyle="Mansard" then
		RoofStyl=5;

	if RoofStyle="Shed" then
		RoofStyl=6;

	if RoofMatl="ClyTile" then
		RoofMat=1;

	if RoofMatl="CompShg" then
		RoofMat=2;

	if RoofMatl="Membran" then
		RoofMat=3;

	if RoofMatl="Metal" then
		RoofMat=4;

	if RoofMatl="Roll" then
		RoofMat=5;

	if RoofMatl="Tar&Grv" then
		RoofMat=6;

	if RoofMatl="WdShake" then
		RoofMat=7;

	if RoofMatl="WdShngl" then
		RoofMat=8;

	if Exterior1st="AsbShng" then
		Ext1=1;

	if Exterior1st="AsphShn" then
		Ext1=1;

	if Exterior1st="BrkComm" then
		Ext1=2;

	if Exterior1st="BrkFace" then
		Ext1=3;

	if Exterior1st="CBlock" then
		Ext1=4;

	if Exterior1st="CemntBd" then
		Ext1=5;

	if Exterior1st="HdBoard" then
		Ext1=6;

	if Exterior1st="ImStucc" then
		Ext1=7;

	if Exterior1st="MetalSd" then
		Ext1=8;

	if Exterior1st="Other" then
		Ext1=9;

	if Exterior1st="Plywood" then
		Ext1=10;

	if Exterior1st="PreCast" then
		Ext1=11;

	if Exterior1st="Stone" then
		Ext1=12;

	if Exterior1st="Stucco" then
		Ext1=13;

	if Exterior1st="VinylSd" then
		Ext1=14;

	if Exterior1st="Wd Sdng" then
		Ext1=15;

	if Exterior1st="WdShing" then
		Ext1=16;

	if Exterior2nd="AsbShng" then
		Ext2=1;

	if Exterior2nd="AsphShn" then
		Ext2=2;

	if Exterior2nd="Brk Cmn" then
		Ext2=3;

	if Exterior2nd="BrkFace" then
		Ext2=4;

	if Exterior2nd="CBlock" then
		Ext2=5;

	if Exterior2nd="CmentBd" then
		Ext2=6;

	if Exterior2nd="HdBoard" then
		Ext2=7;

	if Exterior2nd="ImStucc" then
		Ext2=8;

	if Exterior2nd="MetalSd" then
		Ext2=9;

	if Exterior2nd="Other" then
		Ext2=10;

	if Exterior2nd="Plywood" then
		Ext2=11;

	if Exterior2nd="PreCast" then
		Ext2=12;

	if Exterior2nd="Stone" then
		Ext2=13;

	if Exterior2nd="Stucco" then
		Ext2=14;

	if Exterior2nd="VinylSd" then
		Ext2=15;

	if Exterior2nd="Wd Sdng" then
		Ext2=16;

	if Exterior2nd="Wd Shng" then
		Ext2=17;

	if MasVnrType="BrkCmn" then
		MasVnrTyp=1;

	if MasVnrType="BrkFace" then
		MasVnrTyp=2;

	if MasVnrType="CBlock" then
		MasVnrTyp=3;

	if MasVnrType="None" then
		MasVnrTyp=4;

	if MasVnrType="Stone" then
		MasVnrTyp=5;

	if ExterQual="Ex" then
		ExterQ=1;

	if ExterQual="Gd" then
		ExterQ=2;

	if ExterQual="TA" then
		ExterQ=3;

	if ExterQual="Fa" then
		ExterQ=4;

	if ExterQual="Po" then
		ExterQ=5;

	if ExterCond="Ex" then
		ExterCt=1;

	if ExterCond="Gd" then
		ExterCt=2;

	if ExterCond="TA" then
		ExterCt=3;

	if ExterCond="Fa" then
		ExterCt=4;

	if ExterCond="Po" then
		ExterCt=5;

	if BsmtQual="Ex" then
		BsmtQ=1;

	if BsmtQual="Gd" then
		BsmtQ=2;

	if BsmtQual="TA" then
		BsmtQ=3;

	if BsmtQual="Fa" then
		BsmtQ=4;

	if BsmtQual="Po" then
		BsmtQ=5;

	if BsmtQual="NA" then
		BsmtQ=6;

	if Foundation="BrkTil" then
		Foundt=1;

	if Foundation="CBlock" then
		Foundt=2;

	if Foundation="PConc" then
		Foundt=3;

	if Foundation="Slab" then
		Foundt=4;

	if Foundation="Stone" then
		Foundt=5;

	if Foundation="Wood" then
		Foundt=6;

	if BsmtCond="Ex" then
		BsmtC=1;

	if BsmtCond="Gd" then
		BsmtC=2;

	if BsmtCond="TA" then
		BsmtC=3;

	if BsmtCond="Fa" then
		BsmtC=4;

	if BsmtCond="Po" then
		BsmtC=5;

	if BsmtCond="NA" then
		BsmtC=6;

	if BsmtExposure="Gd" then
		BsmtEx=1;

	if BsmtExposure="Av" then
		BsmtEx=2;

	if BsmtExposure="Mn" then
		BsmtEx=3;

	if BsmtExposure="No" then
		BsmtEx=4;

	if BsmtExposure="NA" then
		BsmtEx=5;

	if BsmtFinType1="GLQ" then
		BsmtFT1=1;

	if BsmtFinType1="ALQ" then
		BsmtFT1=2;

	if BsmtFinType1="BLQ" then
		BsmtFT1=3;

	if BsmtFinType1="Rec" then
		BsmtFT1=4;

	if BsmtFinType1="LwQ" then
		BsmtFT1=5;

	if BsmtFinType1="Unf" then
		BsmtFT1=6;

	if BsmtFinType1="NA" then
		BsmtFT1=7;

	if BsmtFinType2="GLQ" then
		BsmtFT2=1;

	if BsmtFinType2="ALQ" then
		BsmtFT2=2;

	if BsmtFinType2="BLQ" then
		BsmtFT2=3;

	if BsmtFinType2="Rec" then
		BsmtFT2=4;

	if BsmtFinType2="LwQ" then
		BsmtFT2=5;

	if BsmtFinType2="Unf" then
		BsmtFT2=6;

	if BsmtFinType2="NA" then
		BsmtFT2=7;

	if Heating="Floor" then
		Heat=1;

	if Heating="GasA" then
		Heat=2;

	if Heating="GasW" then
		Heat=3;

	if Heating="Grav" then
		Heat=4;

	if Heating="OthW" then
		Heat=5;

	if Heating="Wall" then
		Heat=6;

	if HeatingQC="Ex" then
		HeatQC=1;

	if HeatingQC="Gd" then
		HeatQC=2;

	if HeatingQC="TA" then
		HeatQC=3;

	if HeatingQC="Fa" then
		HeatQC=4;

	if HeatingQC="Po" then
		HeatQC=5;

	if CentralAir="N" then
		CentAir=1;

	if CentralAir="Y" then
		CentAir=2;

	if Electrical="SBrkr" then
		Elec=1;

	if Electrical="FuseA" then
		Elec=2;

	if Electrical="FuseF" then
		Elec=3;

	if Electrical="FuseP" then
		Elec=4;

	if Electrical="Mix" then
		Elec=5;

	if KitchenQual="Ex" then
		KitchenQC=1;

	if KitchenQual="Gd" then
		KitchenQC=2;

	if KitchenQual="TA" then
		KitchenQC=3;

	if KitchenQual="Fa" then
		KitchenQC=4;

	if KitchenQual="Po" then
		KitchenQC=5;

	if Functional="Typ" then
		Funct=1;

	if Functional="Min1" then
		Funct=2;

	if Functional="Min2" then
		Funct=3;

	if Functional="Mod" then
		Funct=4;

	if Functional="Maj1" then
		Funct=5;

	if Functional="Maj2" then
		Funct=6;

	if Functional="Sev" then
		Funct=7;

	if Functional="Sal" then
		Funct=8;

	if FireplacesQu="Ex" then
		FireplaceQC=1;

	if FireplacesQu="Gd" then
		FireplaceQC=2;

	if FireplacesQu="TA" then
		FireplaceQC=3;

	if FireplacesQu="Fa" then
		FireplaceQC=4;

	if FireplacesQu="Po" then
		FireplaceQC=5;

	if GarageType="2Types" then
		GarType=1;

	if GarageType="Attchd" then
		GarType=2;

	if GarageType="Basment" then
		GarType=3;

	if GarageType="BuiltIn" then
		GarType=4;

	if GarageType="CarPort" then
		GarType=5;

	if GarageType="Detchd" then
		GarType=6;

	if GarageType="NA" then
		GarType=7;

	if GarageFinish="Fin" then
		GarFin=1;

	if GarageFinish="RFn" then
		GarFin=2;

	if GarageFinish="Unf" then
		GarFin=3;

	if GarageFinish="NA" then
		GarFin=4;

	if GarageQual="Ex" then
		GarageQC=1;

	if GarageQual="Gd" then
		GarageQC=2;

	if GarageQual="TA" then
		GarageQC=3;

	if GarageQual="Fa" then
		GarageQC=4;

	if GarageQual="Po" then
		GarageQC=5;

	if GarageQual="NA" then
		GarageQC=6;

	if GarageCond="Ex" then
		GarageCT=1;

	if GarageCond="Gd" then
		GarageCT=2;

	if GarageCond="TA" then
		GarageCT=3;

	if GarageCond="Fa" then
		GarageCT=4;

	if GarageCond="Po" then
		GarageCT=5;

	if PavedDrive="Y" then
		PDrive=1;

	if PavedDrive="P" then
		PDrive=2;

	if PavedDrive="N" then
		PDrive=3;

	if PoolQC="Ex" then
		PQC=1;

	if PoolQC="Gd" then
		PQC=2;

	if PoolQC="TA" then
		PQC=3;

	if PoolQC="Fa" then
		PQC=4;

	if PoolQC="NA" then
		PQC=5;

	if Fence="GdPrv" then
		Fnce=1;

	if Fence="MnPrv" then
		Fnce=2;

	if Fence="GdWo" then
		Fnce=3;

	if Fence="MnWw" then
		Fnce=4;

	if Fence="NA" then
		Fnce=5;

	if MiscFeature="Elev" then
		MisFt=1;

	if MiscFeature="Gar2" then
		MisFt=2;

	if MiscFeature="Othr" then
		MisFt=3;

	if MiscFeature="Shed" then
		MisFt=4;

	if MiscFeature="TenC" then
		MisFt=5;

	if MiscFeature="NA" then
		MisFt=6;

	if SaleType="WD" then
		SType=1;

	if SaleType="CWD" then
		SType=2;

	if SaleType="VWD" then
		SType=3;

	if SaleType="New" then
		SType=4;

	if SaleType="COD" then
		SType=5;

	if SaleType="Con" then
		SType=6;

	if SaleType="ConLw" then
		SType=7;

	if SaleType="ConLI" then
		SType=8;

	if SaleType="ConLD" then
		SType=9;

	if SaleType="Oth" then
		SType=10;

	if SaleCondition="Normal" then
		SaleCnd=1;

	if SaleCondition="Abnorml" then
		SaleCnd=2;

	if SaleCondition="AdjLand" then
		SaleCnd=3;

	if SaleCondition="Alloca" then
		SaleCnd=4;

	if SaleCondition="Family" then
		SaleCnd=5;

	if SaleCondition="Partial" then
		SaleCnd=6;
	drop MSZoning;
	drop Street;
	drop Alley;
	drop LotShape;
	drop LandContour;
	drop Utilities;
	drop LotConfig;
	drop Neighborhood;
	drop Condition1;
	drop Condition2;
	drop BldgType;
	drop HouseStyle;
	drop RoofStyle;
	drop RoofMatl;
	drop Exterior1st;
	drop Exterior2nd;
	drop MasVnrType;
	drop ExterQual;
	drop ExterCond;
	drop BsmtQual;
	drop Foundation;
	drop BsmtCond;
	drop BsmtExposure;
	drop BsmtFinType1;
	drop BsmtFinType2;
	drop Heating;
	drop HeatingQC;
	drop CentralAir;
	drop Electrical;
	drop KitchenQual;
	drop Functional;
	drop FireplacesQu;
	drop GarageType;
	drop GarageFinish;
	drop GarageQual;
	drop GarageCond;
	drop PavedDrive;
	drop PoolQC;
	drop Fence;
	drop MiscFeature;
	drop SaleType;
	drop SaleCondition;
	drop LandSlope;
	drop id1;
run;

data train2;
	set housetrain housetest;
run;

/*proc print data=hpartnew; run;*/
/*proc export data=WORK.hpartnew
outfile = "/home/mpalanisamy0/train_dummy.csv"
DBMS=DLM REPLACE;
DELIMITER=',';
RUN;*/
proc reg data=housetest plots=none;
	model SalePrice=LotFrontage LotArea OverallCond YearRemodAdd MasVnrArea 
		BsmtFinSF2 LowQualFinSF BsmtFullBath BsmtHalfBath FullBath HalfBath 
		BedroomAbvGr KitchenAbvGr Fireplaces GarageArea WoodDeckSF OpenPorchSF 
		EnclosedPorch ThirdSsnPorch ScreenPorch PoolArea MiscVal MoSold YrSold MSZone 
		St Aly LotSh LandCt Util LotConf LandSl Neighb Cond1 Cond2 HouseStyl RoofStyl 
		RoofMat MasVnrTyp ExterQ ExterCt BsmtQ Foundt BsmtC BsmtEx BsmtFT1 BsmtFT2 
		Heat HeatQC CentAir Elec KitchenQC Funct FireplaceQC GarType GarFin GarageQC 
		GarageCT PDrive PQC Fnce MisFt SType SaleCnd / vif;
	run;

proc glmselect data=housetest;
	class MSZone;
	model SalePrice=LotFrontage LotArea OverallCond YearRemodAdd MasVnrArea 
		BsmtFinSF2 LowQualFinSF BsmtFullBath BsmtHalfBath FullBath HalfBath 
		BedroomAbvGr KitchenAbvGr Fireplaces GarageArea WoodDeckSF OpenPorchSF 
		EnclosedPorch ThirdSsnPorch ScreenPorch PoolArea MiscVal MoSold YrSold MSZone 
		St Aly LotSh LandCt Util LotConf LandSl Neighb Cond1 Cond2 HouseStyl RoofStyl 
		RoofMat MasVnrTyp ExterQ ExterCt BsmtQ Foundt BsmtC BsmtEx BsmtFT1 BsmtFT2 
		Heat HeatQC CentAir Elec KitchenQC Funct FireplaceQC GarType GarFin GarageQC 
		GarageCT PDrive PQC Fnce MisFt SType SaleCnd/ selection=stepwise;
	output out=results p=Predict;
run;

PROC glmselect DATA=housetrain;
	CLASS MSZone;
	model SalePrice=LotFrontage LotArea OverallCond YearRemodAdd MasVnrArea 
		BsmtFinSF2 LowQualFinSF BsmtFullBath BsmtHalfBath HalfBath BedroomAbvGr 
		KitchenAbvGr Fireplaces GarageArea WoodDeckSF OpenPorchSF EnclosedPorch 
		ThirdSsnPorch ScreenPorch PoolArea MiscVal MoSold YrSold MSZone St Aly LotSh 
		LandCt Util LotConf LandSl Neighb Cond1 Cond2 HouseStyl RoofStyl RoofMat 
		MasVnrTyp ExterQ ExterCt BsmtQ Foundt BsmtC BsmtEx BsmtFT1 BsmtFT2 Heat 
		HeatQC CentAir Elec KitchenQC Funct FireplaceQC GarType GarFin GarageQC 
		GarageCT PDrive PQC Fnce MisFt SType SaleCnd / selection=stepwise;
	output out=results p=Predict;
run;

proc glmselect data=housetrain testdata=results 
		plots (stepaxis=number)=(criterinpanel ASEPlot);
	model SalePrice=LotArea OverallCond MasVnrArea BsmtFullBath FullBath HalfBath 
		BedroomAbvGr Fireplaces GarageArea Cond2 HouseStyl RoofStyl RoofMat MasVnrTyp 
		ExterQ BsmtQ BsmtEx KitchenQC FireplaceQC/ selection=stepwise (choose=CV 
		stop=cv) CVDETAILS;
run;

/*Custom Model 1*/
/*Kaggle Score: 02223*/
PROC glmselect DATA=train2;
	model SalePrice=TotalSqft OverallQual TotalBath GarageCars Age KitchenQC 
		FireplaceQC ExterQ GarageQC/ selection=stepwise;
	output out=results p=Predict;
run;

/*SAS Predicted Model*/
/*Kaggle Score: 021633 */
proc glmselect data=train2;
	class MSZone;
	model SalePrice=LotArea OverallCond MasVnrArea BsmtFullBath FullBath HalfBath 
		BedroomAbvGr Fireplaces GarageArea Cond2 HouseStyl RoofStyl RoofMat MasVnrTyp 
		ExterQ BsmtQ BsmtEx KitchenQC FireplaceQC / selection=forward;
	output out=results p=Predict;
run;

/* All Variable Rsquare=0.78*/
proc glmselect data=train2;
	model SalePrice=LotArea OverallCond MasVnrArea BsmtFullBath FullBath HalfBath 
		BedroomAbvGr Fireplaces GarageArea Cond2 HouseStyl RoofStyl RoofMat MasVnrTyp 
		ExterQ BsmtQ BsmtEx KitchenQC FireplaceQC / selection=stepwise;
	output out=results p=Predict;
run;

/*Custom Model 2*/
/*Kaggle Score: 0.21198*/
proc glmselect data=train2;
	class MSZone;
	model SalePrice=TotalSqft OverallQual MasVnrArea TotalBath BedroomAbvGr 
		Fireplaces GarageArea Cond1 Cond2 HouseStyl BldgTyp RoofStyl RoofMat 
		MasVnrTyp ExterQ BsmtQ BsmtEx KitchenQC FireplaceQC / selection=stepwise;
	output out=results p=Predict;
run;

/*Custom Model 3-4*/
/*Kaggle Score: 0.20532*/
proc glmselect data=train2;
	class MSZone;
	model SalePrice=TotalSqft OverallQual MasVnrArea TotalBath BedroomAbvGr TotRmsAbvGrd
		LotArea BsmtFT1 BsmtFT2 Fireplaces GarageArea Cond1 Cond2 HouseStyl BldgTyp 
		RoofStyl RoofMat LotFrontage Funct MasVnrTyp ExterQ BsmtQ BsmtEx KitchenQC 
		GarFin YearRemodAdd FstFirSF GarageCars OverallCond YearBuilt
		FireplaceQC / selection=stepwise;
	output out=results p=Predict;
run;

data results2;
	set results;

	if Predict > 0 then
		SalePrice=Predict;

	if Predict < 0 then
		SalePrice=10000;
	keep id SalePrice;
	where id > 1460;
run;

proc export data=results2 outfile="/home/mpalanisamy0/test_resultc5.csv" 
		dbms=dlm;
	delimiter=',';
run;