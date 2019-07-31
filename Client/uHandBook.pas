unit uHandBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, cxCheckBox, Menus, ExtCtrls,
  StdCtrls, cxContainer, cxCalendar, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ImgList,cxExportGrid4Link;

type
  TfHandBook = class(TForm)
    HandBookDS: TDataSource;
    HandBookPM: TPopupMenu;
    RefreshHandBookMI: TMenuItem;
    N10: TMenuItem;
    AddHandBookMI: TMenuItem;
    EditHandBookMI: TMenuItem;
    DeleteHandBookMI: TMenuItem;
    Notebook: TNotebook;
    HandBookcxGrid: TcxGrid;
    HandBookcxGridDBTV: TcxGridDBTableView;
    HandBookcxGridLevel: TcxGridLevel;
    DetailScrollBox: TScrollBox;
    DetailLabelPanel: TPanel;
    cxESC: TcxEditStyleController;
    SaveBB: TBitBtn;
    CancelBB: TBitBtn;
    EgaisMI: TMenuItem;
    miExcel: TMenuItem;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FieldsToControl(cxGridDBTV: TcxGridDBTableView);
    procedure RefreshHandBookMIClick(Sender: TObject);
    procedure AddHandBookMIClick(Sender: TObject);
    procedure CancelBBClick(Sender: TObject);
    procedure SaveBBClick(Sender: TObject);
    procedure EditHandBookMIClick(Sender: TObject);
    procedure DeleteHandBookMIClick(Sender: TObject);
    procedure HandBookcxGridDBTVCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure HandBookPMPopup(Sender: TObject);
    procedure EgaisMIClick(Sender: TObject);
    procedure miExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fHandBook: TfHandBook;

implementation

uses uMain, uBuyAdd;

{$R *.dfm}

procedure TfHandBook.FormCreate(Sender: TObject);
begin
 NoteBook.PageIndex:=0;
 HandBookDS.DataSet:=nil;
 HandBookcxGridDBTV.ClearItems;
end;

procedure TfHandBook.RefreshHandBookMIClick(Sender: TObject);
begin
 with fMain do
  RefreshCDS(TClientDataSet(HandBookcxGridDBTV.DataController.DataSource.DataSet));
end;

procedure TfHandBook.FieldsToControl(cxGridDBTV: TcxGridDBTableView);
var i,j,h,t: integer;
    DS: TDataSet;
    lines: String;
    flagcounter:boolean;
begin
 j:=0;
 t:=6;
 flagcounter:=true;
 try
  cxGridDBTV.BeginUpdate;
  DS:=cxGridDBTV.DataController.DataSource.DataSet;
  {if DS=ClientsX.PartnerCDS then
   begin
    cxGridDBTV.Columns[cxGridDBTV.GetColumnByFieldName('PARTNER').Index].GroupIndex:=0;
    cxGridDBTV.GroupedColumns[0].Visible:=false;
   end;

  {with cxGridDBTV.DataController.Filter do
   begin
    if (DS=EmployeesX.EmployeeCDS) then
     begin
      Root.AddItem(cxGridDBTV.Columns[cxGridDBTV.GetColumnByFieldName('DISMISSALDATE').Index],foEqual, null,'пусто');
      with EmployeesX do
       begin
        DeptCDS.First;
        while not DeptCDS.EOF do
         begin
          if (DeptCDSDEPTNAME.AsString='HostWMS') then
           Root.AddItem(cxGridDBTV.Columns[cxGridDBTV.GetColumnByFieldName('DEPTNAME').Index],foNotEqual,EmployeesX.DeptCDSDEPTID.AsInteger,'HostWMS');
          DeptCDS.Next;
         end;
       end;
     end;
    Active:=true;
   end;}

  for i:=0 to cxGridDBTV.ColumnCount-1 do
   begin
    if (not DS.Fields[i].Visible) then
     Continue;

    if flagcounter then
     begin
      cxGridDBTV.Columns[i].Summary.FooterKind:=skCount;
      cxGridDBTV.Columns[i].Summary.GroupFooterKind:=skCount;
      flagcounter:=false;
     end;


    cxGridDBTV.Columns[i].Options.Editing:=false;
    with TLabel.Create(self) do
     begin
      parent:=DetailLabelPanel;
      Top:=t+5+j*30;
      Left:=4;
      Font.Name:='Times New Roman';
      Font.Size:=10;
      //if DS.fielddefs.IndexOf(ds.Fields[i].FieldName)>-1 then
       if DS.Fields[i].Required then
        Font.Style:=[fsBold]
       else Font.Style:=[];
        lines:=AnsiUpperCase(Ds.Fields[i].DisplayLabel);
        Caption:=UpperCase(lines);
        h:=Height;//Width;
       Enabled:=not DS.Fields[i].ReadOnly;
     end;//with

    with TBevel.Create(self) do
     begin
      parent:=DetailLabelPanel;
      Top:=t+5+h+j*30;//12+j*30;
      Left:=4;//4+h+4;
      Width:=DetailLabelPanel.Width-8;//-12-h;
      Height:=4;
      Shape:=bsTopLine;
      Style:=bsRaised;
     end;//with

    case ds.Fields[i].DataType of
     ftInteger,ftSmallint,ftFloat,ftCurrency:
     begin
      with TcxDBCalcEdit.Create(self) do
       begin
        parent:=DetailScrollBox;
        Top:=t+j*30;
        Left:=200;
        DataBinding.DataSource:=cxGridDBTV.DataController.DataSource;
        DataBinding.DataField:=ds.Fields[i].FieldName;
        Style.StyleController:=cxESC;
        Enabled:=not DS.Fields[i].ReadOnly;
       end;//with
     end;

     ftDate, ftTime, ftDateTime:
     begin
      with TcxDBDateEdit.Create(self) do
       begin
        parent:=DetailScrollBox;
        Top:=t+j*30;
        Left:=200;
        DataBinding.DataSource:=cxGridDBTV.DataController.DataSource;
        DataBinding.DataField:=ds.Fields[i].FieldName;
        Style.StyleController:=cxESC;
        Enabled:=not DS.Fields[i].ReadOnly;
       end;//with
     end;

     ftString:
      if ds.Fields[i].FieldKind=fkLookup then
       with TcxDBLookupComboBox.Create(self) do
        begin
         parent:=DetailScrollBox;
         Top:=t+j*30;
         Left:=200;
         DataBinding.DataSource:=cxGridDBTV.DataController.DataSource;
         DataBinding.DataField:=ds.Fields[i].FieldName;
         Style.StyleController:=cxESC;
         Properties.ListOptions.ShowHeader:=false;
         Width:=300;
         Enabled:=not DS.Fields[i].ReadOnly;
        end
      else
       with TcxDBTextEdit.Create(self) do
        begin
         parent:=DetailScrollBox;
         Top:=t+j*30;
         Left:=200;
         DataBinding.DataSource:=cxGridDBTV.DataController.DataSource;
         DataBinding.DataField:=ds.Fields[i].FieldName;
         Style.StyleController:=cxESC;
         Width:=300;
         Enabled:=not DS.Fields[i].ReadOnly;         
        end;//with
    end;
    Inc(j);
   end;
 finally
   SaveBB.Top:=t+j*30;
   CancelBB.Top:=t+j*30;
   cxGridDBTV.EndUpdate;
 end;
end;

procedure TfHandBook.AddHandBookMIClick(Sender: TObject);
begin
 HandBookcxGridDBTV.DataController.DataSource.DataSet.Insert;
 Notebook.PageIndex:=1;
end;

procedure TfHandBook.CancelBBClick(Sender: TObject);
begin
 Notebook.PageIndex:=0;
 if HandBookcxGridDBTV.DataController.DataSource.DataSet.State in [dsInsert,dsEdit] then
  HandBookcxGridDBTV.DataController.DataSource.DataSet.Cancel;
end;

procedure TfHandBook.SaveBBClick(Sender: TObject);
var rowid,keycolumn,CmdText,str1,str2,str3,str4:string;
 function CheckData(CDS:TDataSet):boolean;
 var i:integer;
 begin
  Result:=true;
  for i:=0 to CDS.FieldCount-1 do
   if CDS.Fields[i].Visible and (not CDS.Fields[i].ReadOnly) and CDS.Fields[i].Required and (CDS.Fields[i].AsString='') then
    begin
     MessageDlg('Поле '+CDS.Fields[i].DisplayLabel+' не заполнено',mtInformation,[mbOk],0);
     Result:=false;
     break;
    end;
 end;

begin
 if not CheckData(HandBookcxGridDBTV.DataController.DataSource.DataSet) then
  exit;

 with fMain do
  begin
    try
     if HandBookcxGridDBTV.DataController.DataSource.DataSet=CarrierCDS then
      begin
       keycolumn:='CARRIERID';
       if CarrierCDSINN.AsString='' then
        str1:='null'
       else
        str1:=#39+CarrierCDSINN.AsString+#39;

       if CarrierCDSKPP.AsString='' then
        str2:='null'
       else
        str2:=#39+CarrierCDSKPP.AsString+#39;

       if CarrierCDSADDRESS.AsString='' then
        str3:='null'
       else
        str3:=#39+CarrierCDSADDRESS.AsString+#39;

       case HandBookcxGridDBTV.DataController.DataSource.DataSet.State of
        dsInsert: begin
                   rowid:='null';
                   CmdText:='insert into carrier(organizationid,name,inn,kpp,address) '+
                            'values('+CarrierCDSORGANIZATIONID.AsString+','+
                                     #39+CarrierCDSNAME.AsString+#39+','+
                                     str1+','+
                                     str2+','+
                                     str3+')';
                  end;
        dsEdit:   begin
                   rowid:=HandBookcxGridDBTV.DataController.DataSource.DataSet.FieldByName(keycolumn).AsString;
                   CmdText:='update carrier set organizationid='+CarrierCDSORGANIZATIONID.AsString+','+
                            '                   name='+#39+CarrierCDSNAME.AsString+#39+','+
                            '                   inn='+str1+','+
                            '                   kpp='+str2+','+
                            '                   address='+str3+
                            ' where id='+rowid;
                  end;

       else
        ShowMessage('Не известный тип операции!');
       end;
      end;

     if HandBookcxGridDBTV.DataController.DataSource.DataSet=BonusTabakCDS then
      begin
       keycolumn:='ID';

       case HandBookcxGridDBTV.DataController.DataSource.DataSet.State of
        dsInsert: begin
                   rowid:='null';
                   CmdText:='insert into BonusTabak(firmid,factoryid,bonustabakactionid,valueaction) '+
                            'values('+BonusTabakCDSfirmid.AsString+','+
                                     BonusTabakCDSfactoryid.AsString+','+
                                     BonusTabakCDSbonustabakactionid.AsString+','+
                                     BonusTabakCDSvalueaction.AsString+')';
                  end;
        dsEdit:   begin
                   rowid:=HandBookcxGridDBTV.DataController.DataSource.DataSet.FieldByName(keycolumn).AsString;
                   CmdText:='update BonusTabak set firmid='+BonusTabakCDSfirmid.AsString+','+
                            '                   factoryid='+BonusTabakCDSfactoryid.AsString+','+
                            '                   bonustabakactionid='+BonusTabakCDSbonustabakactionid.AsString+','+
                            '                   valueaction='+BonusTabakCDSvalueaction.AsString+
                            ' where id='+rowid;
                  end;

       else
        ShowMessage('Не известный тип операции!');
       end;
      end;

     if HandBookcxGridDBTV.DataController.DataSource.DataSet=ReturnTypeCDS then
      begin
       keycolumn:='ID';
       case HandBookcxGridDBTV.DataController.DataSource.DataSet.State of
        dsInsert: begin
                   rowid:='null';
                   CmdText:='insert into removingtype(name,isreason,ordernumber,returntypeid,isbroken,isactual,terminalid) '+
                            'values('+#39+ReturnTypeCDSNAME.AsString+#39+','+
                                    '0,'+
                                    ReturnTypeCDSORDERNUMBER.AsString+','+
                                    '1,'+
                                    '0,'+
                                    ReturnTypeCDSORDERNUMBER.AsString+','+
                                    ReturnTypeCDSTERMINALID.AsString+')';
                  end;
        dsEdit:   begin
                   rowid:=HandBookcxGridDBTV.DataController.DataSource.DataSet.FieldByName(keycolumn).AsString;
                   CmdText:='update removingtype set name='+#39+ReturnTypeCDSNAME.AsString+#39+','+
                            '                   ordernumber='+ReturnTypeCDSORDERNUMBER.AsString+','+
                            '                   isactual='+ReturnTypeCDSORDERNUMBER.AsString+','+
                            '                   terminalid='+ReturnTypeCDSTERMINALID.AsString+
                            ' where id='+rowid;
                  end;

       else
        ShowMessage('Не известный тип операции!');
       end;
      end;

     if HandBookcxGridDBTV.DataController.DataSource.DataSet=RemovingTypeCDS then
      begin
       keycolumn:='ID';
       case HandBookcxGridDBTV.DataController.DataSource.DataSet.State of
        dsInsert: begin
                   rowid:='null';
                   CmdText:='insert into removingtype(name,isreason,ordernumber,returntypeid,isbroken,isactual,terminalid,isdummysale) '+
                            'values('+#39+RemovingTypeCDSNAME.AsString+#39+','+
                                    '0,'+
                                    RemovingTypeCDSORDERNUMBER.AsString+','+
                                    '2,'+
                                    RemovingTypeCDSISBROKEN.AsString+','+
                                    RemovingTypeCDSORDERNUMBER.AsString+','+
                                    RemovingTypeCDSTERMINALID.AsString+','+
                                    RemovingTypeCDSISDUMMYSALE.AsString+')';
                  end;
        dsEdit:   begin
                   rowid:=HandBookcxGridDBTV.DataController.DataSource.DataSet.FieldByName(keycolumn).AsString;
                   CmdText:='update removingtype set name='+#39+RemovingTypeCDSNAME.AsString+#39+','+
                            '                   ordernumber='+RemovingTypeCDSORDERNUMBER.AsString+','+
                            '                   isbroken='+RemovingTypeCDSISBROKEN.AsString+','+
                            '                   isactual='+RemovingTypeCDSISACTUAL.AsString+','+
                            '                   terminalid='+RemovingTypeCDSTERMINALID.AsString+','+
                            '                   isdummysale='+RemovingTypeCDSISDUMMYSALE.AsString+
                            ' where id='+rowid;
                  end;

       else
        ShowMessage('Не известный тип операции!');
       end;
      end;

     if HandBookcxGridDBTV.DataController.DataSource.DataSet=DistributionRateCDS then
      begin
       keycolumn:='ID';
       case HandBookcxGridDBTV.DataController.DataSource.DataSet.State of
        dsInsert: begin
                   rowid:='null';
                   CmdText:='insert into distributionrate(distributionid, rate) '+
                            'values(' + DistributionRateCDSDBID.AsString + ',' +
                                        DistributionRateCDSRATE.AsString + ')';
                  end;
        dsEdit:   begin
                   rowid:=HandBookcxGridDBTV.DataController.DataSource.DataSet.FieldByName(keycolumn).AsString;
                   CmdText:='update distributionrate set distributionid= ' + DistributionRateCDSDBID.AsString + ',' +
                            '                   rate= ' + DistributionRateCDSRATE.AsString +
                            ' where id=' + rowid;
                  end;

       else
        ShowMessage('Не известный тип операции!');
       end;
      end;

     if HandBookcxGridDBTV.DataController.DataSource.DataSet=DrinkAlcCodeCDS then
      begin
       if DrinkAlcCodeCDSID.IsNull then keycolumn:='DRINKID'
                                   else keycolumn:='ID';

       case HandBookcxGridDBTV.DataController.DataSource.DataSet.State of
        dsInsert: rowid:='null';
        dsEdit: rowid:=HandBookcxGridDBTV.DataController.DataSource.DataSet.FieldByName(keycolumn).AsString;
       else
        ShowMessage('Не известный тип операции!');
       end;

       CmdText:='execute procedure buytrans_drinkalccodeinup('+rowid+','+DrinkAlcCodeCDSDRINKID.AsString+','+#39+DrinkAlcCodeCDSALCCODE.AsString+#39+')';
      end;

     if HandBookcxGridDBTV.DataController.DataSource.DataSet=EgaisFirmTypeCDS then
      begin
       keycolumn:='ID';
       case HandBookcxGridDBTV.DataController.DataSource.DataSet.State of
        dsInsert: begin
                   rowid:='null';
                   CmdText:='insert into egaisfirmtype(firmid) '+
                            'values(' + EgaisFirmTypeCDSFIRMID.AsString + ')';
                  end;
        dsEdit:   begin
                   rowid:=HandBookcxGridDBTV.DataController.DataSource.DataSet.FieldByName(keycolumn).AsString;
                   CmdText:='update egaisfirmtype set firmid= ' + EgaisFirmTypeCDSFIRMID.AsString +
                            ' where id=' + rowid;
                  end;

       else
        ShowMessage('Не известный тип операции!');
       end;
      end;

      
     SocketConnection.AppServer.DBStartTransaction;
     InUpDelCDS.Close;
     InUpDelCDS.CommandText:=CmdText;
     InUpDelCDS.Execute;
     SocketConnection.AppServer.DBCommit;
    except on E:Exception do
     begin
      SocketConnection.AppServer.DBRollback;
      MessageDlg('Ошибка:'+E.Message+#10#13+CmdText,mtError,[mbOk],0);
      exit;
     end;
    end;//try..except
   RefreshCDS(TClientDataSet(HandBookcxGridDBTV.DataController.DataSource.DataSet));
   TClientDataSet(HandBookcxGridDBTV.DataController.DataSource.DataSet).Locate(keycolumn,rowid,[]);
   if (HandBookcxGridDBTV.DataController.DataSource.DataSet=CarrierCDS) then
    if  Assigned(fBuyAdd) and TClientDataSet(fBuyAdd.CarriercxLCB.Properties.ListSource.DataSet).Active then
     fMain.RefreshCDS(TClientDataSet(fBuyAdd.CarriercxLCB.Properties.ListSource.DataSet));
   CancelBBClick(self);
  end; //with EmployeesX do }
end;

procedure TfHandBook.EditHandBookMIClick(Sender: TObject);
begin
 HandBookcxGridDBTV.DataController.DataSource.DataSet.Edit;
 Notebook.PageIndex:=1;
end;

procedure TfHandBook.DeleteHandBookMIClick(Sender: TObject);
var tablename,rowid,CmdText:string;
    flagaction:boolean;
begin
 if MessageDlg('Вы уверенны в удалении записи?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
  exit;
 with fMain do
  begin
   flagaction:=true;


   if HandBookcxGridDBTV.DataController.DataSource.DataSet=CarrierCDS then
    begin
     tablename:='carrier';
     rowid:='id='+CarrierCDSCARRIERID.AsString;
    end;

   if HandBookcxGridDBTV.DataController.DataSource.DataSet=ReturnTypeCDS then
    begin
     tablename:='removingtype';
     rowid:='id='+ReturnTypeCDSID.AsString;
    end;

   if HandBookcxGridDBTV.DataController.DataSource.DataSet=RemovingTypeCDS then
    begin
     tablename:='removingtype';
     rowid:='id='+RemovingTypeCDSID.AsString;
    end;

   if HandBookcxGridDBTV.DataController.DataSource.DataSet=DrinkAlcCodeCDS then
    begin
     flagaction:=false;
     CmdText:='execute procedure buytrans_drinkalccodeinup(-99,'+DrinkAlcCodeCDSDRINKID.AsString+','+#39+DrinkAlcCodeCDSALCCODE.AsString+#39+')';
    end;

   if HandBookcxGridDBTV.DataController.DataSource.DataSet=EgaisFirmTypeCDS then
    begin
     tablename:='egaisfirmtype';
     rowid:='id='+EgaisFirmTypeCDSID.AsString;
    end;


   try
    SocketConnection.AppServer.DBStartTransaction;

    InUpDelCDS.Close;
    if flagaction then
     InUpDelCDS.CommandText:=
      'delete from '+tablename+' where '+rowid
    else
     InUpDelCDS.CommandText:=CmdText;

    InUpDelCDS.Execute;
    SocketConnection.AppServer.DBCommit;
   except on E:Exception do
    begin
     SocketConnection.AppServer.DBRollback;
     MessageDlg('При редактирвоании справочника произошла ошибка. '+
                'Исходное сообщение ->"'+E.Message+'"',mtError,[mbOk],0);
    end;
   end;//try..except
   RefreshCDS(TClientDataSet(HandBookcxGridDBTV.DataController.DataSource.DataSet));
  end;// with EmployeesX do}
end;

procedure TfHandBook.HandBookcxGridDBTVCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 EditHandBookMIClick(self);
end;

procedure TfHandBook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfHandBook.HandBookPMPopup(Sender: TObject);
begin
 EgaisMI.Visible:=HandBookcxGridDBTV.DataController.DataSource.DataSet=fMain.DrinkAlcCodeCDS;
end;

procedure TfHandBook.EgaisMIClick(Sender: TObject);
begin
 if (not ((HandBookcxGridDBTV.DataController.DataSource.DataSet=fMain.DrinkAlcCodeCDS) and
    (fMain.DrinkAlcCodeCDSALCCODE.AsString<>'') and
    (fMain.DrinkAlcCodeCDSID.AsInteger<>0))) then
  MessageDlg('Ошибка: Не соответствие справочника или реквизита.',mtError,[mbOk],0)
 else
  with fMain do
   try
    SocketConnection.AppServer.DBStartTransaction;

    InUpDelCDS.Close;
    InUpDelCDS.CommandText:=
     'execute procedure egais_identifieradd('+DrinkAlcCodeCDSID.AsString+','+#39+'DRINKALCCODE'+#39+',null)';
    InUpDelCDS.Execute;
    SocketConnection.AppServer.DBCommit;
    MessageDlg('Запрос успешно отправлен.'+#10#13+
               'Ответ ожидайте через несколько минут.' ,mtInformation,[mbOk],0);    
   except on E:Exception do
    begin
     SocketConnection.AppServer.DBRollback;
     MessageDlg('Ошибка: '+E.Message+'"',mtError,[mbOk],0);
    end;
   end;
end;

procedure TfHandBook.miExcelClick(Sender: TObject);
begin
 if  (not HandBookcxGridDBTV.DataController.DataSource.DataSet.Active)
  or (HandBookcxGridDBTV.DataController.DataSource.DataSet.RecordCount=0) then
  exit;
 with fMain.SaveDialog do
  begin
   DefaultExt := 'xls';
   Filter := 'Microsoft Excel 2000 (*.xls)|*.xls';
   FileName := 'Справочник '+self.Caption+'.xls';
   if Execute then
    ExportGrid4ToExcel(FileName,HandBookcxGrid);
  end;
end;

end.

