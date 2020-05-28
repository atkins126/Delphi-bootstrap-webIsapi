//{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  Project1;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  ulogin in 'ulogin.pas' {UniLoginForm1: TUniLoginForm},
  uprodutos in 'uprodutos.pas' {fprodutos: TUniForm},
  umoblogin in 'umoblogin.pas' {UnimLoginForm1: TUnimLoginForm},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  umobprodutos in 'umobprodutos.pas' {fmobprodutos: TUnimForm},
  umobclientes in 'umobclientes.pas' {fmobclientes: TUnimForm},
  umobvenda in 'umobvenda.pas' {fmobvenda: TUnimForm},
  uconsprodvenda in 'uconsprodvenda.pas' {fconsprodvenda: TUnimForm},
  umobcadcliente in 'umobcadcliente.pas' {fmobcadcliente: TUnimForm},
  umobclie_fechavenda in 'umobclie_fechavenda.pas' {fmobcli_fechavenda: TUnimForm},
  umobfechavenda in 'umobfechavenda.pas' {fmobfechavenda: TUnimForm},
  umobfechamento_venda in 'umobfechamento_venda.pas' {fmobfechamento_venda: TUnimForm},
  umobdetprod in 'umobdetprod.pas' {fmobdetprod: TUnimForm},
  umobconsvendas in 'umobconsvendas.pas' {fmobconsvendas: TUnimForm},
  umobitensvenda in 'umobitensvenda.pas' {fmobitensvenda: TUnimForm},
  uconsproduto_venda in 'uconsproduto_venda.pas' {fconsproduto_venda: TUniForm},
  ucli_fechavenda in 'ucli_fechavenda.pas' {fcli_fechavenda: TUniForm},
  ufechavenda in 'ufechavenda.pas' {ffechavenda: TUniForm},
  ufechamento_venda in 'ufechamento_venda.pas' {ffechamento_venda: TUniForm},
  udetprod in 'udetprod.pas' {fdetprod: TUniForm};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
