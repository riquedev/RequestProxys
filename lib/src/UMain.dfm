object Main_FM: TMain_FM
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Requisi'#231#227'o de Proxys'
  ClientHeight = 631
  ClientWidth = 630
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 624
    Height = 21
    Align = alTop
    Alignment = taCenter
    Caption = 'Proxy Request'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 109
  end
  object Footer: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 606
    Width = 624
    Height = 24
    Margins.Bottom = 1
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Footer'
    ShowCaption = False
    TabOrder = 0
    object GitHub_href: TLabel
      AlignWithMargins = True
      Left = 584
      Top = 3
      Width = 37
      Height = 18
      Cursor = crHandPoint
      Align = alRight
      Alignment = taRightJustify
      Caption = 'GitHub'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      GlowSize = 1
      ParentFont = False
      Layout = tlCenter
      OnClick = GitHub_hrefClick
      ExplicitHeight = 15
    end
    object GitHub_logo: TImage
      Left = 549
      Top = 0
      Width = 32
      Height = 24
      Align = alRight
      AutoSize = True
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
        1974455874536F6674776172650041646F626520496D616765526561647971C9
        653C000002B7494441545847C596BB4F146114C5F1916001010CE0DA40EC6C79
        98684234A1F07F2021687C043B0A343116FC01349414062A1B24123B63E9A3B1
        430A0A311AB5316A234648C4389E339E6FB9DCF976999D99C493FC12F6DE73CF
        1D26FBCD4E5B5E9DEAEBEF05D7C103B0017E8044F06FD6D8A3A75763E585B021
        B002F640587818F472664831AD0BC35DE03EF803624BF2C059667429369F30C0
        FFFA1D8885168159F9EE068CE3E0BB06AB8499E35A13170C2332C602AA80D923
        5A775068F480F7320636C12350E4A238C35966D83A77F468EDBE505C36A6C0A4
        7AED80C7EBB3EAE1D83D13F658D2436FBB662755B72CB357170AA3CE10189625
        153EF3649C054755AA8B35F50E7CE3F17918C4B24765494D6BAE1938274B6131
        C36506D682A1067E9B86E54A6A2A2166B8CC0077D668983645CB2770523985C5
        0CF051999E691AF8C88C35AF29A3B498E5B2032B6CFA6342787B5A7B7C3611B3
        94E9F76CB2B9E38AE483662B1333DD0EB2C3862F922DCD552664BE753B521A5D
        C0B6E62A1333DD8E94860DD0AFD9D26296CB0E6CB3B9EE8A8129CD9716B35C76
        609DCD25570CBC06C7955158CC50566CC7120D13AE6859504E6131C3655A2668
        E8043F4DD1B30A6ACACB2DCC9CD66C2C93706767302F9AC63CB8049E9BDA2FF0
        10DC04FCE53C960E1AA1C65B7D01DC02FC71E34C988FB1A8D1747800ECAAC117
        C959C0778057AA59187E44A375B1061ECB7318DC35A0D17F4261CE18C8797006
        F81F92318D6484DE45E76DC49C46F685226FE14B637AAA7A37E01BCE3D701964
        6E7F107A7DC02E8AC11DF1D38506DF0DEC237346AD5C829F176B977998DDFC0B
        0DC320D8D2007901EE80ABE02E38216B46E835BB00660ECADA5C30F225E28906
        3DDDB265C49EF30698D5DACB0D06F8ADBE01BE001BD6CA057C053CBA9953935B
        18EE003C966FC03790BE6EC7C49E3CF4DE061D6A35569224FF91A4ED2F0BA7A7
        0169DC444F0000000049454E44AE426082}
      Proportional = True
      OnClick = GitHub_hrefClick
      ExplicitLeft = 554
      ExplicitTop = 1
      ExplicitHeight = 32
    end
  end
  object Body: TPanel
    Left = 0
    Top = 27
    Width = 630
    Height = 576
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Body'
    ShowCaption = False
    TabOrder = 1
    object B_Top: TPanel
      Left = 0
      Top = 0
      Width = 630
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'B_Top'
      ShowCaption = False
      TabOrder = 0
      object AdvGlowButton1: TAdvGlowButton
        AlignWithMargins = True
        Left = 527
        Top = 3
        Width = 100
        Height = 35
        Align = alRight
        Caption = 'Requisitar Proxy'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = Request_btnClick
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
        ExplicitLeft = 395
      end
    end
    object BodyPages: TPageControl
      Left = 0
      Top = 237
      Width = 630
      Height = 339
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Informa'#231#245'es Gerais'
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 622
          Height = 311
          ActivePage = TabSheet5
          Align = alClient
          TabOrder = 0
          object TabSheet5: TTabSheet
            Caption = 'Informa'#231#245'es para Conex'#227'o'
            ImageIndex = 1
            object Nivel_Anon: TLabel
              Left = 0
              Top = 0
              Width = 614
              Height = 13
              Align = alTop
              Caption = 'N'#237'vel de Anonimidade:'
              ExplicitWidth = 116
            end
            object Support_Https: TLabel
              Left = 0
              Top = 40
              Width = 614
              Height = 13
              Align = alTop
              Caption = 'Suporta HTTPS:'
              ExplicitWidth = 77
            end
            object Protocol: TLabel
              Left = 0
              Top = 80
              Width = 614
              Height = 13
              Align = alTop
              Caption = 'Procolo:'
              ExplicitWidth = 42
            end
            object IP: TLabel
              Left = 0
              Top = 120
              Width = 614
              Height = 13
              Align = alTop
              Caption = 'IP:'
              ExplicitWidth = 12
            end
            object Port: TLabel
              Left = 0
              Top = 160
              Width = 614
              Height = 13
              Align = alTop
              Caption = 'Porta:'
              ExplicitWidth = 30
            end
            object Loc: TLabel
              Left = 0
              Top = 200
              Width = 614
              Height = 13
              Align = alTop
              Caption = 'Localiza'#231#227'o:'
              ExplicitWidth = 61
            end
            object Label2: TLabel
              Left = 0
              Top = 240
              Width = 614
              Height = 13
              Align = alTop
              Caption = 'Velocidade:'
              ExplicitWidth = 59
            end
            object Nivel_Anon_EDT: TEdit
              AlignWithMargins = True
              Left = 15
              Top = 16
              Width = 596
              Height = 21
              Margins.Left = 15
              Align = alTop
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 0
            end
            object Support_Https_edt: TEdit
              AlignWithMargins = True
              Left = 15
              Top = 56
              Width = 596
              Height = 21
              Margins.Left = 15
              Align = alTop
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 1
            end
            object Protocol_EDT: TEdit
              AlignWithMargins = True
              Left = 15
              Top = 96
              Width = 596
              Height = 21
              Margins.Left = 15
              Align = alTop
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 2
            end
            object IP_edt: TEdit
              AlignWithMargins = True
              Left = 15
              Top = 136
              Width = 596
              Height = 21
              Margins.Left = 15
              Align = alTop
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 3
            end
            object Port_edt: TEdit
              AlignWithMargins = True
              Left = 15
              Top = 176
              Width = 596
              Height = 21
              Margins.Left = 15
              Align = alTop
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 4
            end
            object Loc_edt: TEdit
              AlignWithMargins = True
              Left = 15
              Top = 216
              Width = 596
              Height = 21
              Margins.Left = 15
              Align = alTop
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 5
            end
            object Vel_edt: TEdit
              AlignWithMargins = True
              Left = 15
              Top = 256
              Width = 596
              Height = 21
              Margins.Left = 15
              Align = alTop
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 6
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Permiss'#245'es'
            object Meth_POST: TLabel
              Left = 0
              Top = 40
              Width = 614
              Height = 13
              Align = alTop
              Caption = 'M'#233'todo POST:'
              ExplicitWidth = 73
            end
            object Cookies: TLabel
              Left = 0
              Top = 80
              Width = 614
              Height = 13
              Align = alTop
              Caption = 'Cookies:'
              ExplicitWidth = 44
            end
            object Referer: TLabel
              Left = 0
              Top = 120
              Width = 614
              Height = 13
              Align = alTop
              Caption = 'Referer:'
              ExplicitWidth = 40
            end
            object User_Agent: TLabel
              Left = 0
              Top = 160
              Width = 614
              Height = 13
              Align = alTop
              Caption = 'User-Agent'
              ExplicitWidth = 58
            end
            object Meth_GET: TLabel
              Left = 0
              Top = 0
              Width = 614
              Height = 13
              Align = alTop
              Caption = 'M'#233'todo GET:'
              ExplicitWidth = 66
            end
            object Meth_GET_EDT: TEdit
              AlignWithMargins = True
              Left = 15
              Top = 16
              Width = 596
              Height = 21
              Margins.Left = 15
              Align = alTop
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 0
            end
            object Meth_POST_edt: TEdit
              AlignWithMargins = True
              Left = 15
              Top = 56
              Width = 596
              Height = 21
              Margins.Left = 15
              Align = alTop
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 1
            end
            object Cookies_EDT: TEdit
              AlignWithMargins = True
              Left = 15
              Top = 96
              Width = 596
              Height = 21
              Margins.Left = 15
              Align = alTop
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 2
            end
            object Referer_edt: TEdit
              AlignWithMargins = True
              Left = 15
              Top = 136
              Width = 596
              Height = 21
              Margins.Left = 15
              Align = alTop
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 3
            end
            object User_Agent_EDT: TEdit
              AlignWithMargins = True
              Left = 15
              Top = 176
              Width = 596
              Height = 21
              Margins.Left = 15
              Align = alTop
              BorderStyle = bsNone
              ReadOnly = True
              TabOrder = 4
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'JSON'
        ImageIndex = 1
        object AdvMemo1: TAdvMemo
          Left = 0
          Top = 0
          Width = 622
          Height = 311
          Cursor = crIBeam
          ActiveLineSettings.ShowActiveLine = False
          ActiveLineSettings.ShowActiveLineIndicator = False
          Align = alClient
          AutoCompletion.Font.Charset = DEFAULT_CHARSET
          AutoCompletion.Font.Color = clWindowText
          AutoCompletion.Font.Height = -11
          AutoCompletion.Font.Name = 'Tahoma'
          AutoCompletion.Font.Style = []
          AutoCompletion.StartToken = '(.'
          AutoCorrect.Active = True
          AutoHintParameterPosition = hpBelowCode
          BookmarkGlyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
            2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
            2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
            B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
            B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
            BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
            BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
            BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
            25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
          BorderStyle = bsSingle
          ClipboardFormats = [cfText]
          CodeFolding.Enabled = False
          CodeFolding.LineColor = clGray
          Ctl3D = False
          DelErase = True
          EnhancedHomeKey = False
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clWindowText
          Gutter.Font.Height = -13
          Gutter.Font.Name = 'Courier New'
          Gutter.Font.Style = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'COURIER NEW'
          Font.Style = []
          HiddenCaret = False
          Lines.Strings = (
            '')
          MarkerList.UseDefaultMarkerImageIndex = False
          MarkerList.DefaultMarkerImageIndex = -1
          MarkerList.ImageTransparentColor = 33554432
          MemoSource = AdvMemoSource1
          OleDropTarget = []
          PrintOptions.MarginLeft = 0
          PrintOptions.MarginRight = 0
          PrintOptions.MarginTop = 0
          PrintOptions.MarginBottom = 0
          PrintOptions.PageNr = False
          PrintOptions.PrintLineNumbers = False
          RightMarginColor = 14869218
          ScrollHint = False
          SelColor = clWhite
          SelBkColor = clNavy
          ShowRightMargin = True
          SmartTabs = False
          SyntaxStyles = AdvJSONMemoStyler1
          TabOrder = 0
          TabStop = True
          TrimTrailingSpaces = False
          UILanguage.ScrollHint = 'Row'
          UILanguage.Undo = 'Undo'
          UILanguage.Redo = 'Redo'
          UILanguage.Copy = 'Copy'
          UILanguage.Cut = 'Cut'
          UILanguage.Paste = 'Paste'
          UILanguage.Delete = 'Delete'
          UILanguage.SelectAll = 'Select All'
          UrlStyle.TextColor = clBlue
          UrlStyle.BkColor = clWhite
          UrlStyle.Style = [fsUnderline]
          UseStyler = True
          Version = '3.5.2.0'
          WordWrap = wwNone
        end
      end
    end
    object SupportOptions: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 74
      Width = 624
      Height = 37
      Align = alTop
      BevelOuter = bvNone
      Caption = 'B_Top'
      ShowCaption = False
      TabOrder = 2
      object S_Https: TCheckBox
        Left = 0
        Top = 0
        Width = 97
        Height = 37
        Align = alLeft
        Caption = 'HTTPS'
        TabOrder = 0
      end
      object S_Get: TCheckBox
        Left = 97
        Top = 0
        Width = 97
        Height = 37
        Align = alLeft
        Caption = 'GET'
        TabOrder = 1
      end
      object S_Post: TCheckBox
        Left = 194
        Top = 0
        Width = 97
        Height = 37
        Align = alLeft
        Caption = 'POST'
        TabOrder = 2
      end
      object S_Cookies: TCheckBox
        Left = 291
        Top = 0
        Width = 97
        Height = 37
        Align = alLeft
        Caption = 'COOKIES'
        TabOrder = 3
      end
      object S_Referer: TCheckBox
        Left = 388
        Top = 0
        Width = 97
        Height = 37
        Align = alLeft
        Caption = 'REFERER'
        TabOrder = 4
      end
      object S_UserAgent: TCheckBox
        Left = 485
        Top = 0
        Width = 97
        Height = 37
        Align = alLeft
        Caption = 'USER-AGENT'
        TabOrder = 5
      end
    end
    object CB_PN: TPanel
      Left = 0
      Top = 114
      Width = 630
      Height = 41
      Align = alTop
      Caption = 'CB_PN'
      ShowCaption = False
      TabOrder = 3
      object Procurar_Por_CBPN: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 66
        Height = 33
        Align = alLeft
        Caption = 'Procurar Por:'
        ExplicitHeight = 13
      end
      object Anonymity_CB: TComboBox
        AlignWithMargins = True
        Left = 76
        Top = 4
        Width = 109
        Height = 21
        Align = alLeft
        Style = csDropDownList
        TabOrder = 0
        Items.Strings = (
          'Proxy N'#227'o An'#244'nimo'
          'Proxy An'#244'nimo')
      end
      object Protocol_CB: TComboBox
        AlignWithMargins = True
        Left = 191
        Top = 4
        Width = 109
        Height = 21
        Align = alLeft
        Style = csDropDownList
        TabOrder = 1
        Items.Strings = (
          'Protocolo HTTP'
          'Protocolo Sock4'
          'Protocolo Sock5')
      end
    end
    object Input_Info: TPanel
      Left = 0
      Top = 196
      Width = 630
      Height = 41
      Align = alTop
      Caption = 'Input_Info'
      ShowCaption = False
      TabOrder = 4
      object Preferer_Port: TLabel
        Left = 1
        Top = 1
        Width = 93
        Height = 39
        Align = alLeft
        Caption = 'Porta Preferencial:'
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 182
        Top = 4
        Width = 131
        Height = 33
        Margins.Left = 10
        Align = alLeft
        Caption = 'Velocidade M'#237'nima (KB/s):'
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object pref_port_edt: TEdit
        AlignWithMargins = True
        Left = 97
        Top = 4
        Width = 72
        Height = 28
        Align = alLeft
        Constraints.MaxHeight = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Orientation = 5
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 26
      end
      object Min_vel_edt: TEdit
        AlignWithMargins = True
        Left = 319
        Top = 4
        Width = 72
        Height = 28
        Align = alLeft
        Constraints.MaxHeight = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Orientation = 5
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitHeight = 26
      end
    end
    object Support_PN: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 44
      Width = 624
      Height = 24
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = 'Procurar Proxy com suporte:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object Panel2: TPanel
      Left = 0
      Top = 155
      Width = 630
      Height = 41
      Align = alTop
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 6
      object ApenasPO: TLabel
        Left = 1
        Top = 1
        Width = 126
        Height = 39
        Align = alLeft
        Caption = 'Apenas Proxy de origem:'
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object Label6: TLabel
        AlignWithMargins = True
        Left = 252
        Top = 4
        Width = 128
        Height = 33
        Margins.Left = 10
        Align = alLeft
        Caption = 'Exceto Proxys de Origem:'
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object Origem_CB: TComboBox
        AlignWithMargins = True
        Left = 130
        Top = 9
        Width = 109
        Height = 21
        Margins.Top = 8
        Align = alLeft
        Style = csDropDownList
        TabOrder = 0
      end
      object Exceto_CB: TComboBox
        AlignWithMargins = True
        Left = 386
        Top = 9
        Width = 109
        Height = 21
        Margins.Top = 8
        Align = alLeft
        Style = csDropDownList
        TabOrder = 1
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 568
    Top = 32
    object Sobre1: TMenuItem
      Caption = 'Informa'#231#245'es'
      object Conexo1: TMenuItem
        Caption = 'Conex'#227'o'
        OnClick = Conexo1Click
      end
      object ProxyRequest1: TMenuItem
        Caption = 'Proxy Request'
        OnClick = ProxyRequest1Click
      end
    end
    object Configuraes1: TMenuItem
      Caption = 'Configura'#231#245'es'
      OnClick = Configuraes1Click
    end
  end
  object AdvMemoSource1: TAdvMemoSource
    SyntaxStyler = AdvJSONMemoStyler1
    Lines.Strings = (
      '')
    ReadOnly = False
    Left = 576
    Top = 416
  end
  object AdvMemoStylerManager1: TAdvMemoStylerManager
    Items = <>
    Left = 576
    Top = 368
  end
  object AdvJSONMemoStyler1: TAdvJSONMemoStyler
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    HighlightStyle.TextColor = clWhite
    HighlightStyle.BkColor = clRed
    HighlightStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'false'
          'null'
          'true')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'JSON Standard Default'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = #39
        BracketEnd = #39
        Info = 'Simple Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ',:(){}[]='
        Info = 'Symbols'
      end>
    HintParameter.TextColor = clBlack
    HintParameter.BkColor = clInfoBk
    HintParameter.HintCharStart = '('
    HintParameter.HintCharEnd = ')'
    HintParameter.HintCharDelimiter = ';'
    HintParameter.HintClassDelimiter = '.'
    HintParameter.HintCharWriteDelimiter = ','
    HexIdentifier = '0x'
    Description = 'JSON'
    Filter = 'JSON Files (*.json)|*.json'
    DefaultExtension = '.json'
    StylerName = 'JSON'
    Extensions = 'json'
    RegionDefinitions = <
      item
        Identifier = '{'
        RegionStart = '{'
        RegionEnd = '}'
        RegionType = rtClosed
        ShowComments = False
      end>
    Left = 576
    Top = 320
  end
end
