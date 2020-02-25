unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  DB, DBClient, MConnect, SConnect, Menus, IBCustomDataSet, LocCxUnit,
  ImgList, cxStyles, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxExportGrid4Link,
  IdMultipartFormData, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, cxImageComboBox;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfMain = class(TForm)
    AnyCommandCDS: TClientDataSet;
    InUpDelCDS: TClientDataSet;
    MainMenu: TMainMenu;
    FailMI: TMenuItem;
    ExitMI: TMenuItem;
    HandbookMI: TMenuItem;
    OperationMI: TMenuItem;
    HelpMI: TMenuItem;
    N2: TMenuItem;
    SaveDialog: TSaveDialog;
    ReportMI: TMenuItem;
    BuyMI: TMenuItem;
    TransportationMI: TMenuItem;
    ClaimMI: TMenuItem;
    CarrierMI: TMenuItem;
    SocketConnection: TSocketConnection;
    CarrierCDS: TClientDataSet;
    CarrierCDSCARRIERID: TIntegerField;
    CarrierCDSORGANIZATIONID: TIntegerField;
    CarrierCDSOrganizationName: TStringField;
    CarrierCDSNAME: TStringField;
    CarrierCDSINN: TStringField;
    CarrierCDSKPP: TStringField;
    CarrierCDSADDRESS: TStringField;
    CarrierDS: TDataSource;
    OrganizationCDS: TClientDataSet;
    OrganizationCDSORGANIZATIONID: TIntegerField;
    OrganizationCDSORGANIZATIONNAME: TStringField;
    MenuIL: TImageList;
    ReturnMI: TMenuItem;
    RemovingMI: TMenuItem;
    DocumentsMI: TMenuItem;
    InventoryMI: TMenuItem;
    ReturnTypeMI: TMenuItem;
    ReturnTypeCDS: TClientDataSet;
    ReturnTypeDS: TDataSource;
    RemovingTypeMI: TMenuItem;
    BooleanValueCDS: TClientDataSet;
    BooleanValueCDSID: TIntegerField;
    BooleanValueCDSNAME: TStringField;
    ReturnTypeCDSID: TIntegerField;
    ReturnTypeCDSNAME: TStringField;
    ReturnTypeCDSORDERNUMBER: TIntegerField;
    ReturnTypeCDSISACTUAL: TIntegerField;
    ReturnTypeCDSTERMINALID: TIntegerField;
    TerminalCDS: TClientDataSet;
    TerminalCDSID: TIntegerField;
    TerminalCDSNAME: TStringField;
    ReturnTypeCDSIsActualName: TStringField;
    ReturnTypeCDSTerminalName: TStringField;
    RemovingTypeCDS: TClientDataSet;
    RemovingTypeCDSID: TIntegerField;
    RemovingTypeCDSNAME: TStringField;
    RemovingTypeCDSORDERNUMBER: TIntegerField;
    RemovingTypeCDSISBROKEN: TIntegerField;
    RemovingTypeCDSIsBrokenName: TStringField;
    RemovingTypeCDSISACTUAL: TIntegerField;
    RemovingTypeCDSIsActualName: TStringField;
    RemovingTypeCDSTERMINALID: TIntegerField;
    RemovingTypeCDSTerminalName: TStringField;
    RemovingTypeDS: TDataSource;
    InventoryListMI: TMenuItem;
    cxStyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    RemovingTypeCDSISDUMMYSALE: TSmallintField;
    RemovingTypeCDSIsDummySaleName: TStringField;
    DeltaDocFactMI: TMenuItem;
    SupplyMI: TMenuItem;
    RetailAuditMI: TMenuItem;
    StorageDocMI: TMenuItem;
    AutoTransMI: TMenuItem;
    AggregationMI: TMenuItem;
    DistributionRateMI: TMenuItem;
    DistributionRateCDS: TClientDataSet;
    DistributionRateDS: TDataSource;
    DistributionRateCDSID: TIntegerField;
    DistributionRateCDSFIRMID: TIntegerField;
    DistributionRateCDSFIRMNAME: TStringField;
    DistributionRateCDSDBID: TIntegerField;
    DistributionRateCDSADDRESS: TStringField;
    DistributionRateCDSRATE: TFloatField;
    ShiftMI: TMenuItem;
    DrinkAlcCodeCDS: TClientDataSet;
    DrinkAlcCodeCDSID: TIntegerField;
    DrinkAlcCodeCDSDRINKID: TIntegerField;
    DrinkAlcCodeCDSFACTORY: TStringField;
    DrinkAlcCodeCDSPRINTMARK: TStringField;
    DrinkAlcCodeCDSCOUNTUNIT: TIntegerField;
    DrinkAlcCodeCDSALCCODE: TStringField;
    DrinkAlcCodeCDSEGAISDRINKNAME: TStringField;
    N1: TMenuItem;
    DrinkAlcCodeCDSVOLUME: TFloatField;
    DrinkAlcCodeCDSDIRECTIONNAME: TStringField;
    RegradingMI: TMenuItem;
    EgaisRestsMI: TMenuItem;
    N3: TMenuItem;
    BonusTabakCDS: TClientDataSet;
    BonusTabakDS: TDataSource;
    BonusTabakCDSid: TIntegerField;
    BonusTabakCDSbonustabakfirmtypeid: TIntegerField;
    BonusTabakCDSfirmid: TIntegerField;
    BonusTabakCDSfactoryid: TIntegerField;
    BonusTabakCDSbonustabakactionid: TIntegerField;
    BonusTabakCDSvalueaction: TFloatField;
    BonusTabakMI: TMenuItem;
    BonusTabakCDSwhencreate: TDateTimeField;
    BonusTabakCDSwhocreate: TStringField;
    BonusTabakActionCDS: TClientDataSet;
    BonusTabakActionCDSid: TIntegerField;
    BonusTabakActionCDSname: TStringField;
    BonusTabakCDSActionName: TStringField;
    BonusTabakCDSfname: TStringField;
    BonusTabakCDSfaname: TStringField;
    BonusTabakCDSbtfname: TStringField;
    EgaisFirmTypeMI: TMenuItem;
    EgaisFirmTypeCDS: TClientDataSet;
    EgaisFirmTypeCDSID: TIntegerField;
    EgaisFirmTypeCDSFIRMID: TIntegerField;
    EgaisFirmTypeCDSFIRMNAME: TStringField;
    NotificationMI: TMenuItem;
    EgaisRests3MI: TMenuItem;
    RetailErrorEgaisMI: TMenuItem;
    N4: TMenuItem;
    RetailEgaisDocCDS: TClientDataSet;
    RetailEgaisDocCDSDOCTYPENAME: TStringField;
    RetailEgaisDocCDSDOCID: TIntegerField;
    RetailEgaisDocCDSEGAISCONNECTID: TIntegerField;
    RetailEgaisDocCDSEGAISCONNECTNAME: TStringField;
    RetailEgaisDocCDSEGAISSTATUSNAME: TStringField;
    RetailEgaisDocCDSDOCNUMBER: TStringField;
    RetailEgaisDocCDSDOCPRESENT: TDateTimeField;
    RetailEgaisDocCDSUTM_IP: TStringField;
    RetailEgaisDocCDSISACTIVENAME: TStringField;
    RetailEgaisDocCDSWHENWHO: TStringField;
    RetailEgaisDocCDSDISTRIBUTIONID: TIntegerField;
    RetailEgaisDocCDSKEYID: TIntegerField;
    DrinkAlcCodeCDSEGAISFACTORY: TStringField;
    LastRestsMI: TMenuItem;
    EgaisRestsLastCDS: TClientDataSet;
    EgaisRestsLastCDSKEYID: TIntegerField;
    EgaisRestsLastCDSEGAISCONNECTID: TIntegerField;
    EgaisRestsLastCDSECNAME: TStringField;
    EgaisRestsLastCDSEGAISDOCUMENTSTYPEID: TIntegerField;
    EgaisRestsLastCDSEDNAME: TStringField;
    EgaisRestsLastCDSEIID: TIntegerField;
    EgaisRestsLastCDSPRESENT: TDateTimeField;
    EgaisRestsLastCDSCOUNTUNIT: TIntegerField;
    UTMMI: TMenuItem;
    EgaisConnectCDS: TClientDataSet;
    EgaisConnectCDSID: TSmallintField;
    EgaisConnectCDSDISTRIBUTIONID: TIntegerField;
    EgaisConnectCDSKPP: TStringField;
    EgaisConnectCDSFSRAR_ID: TStringField;
    EgaisConnectCDSUTM_IP: TStringField;
    EgaisConnectCDSNAME: TStringField;
    EgaisConnectCDSISACTIVE: TStringField;
    EgaisConnectCDSLASTCONNECT: TDateTimeField;
    VetisMI: TMenuItem;
    VetisVSDMI: TMenuItem;
    VetisSaleMI: TMenuItem;
    IdHTTP: TIdHTTP;
    VetisDistributionMI: TMenuItem;
    VetisDistributionCDS: TClientDataSet;
    VetisDistributionCDSID: TIntegerField;
    VetisDistributionCDSFIRMID: TIntegerField;
    VetisDistributionCDSFIRMNAME: TStringField;
    VetisDistributionCDSDISTRIBUTIONID: TIntegerField;
    VetisDistributionCDSADDRESS: TStringField;
    VetisDistributionCDSVETISGUID: TStringField;
    VetisDistributionCDSVETISNUMBER: TStringField;
    VetisDistributionCDSVETISNAME: TStringField;
    VetisDistributionCDSVETISADDRESS: TStringField;
    VetisStockMI: TMenuItem;
    LineMI: TMenuItem;
    VetisDistributionCDSREGISTRYSTATUS: TStringField;
    procedure FormShow(Sender: TObject);
    procedure RefreshCDS(CDS:TClientDataSet);
    procedure CreateExistsCDS(CDS:TClientDataSet;SC:TSocketConnection;CompName,CommandText:string);
    procedure HandBookMIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExitMIClick(Sender: TObject);
    procedure SocketConnectionAfterDisconnect(Sender: TObject);
    procedure CreateChildForm(Sender: TObject);
    procedure ReportMIClick(Sender: TObject);
    procedure ExportToExcel(Caption:string;cxGrid:TcxGrid);
  private

  protected

  public
    logfalse:boolean;
    EmpId: integer;
    Header,TitleApplication:string;
    Login,Pass,Grant,AdvancedGrant:string;
    LastErrorOnApplyUpdates:string;
    BaseSQLDialect:OleVariant;

    Server1C, Connector1C, OleQuery, OleResult: OleVariant;
    Base1CPath, Base1CTypeConnector: string;

    procedure CDSCreate;
    function ReplaceSub(str, sub1, sub2: string): string;
    procedure RequestFromVetis(vetisconnectid,vetissoapactionid:integer;paramvalue:string);
    procedure FloatToBcd(Sender:TComponent);
    procedure CreateReportItems(cxGridDBTV:TcxGridDBTableView);
    function FindChildForm(Sender:TObject):TForm;
    procedure ImageStatusColumnFromBase(cmdText:String;cxGridDBC:TcxGridColumn;sourceIL:TImageList);
  end;

var
  fMain: TfMain;

implementation

uses Reg, DynamicProvider, uPassword, ConstUnit, uHandBook, uBuy,
  uTransportation, uReturn, uClaim, uRemoving, uInventory, uInventoryList, uRetailAudit,
  uDeltaDocFact,uClientDsFloatToBcd, uSupply, uStorageDoc,
  uAutoTransportation, uAggregation, uShiftWealth, uRegrading, uEgaisRests, uNotification,uEgaisRests3,
  uReport, uVetisVSD, uVetisSale, uLogViewer, uVetisStock;

{$R *.DFM}

procedure TfMain.FloatToBcd(Sender:TComponent);
begin
 if (BaseSQLDialect=3) then
  TClientDsFloatToBcd.GetInstanse().AddToConvert(Sender);
end;

procedure TfMain.ExportToExcel(Caption:string;cxGrid:TcxGrid);
begin
 with SaveDialog do
  begin
   DefaultExt := 'xls';
   Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
   FileName := Caption;
   if Execute then
    ExportGrid4ToExcel(FileName,cxGrid,true,true,true);
  end;
end;

procedure TfMain.RefreshCDS(CDS:TClientDataSet);
var bm:TBookMarkStr;
begin
 with CDS do
 begin
  bm:=BookMark;
  DisableControls;
  Close;
  try
   Open;
  finally
   try
    BookMark:=bm;
   except
    ;
   end;//try..except
   EnableControls;
  end;//try..finally
 end;//with
end;

function TfMain.ReplaceSub(str, sub1, sub2: string): string;
 var aPos: Integer;
     rslt: string;
 begin
  aPos := Pos(sub1, str);
  rslt := '';
  while (aPos <> 0) do
   begin
    rslt := rslt + Copy(str, 1, aPos - 1) + sub2;
    Delete(str, 1, aPos + Length(sub1) - 1);
    aPos := Pos(sub1, str);
   end;
  Result := rslt + str;
 end;

procedure TfMain.RequestFromVetis(vetisconnectid,vetissoapactionid:integer;paramvalue:String);
var data: TIdMultiPartFormDataStream;
    viid,requestpath,httpresult:String;
    countrequest,i:integer;
begin

 if (not Assigned(fLogViewer)) then
  Application.CreateForm(TfLogViewer, fLogViewer);
 if (not fLogViewer.Active) then
  fLogViewer.Show;
 try
  try
   SocketConnection.AppServer.DBStartTransaction;
   InUpDelCDS.Close;
   InUpDelCDS.CommandText:='select * from buytrans_vetisrequest('+IntToStr(vetisconnectid)+','+IntToStr(vetissoapactionid)+','+#39+paramvalue+#39+')';
   InUpDelCDS.Open;
   viid:=InUpDelCDS.FieldByName('viid').AsString;
   requestpath:=InUpDelCDS.FieldByName('requestpath').AsString;
   countrequest:=InUpDelCDS.FieldByName('countrequest').AsInteger;
   SocketConnection.AppServer.DBCommit;
   fLogViewer.LogMemo.Lines.Add(DateToStr(Date)+' '+TimeToStr(Time)+': Поставили запрос с кодом '+viid+' в очередь. Путь '+requestpath+'. Кол-во запросов '+IntToStr(countrequest));
  except
   begin
    SocketConnection.AppServer.DBRollback;
    raise;
   end; //on
  end; //try..except

  for i:=1 to countrequest do
   try
    data := TIdMultiPartFormDataStream.Create;
    data.AddFormField('dbuser', Login);
    data.AddFormField('dbpass', Pass);
    data.AddFormField('viid', viid);
    fLogViewer.LogMemo.Lines.Add(DateToStr(Date)+' '+TimeToStr(Time)+': '+IdHTTP.Post(requestpath, data));
    data.Free;
    sleep(1000);    
   except on E: Exception do
    begin
     data.Free;
     raise;
    end; //on
   end; //try..except
 except on E: Exception do
  fLogViewer.LogMemo.Lines.Add(DateToStr(Date)+' '+TimeToStr(Time)+': Запроса к: '+requestpath+' с кодом '+viid+' завершился с ошибкой:'+#10#13+E.Message);
 end;
end;

procedure TfMain.CDSCreate;
var RetVal:OleVariant;
    CompName:string;
begin
 RetVal:=1;
 CompName:='BonusTabak';
 SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   BonusTabakCDS.Close;
   BonusTabakCDS.CommandText:=
    'select bt.*, f.name fname, fa.name faname, btf.name btfname from BonusTabak bt '+
    'join firm f on bt.firmid = f.id '+
    'join firm fa on bt.factoryid = fa.id '+
    'join bonustabakfirmtype btf on bt.bonustabakfirmtypeid = btf.id';
  end;

 RetVal:=1;
 CompName:='Carrier';
 SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   CarrierCDS.Close;
   CarrierCDS.CommandText:=
    'select cr.id carrierid, og.id organizationid, '+
    'cr.name, cr.inn, cr.kpp, cr.address '+
    'from carrier cr '+
    'join organization og on og.id=cr.organizationid '+
    'where ((-1=:departmentid) or (og.id in (select dp.organizationid from department dp where dp.id=:departmentid))) '+
    ' and og.id in (select dp.organizationid from employeetodepartment etd '+
    '               join department dp on dp.id=etd.departmentid '+
    '               where etd.login=user) '+
    'order by cr.name';
  end;

 RetVal:=1;
 CompName:='Organization';
 SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   OrganizationCDS.Close;
   OrganizationCDS.CommandText:=
    'select og.id organizationid, og.name organizationname '+
    'from employeetodepartment etd '+
    'join department dp on dp.id=etd.departmentid '+
    'join organization og on og.id=dp.organizationid '+
    'join employee em on em.id=etd.employeeid '+
    'where em.login=user '+
    'group by og.id, og.name '+
    'order by og.name';
  end;

 RetVal:=1;
 CompName:='ReturnType';
 SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   ReturnTypeCDS.Close;
   ReturnTypeCDS.CommandText:=
    'select rt.* from removingtype rt '+
    'join employeetoterminal ett on ett.terminalid=rt.terminalid '+
    'where rt.returntypeid=1 '+
    ' and ett.login=user '+
    'order by ordernumber';
  end;

 RetVal:=1;
 CompName:='RemovingType';
 SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   RemovingTypeCDS.Close;
   RemovingTypeCDS.CommandText:=
    'select rt.* from removingtype rt '+
    'join employeetoterminal ett on ett.terminalid=rt.terminalid '+
    'where rt.returntypeid=2 '+
    ' and ett.login=user '+
    'order by ordernumber';
  end;

 RetVal:=1;
 CompName:='DistributionRate';
 SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   DistributionRateCDS.Close;
   DistributionRateCDS.CommandText:=
    'select dr.id, f.id firmid, f.name firmname, db.id dbid, db.address, dr.rate from distributionrate dr ' +
    'join distribution db on dr.distributionid = db.id ' +
    'join firm f on db.firmid = f.id ';
  end;

 RetVal:=1;
 CompName:='BooleanValue';
 SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   BooleanValueCDS.Close;
   BooleanValueCDS.CommandText:=
    'select * from booleanvalue';
  end;

 RetVal:=1;
 CompName:='BonusTabakAction';
 SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   BonusTabakActionCDS.Close;
   BonusTabakActionCDS.CommandText:=
    'select * from BonusTabakAction';
  end;

 RetVal:=1;
 CompName:='Terminal';
 SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  begin
   MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0);
   exit;
  end
 else
  begin
   TerminalCDS.Close;
   TerminalCDS.CommandText:=
    'select tr.id,tr.name from terminal tr '+
    'join employeetoterminal ett on ett.terminalid=tr.id '+
    'where ett.login=user '+
    'order by tr.name';
  end;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
 FloatToBcd(self);
 LocalizeRusAll;
end;

procedure TfMain.FormShow(Sender: TObject);
var templog,temppas:string;
    logempty,ConnectedDB:boolean;
    WndHandle:HWND;
    applicationname:array[0..127] of char;
    countlog:integer;
    TMI:TMenuItem;
    i,j:integer;
begin
 SocketConnection.Connected:=false;
 fMain:=TfMain(Sender);
 Application.CreateForm(TfPassword, fPassword);
 logempty:=true;
 logfalse:=true;
 ConnectedDB:=false;
 TitleApplication:='';

 //-----------------------проверка запущенных приложений----------------------//
 if (ReadParamFromRegistry(TitleApplication,HKEY_CURRENT_USER,SettingsFolder,'TitleApplication','')) and (TitleApplication<>'') then
  begin
   WndHandle := GetDeskTopWindow;
   WndHandle:=GetWindow(WndHandle,GW_CHILD);
   while WndHandle <> 0 do
    begin
     GetWindowText(WndHandle,applicationname,sizeof(applicationname));
     if pos(TitleApplication,StrPas(applicationname))<>0 then
      if (GetTempSettings(countlog,templog,temppas)) then
       begin
        fPassword.LoginEdit.Text:=templog;
        fPassword.PasswordEdit.Text:=temppas;
        logempty:=false;
        break;
       end;
     WndHandle:= GetNextWindow(WndHandle, GW_HWNDNEXT);
    end;
  end;

 if logempty then
  begin
   fPassword.LoginEdit.Text:='';
   fPassword.PasswordEdit.Text:='';
   WriteStringToRegistry('0','countlog',TempSettingsFolder,HKEY_CURRENT_USER);
   WriteStringToRegistry('','logpas',TempSettingsFolder,HKEY_CURRENT_USER);
  end;
 //---------------------------------------------------------------------------//}

 while logfalse do
  if not (mrOk=fPassword.ShowModal) then
   begin
    fPassword.free;
    fPassword:=nil;
    logfalse:=false;
    Application.Terminate;
   end
  else
   if not logfalse then
    begin
     try
      for i:=0 to MainMenu.Items.Count-1 do
       begin
        TMI:=MainMenu.Items[i];
        if TMI.Tag<0 then
         TMI.Visible:=false;
         
        for j:=0 to TMI.Count-1 do
         begin
          if ((i=0) or (i=MainMenu.Items.Count-1)) then
           TMI.Items[j].Enabled:=true
          else
           begin
            TMI.Items[j].Enabled:=false;
            if TMI.Items[j].Tag>0 then
             TMI.Items[j].Tag:=-1;
           end;
         end;

        TMI:=nil;
       end;

      if (Pos('H',Grant)>0) then
       begin
        for i:=0 to MainMenu.Items.Count-1 do
         if MainMenu.Items[i].Caption='Справочники' then
          TMI:=MainMenu.Items[i];
        if Assigned(TMI) then
         for i:=0 to TMI.Count-1 do
          begin
           TMI.Items[i].Enabled:=true; //делаем активным всю закладку
           if (Pos('H',AdvancedGrant)>0) then
            TMI.Items[i].Tag:=ABS(TMI.Items[i].Tag); // и даем право на редактирвоание
          end;
        TMI:=nil;
       end;

      BuyMI.Enabled:=(Pos('B',Grant)>0);
      TransportationMI.Enabled:=(Pos('T',Grant)>0);
      AutoTransMI.Enabled:=(Pos('T',Grant)>0);
      ReturnMI.Enabled:=(Pos('R',Grant)>0);
      RemovingMI.Enabled:=(Pos('R',Grant)>0);
      ClaimMI.Enabled:=(Pos('C',Grant)>0);
      InventoryMI.Enabled:=(Pos('I',Grant)>0);
      NotificationMI.Enabled:=(Pos('N',Grant)>0);
      InventoryListMI.Enabled:= (Pos('J', Grant) > 0);
      DeltaDocFactMI.Enabled:= (Pos('D', Grant) > 0);
      SupplyMI.Enabled:= (Pos('S', Grant) > 0);
      RetailAuditMI.Enabled := (Pos('U', Grant) > 0);
      StorageDocMI.Enabled:= (Pos('A', Grant) > 0);
      AggregationMI.Enabled:= (Pos('G', Grant) > 0);
      ShiftMI.Enabled := (Pos('G', Grant) > 0);
      RegradingMI.Enabled:= (Pos('P', Grant) > 0);
      EgaisRestsMI.Enabled:= (Pos('E', Grant) > 0);
      EgaisRests3MI.Enabled:= (Pos('E', Grant) > 0);
      RetailErrorEgaisMI.Enabled:= (Pos('E', Grant) > 0);
      LastRestsMI.Enabled:= (Pos('E', Grant) > 0);
      ReadParamFromRegistry(Base1CPath, HKEY_CURRENT_USER, BaseFolder, 'Base1C', '');
      ReadParamFromRegistry(Base1CTypeConnector,HKEY_CURRENT_USER,BaseFolder,'Base1CTypeConnector','V83.COMConnector');

      VetisMI.Visible:=(Pos('V', Grant) > 0);
      VetisVSDMI.Enabled:=VetisMI.Visible;
      VetisSaleMI.Enabled:=VetisMI.Visible;
      VetisStockMI.Enabled:=VetisMI.Visible;
      VetisDistributionMI.Enabled:=VetisMI.Visible;
      if (Pos('V', AdvancedGrant) > 0) then VetisDistributionMI.Tag:=1;
      
      ConnectedDB:=true;
      CDSCreate;
     finally
      if ConnectedDB then
       begin
        SetTempSettings(fPassword.LoginEdit.Text,fPassword.PasswordEdit.Text);
        fPassword.LoginEdit.Clear;
        fPassword.PasswordEdit.Clear;
       end;
     end;//try..finally

     fPassword.free;
     fPassword:=nil;
    end;
end;

procedure CreateHandBookView(Child:TfHandBook;CDS:TClientDataSet;KeyFieldNames:string);
begin
 fMain.RefreshCDS(CDS);
 Child.HandBookDS.DataSet:=CDS;
 Child.HandBookcxGridDBTV.DataController.KeyFieldNames:=KeyFieldNames;
end;

procedure CreateReportView(Child:TfReport;CDS:TClientDataSet;KeyFieldNames:string);
begin
 Child.ViewDS.DataSet:=CDS;
 fMain.RefreshCDS(CDS);
 Child.ViewcxGridDBTV.DataController.KeyFieldNames:=KeyFieldNames;
end;

procedure TfMain.ReportMIClick(Sender: TObject);
var Child: TfReport;
    i:integer;
    flagcreate:boolean;
begin
 flagcreate:=true;
 for i:=0 to MDIChildCount-1 do
  if MDIChildren[i].Caption=(Sender as TMenuItem).Caption then
   begin
    flagcreate:=false;
    break;
   end;

 if flagcreate then
  begin
   Child:= TfReport.Create(Application);
   Child.Caption:=(Sender as TMenuItem).Caption;

   if (Sender as TMenuItem).Caption='Висяки розницы по ЕГАИС' then
    begin
     CreateExistsCDS(RetailEgaisDocCDS,SocketConnection,'RetailEgaisDoc','select * from buytrans_reportegaisretailerror(:begindate,:enddate)');
     Child.TopPanel.Visible:=true;
     Child.BegincxDE.Date:=Date-7;
     Child.EndcxDE.Date:=Date-1;
     RetailEgaisDocCDS.AfterOpen:=Child.CDSAfterOpen;
     RetailEgaisDocCDS.BeforeOpen:=Child.CDSBeforeOpen;
     CreateReportView(Child,RetailEgaisDocCDS,'KEYID');
    end;

   if (Sender as TMenuItem).Name=LastRestsMI.Name then
    begin
     CreateExistsCDS(EgaisRestsLastCDS,SocketConnection,'EgaisRestsLast','select * from buytrans_reportegaisrestslast');
     Child.TopPanel.Visible:=false;
     Child.EgaisResultMI.Visible:=true;
     Child.ViewcxGridDBTV.PopupMenu:=Child.PM;
     CreateReportView(Child,EgaisRestsLastCDS,'KEYID');
    end;

   CreateReportItems(Child.ViewcxGridDBTV);
  end
 else
  if (i>=0) and (i<MDIChildCount) then
   begin
    MDIChildren[i].Show;
    if MDIChildren[i].WindowState=wsMinimized then
     MDIChildren[i].WindowState:=wsNormal;
   end;
end;

procedure TfMain.CreateReportItems(cxGridDBTV:TcxGridDBTableView);
var i :integer;
begin
 cxGridDBTV.DataController.CreateAllItems;

 for i:=0 to cxGridDBTV.ColumnCount-1 do
  begin
   if (cxGridDBTV.DataController.DataSource.DataSet.Fields[i].Tag=1) then
    begin
     cxGridDBTV.Columns[i].Summary.FooterKind:=skSum;
     cxGridDBTV.Columns[i].Summary.GroupFooterKind:=skSum;
    end;
   if (cxGridDBTV.DataController.DataSource.DataSet.Fields[i].Tag=2) then
    begin
     cxGridDBTV.Columns[i].Summary.FooterKind:=skCount;
     cxGridDBTV.Columns[i].Summary.GroupFooterKind:=skCount;
    end;
  end;
end;

procedure TfMain.HandBookMIClick(Sender: TObject);
var Child: TfHandBook;
    i:integer;
    flagcreate:boolean;
begin
 flagcreate:=true;Child:=nil;
 for i:=0 to MDIChildCount-1 do
  if MDIChildren[i].Caption=(Sender as TMenuItem).Caption then
   begin
    flagcreate:=false;
    break;
   end;

 if flagcreate then
  begin
   Child:= TfHandBook.Create(Application);
   Child.Caption:=(Sender as TMenuItem).Caption;

   if (Sender as TMenuItem).Caption='Бонусы табака' then
    begin
     RefreshCDS(BonusTabakCDS);
     Child.HandBookDS.DataSet:=BonusTabakCDS;
     Child.HandBookcxGridDBTV.DataController.KeyFieldNames:='ID';
    end;

   if (Sender as TMenuItem).Caption='Перевозчики' then
    begin
     CarrierCDS.Params[0].AsInteger:=-1;
     RefreshCDS(CarrierCDS);
     Child.HandBookDS.DataSet:=CarrierCDS;
     Child.HandBookcxGridDBTV.DataController.KeyFieldNames:='CARRIERID';
    end;

   if (Sender as TMenuItem).Caption='Причины возврата' then
    begin
     RefreshCDS(ReturnTypeCDS);
     Child.HandBookDS.DataSet:=ReturnTypeCDS;
     Child.HandBookcxGridDBTV.DataController.KeyFieldNames:='ID';
    end;

   if (Sender as TMenuItem).Caption='Причины списания' then
    begin
     RefreshCDS(RemovingTypeCDS);
     Child.HandBookDS.DataSet:=RemovingTypeCDS;
     Child.HandBookcxGridDBTV.DataController.KeyFieldNames:='ID';
    end;

   if (Sender as TMenuItem).Caption='Коэффициенты ТТ' then
    begin
     RefreshCDS(DistributionRateCDS);
     Child.HandBookDS.DataSet:=DistributionRateCDS;
     Child.HandBookcxGridDBTV.DataController.KeyFieldNames:='ID';
    end;

   if (Sender as TMenuItem).Caption='Привязка номенклатуры к ЕГАИС' then
    begin
     CreateExistsCDS(DrinkAlcCodeCDS,SocketConnection,'DrinkAlcCode',
                 'select * from buytrans_drinkalccodecalc');
     CreateHandBookView(Child,DrinkAlcCodeCDS,'ID;DRINKID');
    end;

   if (Sender as TMenuItem).Caption='Клиенты исключения ЕГАИС' then
    begin
     CreateExistsCDS(EgaisFirmTypeCDS,SocketConnection,'EgaisFirmType',
                 'select id,firmid,firmname from egaisfirmtype et where et.id>100');
     CreateHandBookView(Child,EgaisFirmTypeCDS,'ID');
    end;

   if (Sender as TMenuItem).Name=UTMMI.Name then
    begin
     CreateExistsCDS(EgaisConnectCDS,SocketConnection,'EgaisConnect','select * from BUYTRANS_EGAISCONNECT');
     CreateHandBookView(Child,EgaisConnectCDS,'ID');
    end;

   if (Sender as TMenuItem).Name=VetisDistributionMI.Name then
    begin
     CreateExistsCDS(VetisDistributionCDS,SocketConnection,'VetisDistribution','select * from buytrans_vetisdistributionview');
     CreateHandBookView(Child,VetisDistributionCDS,'ID');
    end;

   Child.HandBookcxGridDBTV.DataController.CreateAllItems;
   Child.FieldsToControl(Child.HandBookcxGridDBTV);
   if (Sender as TMenuItem).Tag=1 then
    begin
     Child.HandBookcxGrid.PopupMenu:=Child.HandBookPM;
     Child.HandBookcxGridDBTV.OnCellDblClick:=Child.HandBookcxGridDBTVCellDblClick;
    end
   else
    begin
     Child.HandBookcxGrid.PopupMenu:=nil;
     Child.HandBookcxGridDBTV.OnCellDblClick:=nil;
    end
  end
 else
  if (i>=0) and (i<MDIChildCount) then
   begin
    MDIChildren[i].Show;
    if MDIChildren[i].WindowState=wsMinimized then
     MDIChildren[i].WindowState:=wsNormal;
   end;
end;

procedure TfMain.CreateChildForm(Sender: TObject);
var Child:TForm;
begin
 Child:=FindChildForm(Sender);
 if Assigned(Child) then
  begin
   if ((Sender as TMenuItem).Caption=VetisVSDMI.Caption) then Child.Tag:=0;
   if Child.WindowState=wsMinimized then
    Child.WindowState:=wsNormal;
   if not Child.Active then
    Child.Show;
  end;
end;

procedure TfMain.ImageStatusColumnFromBase(cmdText:String;cxGridDBC:TcxGridColumn;sourceIL:TImageList);
var Img:TBitmap;
    BS:TStream;
    Items: TcxImageComboBoxItems;
    Item: TcxImageComboBoxItem;
begin
 fMain.AnyCommandCDS.Close;
 fMain.AnyCommandCDS.CommandText:=CmdText;
 fMain.AnyCommandCDS.Open;
 Img:=TBitmap.Create;
 (cxGridDBC.Properties as TcxImageComboBoxProperties).Images:=sourceIL;
 (cxGridDBC.Properties as TcxImageComboBoxProperties).ShowDescriptions:=false;
 Items:=(cxGridDBC.Properties as TcxImageComboBoxProperties).Items;
 Items.Clear;

 while not fMain.AnyCommandCDS.Eof do
  begin
   try
    Items.BeginUpdate;
    Item := Items.Add as TcxImageComboBoxItem;
    Item.Value := fMain.AnyCommandCDS.FieldByName('ID').Value;
    Item.Description := fMain.AnyCommandCDS.FieldByName('NAME').AsString;

    if not fMain.AnyCommandCDS.FieldByName('IMG').IsNull then
     begin
      BS:= fMain.AnyCommandCDS.CreateBlobStream(fMain.AnyCommandCDS.FieldByName('IMG') as TBlobField, bmRead);
      BS.Position:=0;
      Img.LoadFromStream(BS);
      SourceIL.AddMasked(Img,Img.TransparentColor);
      Item.ImageIndex := fMain.AnyCommandCDS.FieldByName('ID').AsInteger;
     end;
   finally
    Items.EndUpdate;
   end;
   fMain.AnyCommandCDS.Next;
  end;
end;

function TfMain.FindChildForm(Sender:TObject):TForm;
var i:integer;
    flagcreate:boolean;
begin
 flagcreate:=true;result:=nil;
 for i:=0 to MDIChildCount-1 do
  if MDIChildren[i].Caption=(Sender as TMenuItem).Caption then
   begin
    flagcreate:=false;
    break;
   end;

 if flagcreate then
  begin
   if (Sender as TMenuItem).Caption='Инветаризационная опись-акт' then result:= TfInventory.Create(Application);
   if (Sender as TMenuItem).Caption='Разница цен накладных на приемку' then result:= TfDeltaDocFact.Create(Application);
   if (Sender as TMenuItem).Caption='Внутренняя работа склада' then result:= TfStorageDoc.Create(Application);
   if (Sender as TMenuItem).Caption='Приемка' then result:= TfBuy.Create(Application);
   if (Sender as TMenuItem).Caption='Перемещение' then result:= TfTransportation.Create(Application);
   if (Sender as TMenuItem).Caption='Вычерки' then result:= TfReturn.Create(Application);
   if (Sender as TMenuItem).Caption='Списание' then result:= TfRemoving.Create(Application);
   if (Sender as TMenuItem).Caption='Пересорт' then result:= TfRegrading.Create(Application);
   if (Sender as TMenuItem).Caption='Претензия' then result:= TfClaim.Create(Application);
   if (Sender as TMenuItem).Caption='Ревизия' then result:= TfInventoryList.Create(Application);
   if (Sender as TMenuItem).Caption='Аудит розницы' then result:= TfRetailAudit.Create(Application);
   if (Sender as TMenuItem).Caption='Авто-Перемещения' then result:= TfAutoTrans.Create(Application);
   if (Sender as TMenuItem).Caption='Объединение МЦ' then result:= TfAggregation.Create(Application);
   if (Sender as TMenuItem).Caption='Перемещение МЦ' then result:= TfShiftWealth.Create(Application);
   if (Sender as TMenuItem).Caption='Снабжение' then result:= TfSupply.Create(Application);
   if (Sender as TMenuItem).Caption='Остатки ЕГАИС' then result:= TfEgaisRests.Create(Application);
   if (Sender as TMenuItem).Caption='Уведомления' then result:= TfNotification.Create(Application);
   if (Sender as TMenuItem).Caption='Остатки З регистр' then result:= TfEgaisRests3.Create(Application);
   if (Sender as TMenuItem).Caption=VetisVSDMI.Caption then result:= TfVetisVSD.Create(Application);
   if (Sender as TMenuItem).Caption=VetisSaleMI.Caption then result:= TfVetisSale.Create(Application);
   if (Sender as TMenuItem).Caption=VetisStockMI.Caption then result:= TfVetisStock.Create(Application);
   if Assigned(result) then
    result.Caption:=(Sender as TMenuItem).Caption;
  end
 else
  if (i>=0) and (i<MDIChildCount) then
   result:=(MDIChildren[i] as TForm);
end;


procedure TfMain.ExitMIClick(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TfMain.SocketConnectionAfterDisconnect(Sender: TObject);
var countlog:integer;
    templog,temppas:string;
begin
 if GetTempSettings(countlog,templog,temppas) then
  begin
   if (countlog>1) and (UpperCase(templog)=Login) then
    WriteStringToRegistry(IntToStr(countlog-1),'countlog',TempSettingsFolder,HKEY_CURRENT_USER)
   else
    begin
     WriteStringToRegistry('0','countlog',TempSettingsFolder,HKEY_CURRENT_USER);
     WriteStringToRegistry('','logpas',TempSettingsFolder,HKEY_CURRENT_USER);
    end;
  end;
end;

procedure TfMain.CreateExistsCDS(CDS:TClientDataSet;SC:TSocketConnection;CompName,CommandText:string);
var RetVal:OleVariant;
begin
 RetVal:=1;
 SocketConnection.AppServer.DBCreateProvider(CompName,RetVal);
 if (not (RetVal=0)) then
  MessageDlg('Ошибка при создании компонента '+CompName,mtError,[mbOk],0)
 else
  begin
   CDS.ProviderName:=CompName+'DSP';
   CDS.RemoteServer:=SC;
   if (CommandText<>'') then
    CDS.CommandText:=CommandText;
  end;
end;

end.
