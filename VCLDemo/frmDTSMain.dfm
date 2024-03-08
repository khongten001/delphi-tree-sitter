object DTSMain: TDTSMain
  Left = 0
  Top = 0
  Caption = 'Tree-Sitter for Delphi demo'
  ClientHeight = 478
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 512
    Top = 50
    Height = 428
    Align = alRight
    ExplicitLeft = 568
    ExplicitTop = 45
    ExplicitHeight = 425
  end
  object memCode: TMemo
    Left = 0
    Top = 50
    Width = 512
    Height = 428
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Consolas'
    Font.Style = []
    HideSelection = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    OnChange = memCodeChange
    OnExit = memCodeExit
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblCode: TLabel
      Left = 104
      Top = 17
      Width = 31
      Height = 15
      Caption = 'Code:'
    end
    object btnLoad: TButton
      Left = 8
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Load...'
      TabOrder = 0
      OnClick = btnLoadClick
    end
    object cbCode: TComboBox
      Left = 141
      Top = 14
      Width = 145
      Height = 23
      Style = csDropDownList
      TabOrder = 1
      OnChange = cbCodeChange
      Items.Strings = (
        'c'
        'cpp'
        'pascal'
        'proto')
    end
  end
  object Panel1: TPanel
    Left = 515
    Top = 50
    Width = 250
    Height = 428
    Align = alRight
    Caption = 'Panel1'
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 1
      Top = 174
      Width = 248
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitLeft = 3
      ExplicitTop = 295
      ExplicitWidth = 183
    end
    object treeView: TTreeView
      Left = 1
      Top = 1
      Width = 248
      Height = 173
      Align = alClient
      HideSelection = False
      Indent = 19
      PopupMenu = pmTree
      ReadOnly = True
      TabOrder = 0
      OnChange = treeViewChange
      OnCreateNodeClass = treeViewCreateNodeClass
      OnExpanding = treeViewExpanding
    end
    object sgNodeProps: TStringGrid
      Left = 1
      Top = 177
      Width = 248
      Height = 250
      Align = alBottom
      ColCount = 2
      DefaultColWidth = 100
      DefaultRowHeight = 18
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
      TabOrder = 1
    end
  end
  object OD: TFileOpenDialog
    ClientGuid = '{58D00BB6-8E09-48B3-B19E-7E86D8D6B167}'
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'All files'
        FileMask = '*.*'
      end>
    Options = []
    Left = 376
    Top = 248
  end
  object AL: TActionList
    Left = 344
    Top = 336
    object actGoto: TAction
      Caption = 'Go to'
      OnExecute = actGotoExecute
      OnUpdate = actGotoUpdate
    end
    object actGotoParent: TAction
      Caption = 'Parent'
      OnExecute = actGotoParentExecute
      OnUpdate = actGotoParentUpdate
    end
  end
  object pmTree: TPopupMenu
    Left = 416
    Top = 304
    object mnuactGoto: TMenuItem
      Action = actGoto
      object mnuactGotoParent: TMenuItem
        Action = actGotoParent
      end
    end
  end
end
