unit buytrsrv_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : $Revision:   1.130.1.0.1.0.1.6  $
// File generated on 19.05.2014 10:17:12 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Work\Dropbox\Projects\Buytrans\Server\buytrsrv.tlb (1)
// LIBID: {D9C8BCEA-21FD-46F8-AB54-902E0F9F95E4}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v1.0 Midas, (C:\WINDOWS\SysWOW64\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (3) v4.0 StdVCL, (C:\WINDOWS\SysWOW64\stdvcl40.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  buytrsrvMajorVersion = 1;
  buytrsrvMinorVersion = 0;

  LIBID_buytrsrv: TGUID = '{D9C8BCEA-21FD-46F8-AB54-902E0F9F95E4}';

  IID_IBuyTrRDM: TGUID = '{D1C1F2E4-BFE8-415B-AE55-AA99ADC54BE8}';
  CLASS_BuyTrRDM: TGUID = '{B3DB6F4A-0076-43D6-ABDC-B0E7901BE840}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IBuyTrRDM = interface;
  IBuyTrRDMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  BuyTrRDM = IBuyTrRDM;


// *********************************************************************//
// Interface: IBuyTrRDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D1C1F2E4-BFE8-415B-AE55-AA99ADC54BE8}
// *********************************************************************//
  IBuyTrRDM = interface(IAppServer)
    ['{D1C1F2E4-BFE8-415B-AE55-AA99ADC54BE8}']
    procedure DBStartTransaction; safecall;
    procedure DBCommit; safecall;
    procedure DBRollBack; safecall;
    procedure DBDisconnect; safecall;
    procedure DBSetDatabaseParams(const Login: WideString; const Password: WideString; 
                                  const IPAddress: WideString; const HostName: WideString; 
                                  const ClientVersion: WideString; out RetVal: OleVariant; 
                                  out SQLDialect: OleVariant); safecall;
    procedure DBCreateProvider(const ProviderName: WideString; out RetVal: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  IBuyTrRDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D1C1F2E4-BFE8-415B-AE55-AA99ADC54BE8}
// *********************************************************************//
  IBuyTrRDMDisp = dispinterface
    ['{D1C1F2E4-BFE8-415B-AE55-AA99ADC54BE8}']
    procedure DBStartTransaction; dispid 1;
    procedure DBCommit; dispid 2;
    procedure DBRollBack; dispid 3;
    procedure DBDisconnect; dispid 4;
    procedure DBSetDatabaseParams(const Login: WideString; const Password: WideString; 
                                  const IPAddress: WideString; const HostName: WideString; 
                                  const ClientVersion: WideString; out RetVal: OleVariant; 
                                  out SQLDialect: OleVariant); dispid 5;
    procedure DBCreateProvider(const ProviderName: WideString; out RetVal: OleVariant); dispid 6;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoBuyTrRDM provides a Create and CreateRemote method to          
// create instances of the default interface IBuyTrRDM exposed by              
// the CoClass BuyTrRDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBuyTrRDM = class
    class function Create: IBuyTrRDM;
    class function CreateRemote(const MachineName: string): IBuyTrRDM;
  end;

implementation

uses ComObj;

class function CoBuyTrRDM.Create: IBuyTrRDM;
begin
  Result := CreateComObject(CLASS_BuyTrRDM) as IBuyTrRDM;
end;

class function CoBuyTrRDM.CreateRemote(const MachineName: string): IBuyTrRDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BuyTrRDM) as IBuyTrRDM;
end;

end.
