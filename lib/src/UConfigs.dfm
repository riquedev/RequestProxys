object Config_FM: TConfig_FM
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Configura'#231#245'es'
  ClientHeight = 198
  ClientWidth = 229
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Body: TPanel
    Left = 0
    Top = 0
    Width = 229
    Height = 198
    Align = alClient
    Caption = 'Body'
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 50
      Width = 221
      Height = 13
      Align = alTop
      Caption = 'Port'
      ExplicitWidth = 21
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 221
      Height = 13
      Align = alTop
      Caption = 'Proxy'
      ExplicitWidth = 27
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 145
      Width = 221
      Height = 52
      Align = alTop
      Alignment = taCenter
      Caption = 
        'O Proxy '#233' necess'#225'rio para que voc'#234' possa fazer novas requisi'#231#245'es' +
        ' sem interrup'#231#245'es.'#13#10'Cada Proxy deve lhe render 6 requisi'#231#245'es a c' +
        'ada 20 horas.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 220
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 23
      Width = 221
      Height = 21
      Align = alTop
      TabOrder = 0
    end
    object Edit2: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 69
      Width = 221
      Height = 21
      Align = alTop
      NumbersOnly = True
      TabOrder = 1
    end
    object AdvGlowButton1: TAdvGlowButton
      AlignWithMargins = True
      Left = 26
      Top = 98
      Width = 177
      Height = 36
      Margins.Left = 25
      Margins.Top = 5
      Margins.Right = 25
      Margins.Bottom = 8
      Align = alTop
      Caption = 'Salvar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = AdvGlowButton1Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
end
