�
 TFORMTELACONSULTAITENS 0�
  TPF0TFormTelaConsultaItensFormTelaConsultaItensLeft� TopuBorderIcons BorderStylebsToolWindowClientHeightIClientWidth$ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 	FormStylefsStayOnTop
KeyPreview	OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreate	OnKeyDownFormKeyDownPixelsPerInch`
TextHeight TLabelLblCodigoProdTagLeftTop-Width-Height	AlignmenttaCenterCaption&ProdutoFocusControlVALORFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabelRxLabel2TagLeftTopWidth� HeightCaptionConsulta de ItensFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameImpact
Font.Style 
ParentFont  TShapeShape2LeftTop&WidthHeight	Pen.ColorclSilver  	TMaskEditVALORLeftTop=Width�HeightCharCaseecUpperCaseColorclWhiteCtl3D	Font.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTahoma
Font.StylefsBold ParentCtl3D
ParentFontTabOrder 	OnKeyDownVALORKeyDown
OnKeyPressVALORKeyPress  	TRxDBGridDBGridListaLeft Top[Width$Height�AlignalBottomBorderStylebsNoneColorclWhiteCtl3D
DataSource
DSTemplate
FixedColor��� Font.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTahoma
Font.StylefsBold OptionsdgTitles
dgColLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit ParentCtl3D
ParentFontReadOnly	TabOrderTitleFont.CharsetANSI_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameTahomaTitleFont.StylefsBold ColumnsExpanded	FieldNameProdICodVisible	 Expanded	FieldNameProdA60DescrVisible	 Expanded	FieldNameProdN2VlrVendaVisible	 Expanded	FieldNamePRODN3SALDESTOQWidthxVisible	    TDataSource
DSTemplateAutoEditDataSet
QryProdutoLeft}Top�   TQuery
QryProdutoDatabaseNameDBAutomacaoSQL.Stringsselect * from PRODUTOwhere  PRODCENTRACARD = 'S' order by PRODA60DESCR Left`Top�  TIntegerFieldQryProdutoProdICod	AlignmenttaLeftJustifyDisplayLabelC�digoDisplayWidth	FieldNameProdICod  TStringFieldQryProdutoProdA60DescrDisplayLabel	Descri��oDisplayWidthF	FieldNameProdA60DescrSize<  TFloatFieldQryProdutoProdN2VlrVendaDisplayLabelValorDisplayWidth	FieldNameProdN2VlrVendaDisplayFormat#,##0.00  TIBStringFieldQryProdutoPRODCENTRACARD	FieldNamePRODCENTRACARDVisibleSize  TFloatFieldQryProdutoPRODN3SALDESTOQDisplayLabelEstoque	FieldNamePRODN3SALDESTOQOrigin#DBAUTOMACAO.PRODUTO.PRODN3SALDESTOQDisplayFormat	#,##0.000    