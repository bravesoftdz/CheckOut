unit unMapaResumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, DB, IBCustomDataSet, IBQuery,
  RDprint, Grids, DBGrids, DBCtrls;

type
  TFrmMapaResumo = class(TForm)
    Label1: TLabel;
    edtDataini: TDateEdit;
    edtDataFim: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ibMapa: TIBQuery;
    RDprint: TRDprint;
    ibMapaREDUDEMIS: TDateTimeField;
    ibMapaREDUN3ALIQ1: TFloatField;
    ibMapaREDUN3BASE1: TFloatField;
    ibMapaREDUN3IMPO1: TFloatField;
    ibMapaREDUN3ALIQ2: TFloatField;
    ibMapaREDUN3BASE2: TFloatField;
    ibMapaREDUN3IMPO2: TFloatField;
    ibMapaREDUN3ALIQ3: TFloatField;
    ibMapaREDUN3BASE3: TFloatField;
    ibMapaREDUN3IMPO3: TFloatField;
    ibMapaREDUN3ALIQ4: TFloatField;
    ibMapaREDUN3BASE4: TFloatField;
    ibMapaREDUN3IMPO4: TFloatField;
    ibMapaREDUN3ALIQ5: TFloatField;
    ibMapaREDUN3BASE5: TFloatField;
    ibMapaREDUN3IMPO5: TFloatField;
    ibMapaREDUN3ALIQ6: TFloatField;
    ibMapaREDUN3BASE6: TFloatField;
    ibMapaREDUN3IMPO6: TFloatField;
    ibEmpresa: TIBQuery;
    dtsEmpresa: TDataSource;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    ibMapaREDUN3VENDABRUTA: TFloatField;
    ibMapaREDUN3GRANDETOTAL: TFloatField;
    CheckCabeca: TCheckBox;
    ibMapaREDUA13ID: TIBStringField;
    ibMapaEMPRICOD: TIntegerField;
    ibMapaREDUICOD: TIntegerField;
    ibMapaECFA13ID: TIBStringField;
    ibMapaREDUICONTINICIAL: TIntegerField;
    ibMapaREDUICONTFINAL: TIntegerField;
    ibMapaREDUICONTREDUZ: TIntegerField;
    ibMapaREDUICONTREINICIO: TIntegerField;
    ibMapaREDUN3ISSQN: TFloatField;
    ibMapaREDUN3SUBST: TFloatField;
    ibMapaREDUN3BASEISS: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Cabecalho;
    Function StrTm(xStr:String; Tamanho:Integer; Preenchecom:String; Posicao:Integer):String;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMapaResumo: TFrmMapaResumo;
  linha: Integer;
implementation

uses unDataModule;

{$R *.dfm}

procedure TFrmMapaResumo.Cabecalho;
begin
    RDprint.ImpF(linha,1,'Mapa Resumo - Digita��o das Redu��es Z -',[]); inc(linha);
    RDprint.ImpF(linha,1,'Periodo de: '+edtDataIni.text + ' - '+edtDataFim.Text,[]); inc(linha);
    RDprint.ImpF(linha,1,'Empresa   : '+ DBLookupComboBox2.Text,[]);inc(linha);
    RDprint.ImpF(Linha,1,'CNPJ: '+ ibEmpresa.fieldbyname('EMPRA14CGC').asstring + '  -  IE: '+ibEmpresa.fieldbyname('EMPRA20IE').asstring,[]);inc(linha);
    RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
    RDprint.ImpF(linha,1,'Data      ',[]); inc(linha);
    RDprint.ImpF(linha,1,'        Aliq.    R$ Base    R$ Icms         -        Aliq.    R$ Base    R$ Icms',[]);inc(linha);
    RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
end;

procedure TFrmMapaResumo.BitBtn1Click(Sender: TObject);
var tCbase1, tCicms1, tCbase2, tCicms2, tCbase3, tCicms3, tCbase4, tCicms4, tCbase5, tCicms5, tCbase6, tCicms6: extended;
    baseiss,ttbaseiss, ttbase, tticms, DBase, DIcms : Extended;
    base1, base2, base3, base4, base5, base6, xText : String;

begin

  ibMapa.Close;
  ibmapa.ParamByName('xDataIni').AsDate := edtDataIni.Date;
  ibmapa.ParamByName('xDataFim').AsDate := edtDataFim.Date;
  ibMapa.Open;
  RDprint.Abrir;
  tCBase1:= 0;
  tCicms1:= 0;
  tCBase2:= 0;
  tCicms2:= 0;
  tCBase3:= 0;
  tCicms3:= 0;
  tCBase4:= 0;
  tCicms4:= 0;
  tCBase5:= 0;
  tCicms5:= 0;
  tCBase6:= 0;
  tCicms6:= 0;
  ttbase := 0;
  tticms := 0;
  ttBaseIss:= 0;
  BaseIss:= 0;
  Base1  := '';
  Base2  := '';
  Base3  := '';
  Base4  := '';
  Base5  := '';
  Base6  := '';
  linha  := 0;
  while not ibmapa.Eof do
  begin
    linha := 1;
    cabecalho;
    while (not ibmAPA.Eof) and (linha <= 64) do
    begin
      xText:= '       ';
      RDprint.Imp(Linha,1,ibMapa.Fieldbyname('REDUDEMIS').ASSTRING);INC(LINHA);

      if ibMapa.Fieldbyname('REDUN3BASEISS').VALUE > 0 THEN
      Begin
        ttBaseiss := ttBaseiss  + IBMAPA.fieldbyname('REDUN3baseiss').value;
        baseiss   := baseiss  + IBMAPA.fieldbyname('REDUN3issqn').value;

        xText := '       ISSQN ';
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3baseISS').value),10,' ',0);
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3ISSQN').value),10,' ',0);
        RDprint.Imp(Linha,1,xText);
        inc(linha);
        if Linha >= 64 then
        begin
          RDprint.Novapagina;
          linha := 1;
          if CheckCabeca.Checked then
            Cabecalho;
        end;
      xText:= '       ';
      End;
      if IBMAPA.fieldbyname('REDUN3ALIQ1').asstring <> '' then
      begin
        xText := xText + StrTm(FormatFloat('0.00',IBMAPA.fieldbyname('REDUN3ALIQ1').value),5,' ',0)+'%';
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3base1').value),10,' ',0);
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3impo1').value),10,' ',0);

        if (Base1 <> '') and (base1 <> IBMAPA.fieldbyname('REDUN3ALIQ1').asstring) then
        begin
          ShowMessage('Aten��o...  Aliquota 01 do dia '+ibMapa.Fieldbyname('REDUDEMIS').ASSTRING+
          ' Difere da Aliquota Inicial');
          RDprint.Abortar;
          Exit;
        end;
        base1 := IBMAPA.fieldbyname('REDUN3ALIQ1').asstring;
        tCBase1:= tCBase1 + IBMAPA.fieldbyname('REDUN3base1').value;
        tCicms1:= tCicms1 + IBMAPA.fieldbyname('REDUN3impo1').value;
        ttBase := ttBase  + IBMAPA.fieldbyname('REDUN3base1').value;
        ttIcms := ttIcms  + IBMAPA.fieldbyname('REDUN3impo1').value;
      end;
      if IBMAPA.fieldbyname('REDUN3ALIQ2').asstring <> '' then
      begin
        xText := xText + '         -       '+StrTm(FormatFloat('0.00',IBMAPA.fieldbyname('REDUN3ALIQ2').value),5,' ',0)+'%';
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3base2').value),10,' ',0);
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3impo2').value),10,' ',0);
        if (Base2 <> '') and (base2 <> IBMAPA.fieldbyname('REDUN3ALIQ2').asstring) then
        begin
          ShowMessage('Aten��o...  Aliquota 02 do dia '+ibMapa.Fieldbyname('REDUDEMIS').ASSTRING+
          ' Difere da Aliquota Inicial');
          RDprint.Abortar;
          Exit;
        end;
        base2 := IBMAPA.fieldbyname('REDUN3ALIQ2').asstring;
        tCBase2:= tCBase2 + IBMAPA.fieldbyname('REDUN3base2').value;
        tCicms2:= tCicms2 + IBMAPA.fieldbyname('REDUN3impo2').value;
        ttBase := ttBase  + IBMAPA.fieldbyname('REDUN3base2').value;
        ttIcms := ttIcms  + IBMAPA.fieldbyname('REDUN3impo2').value;
      end;
      if Trim(xText) <> '' then
      begin
        RDprint.Imp(Linha,1,xText);
        inc(linha);
        xText:= '       ';
      end;

      if Linha >= 64 then
      begin
        RDprint.Novapagina;
        linha := 1;
        if CheckCabeca.Checked then
          Cabecalho;

      end;

      if IBMAPA.fieldbyname('REDUN3ALIQ3').asstring <> '' then
      begin
        xText := xText + StrTm(FormatFloat('0.00',IBMAPA.fieldbyname('REDUN3ALIQ3').value),5,' ',0)+'%';
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3base3').value),10,' ',0);
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3impo3').value),10,' ',0);
        if (Base3 <> '') and (base3 <> IBMAPA.fieldbyname('REDUN3ALIQ3').asstring) then
        begin
          ShowMessage('Aten��o...  Aliquota 03 do dia '+ibMapa.Fieldbyname('REDUDEMIS').ASSTRING+
          ' Difere da Aliquota Inicial');
          RDprint.Abortar;
          Exit;
        end;
        base3 := IBMAPA.fieldbyname('REDUN3ALIQ3').asstring;
        tCBase3:= tCBase3 + IBMAPA.fieldbyname('REDUN3base3').value;
        tCicms3:= tCicms3 + IBMAPA.fieldbyname('REDUN3impo3').value;
        ttBase := ttBase  + IBMAPA.fieldbyname('REDUN3base3').value;
        ttIcms := ttIcms  + IBMAPA.fieldbyname('REDUN3impo3').value;
      end;
      if IBMAPA.fieldbyname('REDUN3ALIQ4').asstring <> '' then
      begin
        xText := xText +  '         -       '+ StrTm(FormatFloat('0.00',IBMAPA.fieldbyname('REDUN3ALIQ4').value),5,' ',0)+'%';
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3base4').value),10,' ',0);
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3impo4').value),10,' ',0);
        if (Base4 <> '') and (base4 <> IBMAPA.fieldbyname('REDUN3ALIQ4').asstring) then
        begin
          ShowMessage('Aten��o...  Aliquota 04 do dia '+ibMapa.Fieldbyname('REDUDEMIS').ASSTRING+
          ' Difere da Aliquota Inicial');
          RDprint.Abortar;
          Exit;
        end;
        base4 := IBMAPA.fieldbyname('REDUN3ALIQ4').asstring;
        tCBase4:= tCBase4 + IBMAPA.fieldbyname('REDUN3base4').value;
        tCicms4:= tCicms4 + IBMAPA.fieldbyname('REDUN3impo4').value;
        ttBase := ttBase  + IBMAPA.fieldbyname('REDUN3base4').value;
        ttIcms := ttIcms  + IBMAPA.fieldbyname('REDUN3impo4').value;
      end;
      if Trim(xText) <> '' then
      begin
        RDprint.Imp(Linha,1,xText);
        inc(linha);
        xText:= '       ';
      end;

      if Linha >= 64 then
      begin
        RDprint.Novapagina;
        linha := 1;
        if CheckCabeca.Checked then
          Cabecalho;

      end;

      if IBMAPA.fieldbyname('REDUN3ALIQ5').asstring <> '' then
      begin
        xText := xText +  StrTm(FormatFloat('0.00',IBMAPA.fieldbyname('REDUN3ALIQ5').value),5,' ',0)+'%';
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3base5').value),10,' ',0);
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3impo5').value),10,' ',0);
        if (Base5 <> '') and (base5 <> IBMAPA.fieldbyname('REDUN3ALIQ5').asstring) then
        begin
          ShowMessage('Aten��o...  Aliquota 05 do dia '+ibMapa.Fieldbyname('REDUDEMIS').ASSTRING+
          ' Difere da Aliquota Inicial');
          RDprint.Abortar;
          Exit;
        end;
        base5 := IBMAPA.fieldbyname('REDUN3ALIQ5').asstring;
        tCBase5:= tCBase5 + IBMAPA.fieldbyname('REDUN3base5').value;
        tCicms5:= tCicms5 + IBMAPA.fieldbyname('REDUN3impo5').value;
        ttBase := ttBase  + IBMAPA.fieldbyname('REDUN3base5').value;
        ttIcms := ttIcms  + IBMAPA.fieldbyname('REDUN3impo5').value;
      end;
      if IBMAPA.fieldbyname('REDUN3ALIQ6').asstring <> '' then
      begin
        xText := xText + '         -       '+  StrTm(FormatFloat('0.00',IBMAPA.fieldbyname('REDUN3ALIQ6').value),5,' ',0)+'%';
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3base6').value),10,' ',0);
        xText := xText + ' '+ StrTm(FormatFloat('###,##0.00',IBMAPA.fieldbyname('REDUN3impo6').value),10,' ',0);
        if (Base6 <> '') and (base6 <> IBMAPA.fieldbyname('REDUN3ALIQ6').asstring) then
        begin
          ShowMessage('Aten��o...  Aliquota 06 do dia '+ibMapa.Fieldbyname('REDUDEMIS').ASSTRING+
          ' Difere da Aliquota Inicial');
          RDprint.Abortar;
          Exit;
        end;
        base6 := IBMAPA.fieldbyname('REDUN3ALIQ6').asstring;
        tCBase6:= tCBase6 + IBMAPA.fieldbyname('REDUN3base6').value;
        tCicms6:= tCicms6 + IBMAPA.fieldbyname('REDUN3impo6').value;
        ttBase := ttBase  + IBMAPA.fieldbyname('REDUN3base6').value;
        ttIcms := ttIcms  + IBMAPA.fieldbyname('REDUN3impo6').value;
      end;
      if Trim(xText) <> '' then
      begin
        RDprint.Imp(Linha,1,xText);
        inc(linha);
        xText:= '        ';
      end;
      if Linha >= 60 then
      begin
        RDprint.Novapagina;
        linha := 1;
        if CheckCabeca.Checked then
          Cabecalho;

      end;

      RDprint.Imp(Linha,20,'Vnd Bruta: '+StrTm(FormatFloat('###,##0.00',ibMapa.Fieldbyname('REDUN3VENDABRUTA').value),10,' ',0));
      RDprint.Imp(Linha,52,'Grd Total: '+StrTm(FormatFloat('###,##0.00',ibMapa.Fieldbyname('REDUN3GRANDETOTAL').value),18,' ',0));inc(linha);
      RDprint.Imp(Linha,20,'R$Base...: '+StrTm(FormatFloat('###,##0.00',ttbase),10,' ',0));
      RDprint.Imp(Linha,52,'R$ICMS...: '+StrTm(FormatFloat('###,##0.00',tticms),18,' ',0));
      ttbase := 0;
      tticms := 0;
      inc(linha);

      ibMapa.Next;
      if Linha >= 64 then
      begin
        RDprint.Novapagina;
        linha := 1;
        if CheckCabeca.Checked then
          Cabecalho;
        
      end;
    End;
  end;

  RDprint.Novapagina;
  linha := 1;
  RDprint.ImpF(linha,1,'Mapa Resumo - Digita��o das Redu��es Z -',[]); inc(linha);
  RDprint.ImpF(linha,1,'Periodo de: '+ edtDataIni.text + ' - '+edtDataFim.Text,[]); inc(linha);
  RDprint.ImpF(linha,1,'Empresa   : '+ DBLookupComboBox2.Text,[]);inc(linha);
  RDprint.ImpF(Linha,1,'CNPJ: '+ ibEmpresa.fieldbyname('EMPRA14CGC').asstring + '  -  IE: '+ibEmpresa.fieldbyname('EMPRA20IE').asstring,[]);inc(linha);
  RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
  RDprint.ImpF(Linha,1,'                  R E S U M O    G E R A L   D O   P E R I O D O                ',[]);inc(linha);
  RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
  RDprint.ImpF(linha,1,'Data     ',[]); inc(linha);
  RDprint.ImpF(linha,1,'          Aliq.    R$ Base   R$ Icms',[]);inc(linha);
  RDprint.ImpF(linha,1,'================================================================================',[]); inc(linha);
  ttbase:= 0;
  tticms:= 0;

  if baseiss > 0 then
  begin
    RDprint.Imp(Linha,10,'ISSQN');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',ttBaseiss),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',baseiss),10,' ',0)); inc(linha,2);
  end;

  if base1 <> '' then
  begin
    RDprint.Imp(Linha,10,base1+'%');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',tCBase1),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',tCICMS1),10,' ',0)); inc(linha);
    ttbase := ttbase + tcBase1;
    tticms := tticms + tcicms1;
  end;
  if base2 <> '' then
  begin
    RDprint.Imp(Linha,10,base2+'%');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',tCBase2),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',tCICMS2),10,' ',0));inc(linha);
    ttbase := ttbase + tcBase2;
    tticms := tticms + tcicms2;
  end;
  if base3 <> '' then
  begin
    RDprint.Imp(Linha,10,base3+'%');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',tCBase3),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',tCICMS3),10,' ',0)); inc(linha);
    ttbase := ttbase + tcBase3;
    tticms := tticms + tcicms3;
  end;
  if base4 <> '' then
  begin
    RDprint.Imp(Linha,10,base4+'%');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',tCBase4),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',tCICMS4),10,' ',0)); inc(linha);
    ttbase := ttbase + tcBase4;
    tticms := tticms + tcicms4;
  end;
  if base5 <> '' then
  begin
    RDprint.Imp(Linha,10,base5+'%');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',tCBase5),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',tCICMS5),10,' ',0)); inc(linha);
    ttbase := ttbase + tcBase5;
    tticms := tticms + tcicms5;
  end;
  if base6 <> '' then
  begin
    RDprint.Imp(Linha,10,Base6+'%');
    RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',tCBase6),10,' ',0));
    RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',tCICMS6),10,' ',0)); inc(linha);
    ttbase := ttbase + tcBase6;
    tticms := tticms + tcicms6;
  end;
//  RDprint.Imp(Linha,16,'----------');
//  RDprint.Imp(Linha,28,'----------'); inc(linha);
//  RDprint.Imp(Linha,16,StrTm(FormatFloat('###,##0.00',ttBase),10,' ',0));
//  RDprint.Imp(Linha,28,StrTm(FormatFloat('###,##0.00',ttICMS),10,' ',0)); inc(linha);

  RDprint.Fechar;
end;

function TFrmMapaResumo.StrTm(xStr:String; Tamanho:Integer; Preenchecom:String; Posicao:Integer):String;
begin
  if Posicao = 0 then // antes do texto (a esquerda)
  begin
    while Length(xStr) < Tamanho do
      Insert(Preenchecom,xStr,0);

  end else if posicao = 1 then // depois do texto (a direita)
  begin
    while Length(xStr) < Tamanho do
      Insert(Preenchecom,xStr,Length(xStr));

  end;
  Result := xStr;
end;


procedure TFrmMapaResumo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    Perform(CM_Dialogkey,VK_Tab,0);
  end;

end;

procedure TFrmMapaResumo.DBLookupComboBox2Enter(Sender: TObject);
begin
  if not ibEmpresa.Active then
    ibEmpresa.Open;
end;

procedure TFrmMapaResumo.FormCreate(Sender: TObject);
begin
  if Dm.ibTrans.InTransaction then
    Dm.ibTrans.Commit;
  Dm.ibTrans.StartTransaction;

end;

procedure TFrmMapaResumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Dm.ibTrans.InTransaction then
    Dm.ibTrans.Commit;
  Action := caFree;
end;

end.
