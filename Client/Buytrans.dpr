program Buytrans;

uses
  Forms,
  uHandBook in 'uHandBook.pas' {fHandBook},
  uBuyAdd in 'uBuyAdd.pas' {fBuyAdd},
  uPassword in 'uPassword.pas' {fPassword},
  uBuyAddDetail in 'uBuyAddDetail.pas' {fBuyAddDetail},
  uBuyAddDetailLine in 'uBuyAddDetailLine.pas' {fBuyAddDetailLine},
  uMain in 'uMain.pas' {fMain},
  uBuy in 'uBuy.pas' {fBuy},
  uTransportation in 'uTransportation.pas' {fTransportation},
  uTransportationAddDetail in 'uTransportationAddDetail.pas' {fTransportationAddDetail},
  uReturn in 'uReturn.pas' {fReturn},
  uClaim in 'uClaim.pas' {fClaim},
  uRemoving in 'uRemoving.pas' {fRemoving},
  uRemovingAdd in 'uRemovingAdd.pas' {fRemovingAdd},
  uInventory in 'uInventory.pas' {fInventory},
  uInventoryAdd in 'uInventoryAdd.pas' {fInventoryAdd: TActiveForm},
  uBuyTransTerm in 'uBuyTransTerm.pas' {fBuyTransTerm},
  uBuySaleDummy in 'uBuySaleDummy.pas' {fBuySaleDummy},
  uInventoryList in 'uInventoryList.pas' {fInventoryList},
  uInventoryListReports in 'uInventoryListReports.pas' {fInventoryListReports},
  uInventoryListClose in 'uInventoryListClose.pas' {fInventoryListClose},
  uInventoryPrint in 'uInventoryPrint.pas' {fInventoryPrint},
  uDeltaDocFact in 'uDeltaDocFact.pas' {fDeltaDocFact},
  uTradeReportAddDetail in 'uTradeReportAddDetail.pas' {fTradeReportAddDetail},
  uSupply in 'uSupply.pas' {fSupply: TActiveForm},
  uSupplyResult in 'uSupplyResult.pas' {fSupplyResult},
  uRetailAudit in 'uRetailAudit.pas' {fRetailAudit},
  uStorageDoc in 'uStorageDoc.pas' {fStorageDoc},
  uStorageDocAdd in 'uStorageDocAdd.pas' {fStorageDocAdd},
  uAutoTransportation in 'uAutoTransportation.pas' {fAutoTrans},
  uAggregation in 'uAggregation.pas' {fAggregation},
  uShiftWealth in 'uShiftWealth.pas' {fShiftWealth},
  uEgaisSaleAct in 'uEgaisSaleAct.pas' {fEgaisSaleAct},
  uEgaisDrink in 'uEgaisDrink.pas' {fEgaisDrink},
  uEgaisAct in 'uEgaisAct.pas' {fEgaisAct},
  uReturnAdd in 'uReturnAdd.pas' {fReturnAdd},
  uDelivered in 'uDelivered.pas' {fDelivered},
  uRDIBuy in 'uRDIBuy.pas' {fRDIBuy},
  uEgaisReturn in 'uEgaisReturn.pas' {fEgaisReturn},
  uRegrading in 'uRegrading.pas' {fRegrading},
  uInventoryExcise in 'uInventoryExcise.pas' {fInventoryExcise},
  uEgaisRests in 'uEgaisRests.pas' {fEgaisRests},
  uTransportationEditPrice in 'uTransportationEditPrice.pas' {fTransportationEditPrice},
  uNotification in 'uNotification.pas' {fNotification},
  uEgaisRests3 in 'uEgaisRests3.pas' {fEgaisRests3},
  uExciseFix in 'uExciseFix.pas' {fExciseFix},
  uReport in 'uReport.pas' {fReport},
  uNotificationAdd in 'uNotificationAdd.pas' {fNotificationAdd},
  uRegradingDetailAdd in 'uRegradingDetailAdd.pas' {fRegradingDetailAdd},
  uExciseScan in 'uExciseScan.pas' {fExciseScan},
  uInventoryListAdd in 'uInventoryListAdd.pas' {fInventoryListAdd},
  uInventoryListCashe in 'uInventoryListCashe.pas' {fInventoryListCashe},
  uInventoryListTRAdd in 'uInventoryListTRAdd.pas' {fInventoryListTRAdd},
  uEgaisBuy in 'uEgaisBuy.pas' {fEgaisBuy};

{$R *.res}

begin
  Application.Initialize;
  Application.Title:='�������. �����������.';
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.