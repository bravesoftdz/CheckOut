�
 TFORMCADASTROATIVIDADESCCUSTO 08  TPF0�TFormCadastroAtividadesCCustoFormCadastroAtividadesCCustoLeft� TopoCaption#Cadastro Centro de Custo AtividadesOldCreateOrder	PixelsPerInch`
TextHeight �
TScrollBoxScrollBoxFundo �TPanelPanelCentral �TPanelPanelFundoDados �TPanelPanel5 �TPageControlPagePrincipalTop.Height� �	TTabSheetTabSheetConsulta �TDBGridDBGridListaHeightKColumnsExpanded	FieldName	PRATA13IDVisible	 Expanded	FieldName
CECUA15CODVisible	 Expanded	FieldNameCECUA30CODEDITWidthVisible	 Expanded	FieldNameCECUICODREDUZWidthkVisible	 Expanded	FieldNamePRACN2PERRATEIOVisible	    �TMemoMemoDetalhesTop   �	TTabSheetTabSheetDadosPrincipais 	TGroupBox	GroupBox1Left Top WidthnHeightzAlignalClientCaptionDados Centro CustoFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder  TLabelLabel53Left� Top)Width!HeightCaptionContaFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel52LeftTop(Width]HeightCaption   Código ReduzidoFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel2LeftTopNWidth5HeightCaption% RateioFocusControlDBEdit1  TDBEdit
CodigoEditLeft� Top6WidthwHeightHintConta do Centro de CustoTabStopBorderStylebsNone	DataFieldCECUA30CODEDIT
DataSource
DSTemplateFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 	MaxLength
ParentFontReadOnly	TabOrder   TRxDBLookupComboRxDBLookupCombo2LeftTopWidth�HeightHintCentro de Custo da AtividadeDropDownCountDisplayAllFields		DataField
CECUA15COD
DataSource
DSTemplateDisplayEmpty...
EmptyValuenullFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style LookupField
CECUA15CODLookupDisplayCECUA60DESCRLookupSourcedsSQLCentroCusto
ParentFontParentShowHintShowHint	TabOrder  TDBEditCodReduzidoLeftTop6WidthkHeightHint#   Código Reduzido do Centro de CustoBorderStylebsNone	DataFieldCECUICODREDUZ
DataSource
DSTemplateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 	MaxLength
ParentFontParentShowHintShowHint	TabOrder  TDBEditDBEdit1LeftTop[WidthFHeightHintMPercentual do Valor da Atividade que sera invertida para este Centro de Custo	DataFieldPRACN2PERRATEIO
DataSource
DSTemplateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrder     �TPanelPanelMasterTop Height. TLabelLabel1LeftTopWidthHeightCaptionIdFocusControlDBEdit2Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelLabel4Left`TopWidth7HeightCaption   DescriçãoFocusControlDBEdit3Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBEditDBEdit2LeftTopWidthYHeight	DataField	PRATA13ID
DataSourceDSMasterTemplateTabOrder   TDBEditDBEdit3Left`TopWidth�Height	DataFieldPRATA60DESCR
DataSourceDSMasterTemplateTabOrder   �TPanelPanelCodigoDescricaoTop.Height       �TRxQuerySQLTemplateTagSQL.Strings2Select * From PRODUCAOATIVCCUSTO Where (%MFiltro)  and PRATA13ID = :PRATA13ID 	ParamDataDataType	ftUnknownName	PRATA13ID	ParamType	ptUnknown   TStringFieldSQLTemplatePRATA13IDDisplayLabelID	FieldName	PRATA13IDOriginDB.PRODUCAOATIVCCUSTO.PRATA13ID	FixedChar	Size  TIntegerFieldSQLTemplatePRACICODTagDisplayLabel   Cód	FieldNamePRACICODOriginDB.PRODUCAOATIVCCUSTO.PRACICOD  TStringFieldSQLTemplateCECUA15CODDisplayLabel   Cód	FieldName
CECUA15CODOrigin DB.PRODUCAOATIVCCUSTO.CECUA15COD	FixedChar	Size  TStringFieldSQLTemplateCECUA30CODEDITDisplayLabelConta	FieldKindfkLookup	FieldNameCECUA30CODEDITLookupDataSetSQLCentroCustoLookupKeyFields
CECUA15CODLookupResultFieldCECUA30CODEDIT	KeyFields
CECUA15CODSizeLookup	  TIntegerFieldSQLTemplateCECUICODREDUZDisplayLabel   Cód Reduzido	FieldKindfkLookup	FieldNameCECUICODREDUZLookupDataSetSQLCentroCustoLookupKeyFields
CECUA15CODLookupResultFieldCECUICODREDUZ	KeyFields
CECUA15CODLookup	  	TBCDFieldSQLTemplatePRACN2PERRATEIODisplayLabel% Rateio	FieldNamePRACN2PERRATEIOOrigin%DB.PRODUCAOATIVCCUSTO.PRACN2PERRATEIO	PrecisionSize   TRxQuerySQLCentroCustoDatabaseNameDBSQL.Stringsselect * from CENTROCUSTO  Macros LeftTop�  TStringFieldSQLCentroCustoCECUA15COD	FieldName
CECUA15CODOriginDB.CENTROCUSTO.CECUA15COD	FixedChar	Size  TIntegerFieldSQLCentroCustoCECUICODREDUZ	FieldNameCECUICODREDUZOriginDB.CENTROCUSTO.CECUICODREDUZ  TIntegerFieldSQLCentroCustoCECUINIVEL	FieldName
CECUINIVELOriginDB.CENTROCUSTO.CECUINIVEL  TStringFieldSQLCentroCustoCECUA15CODPAI	FieldNameCECUA15CODPAIOriginDB.CENTROCUSTO.CECUA15CODPAI	FixedChar	Size  TStringFieldSQLCentroCustoCECUA30CODEDIT	FieldNameCECUA30CODEDITOriginDB.CENTROCUSTO.CECUA30CODEDIT	FixedChar	Size  TStringFieldSQLCentroCustoCECUA60DESCR	FieldNameCECUA60DESCROriginDB.CENTROCUSTO.CECUA60DESCR	FixedChar	Size<   TDataSourcedsSQLCentroCustoDataSetSQLCentroCustoLeft8Top�   TRxQuery
SQLUnidadeDatabaseNameDBSQL.Stringsselect * from UNIDADE Macros LeftTop�   TDataSourcedsSQLUnidadeDataSet
SQLUnidadeLeft8Top�    