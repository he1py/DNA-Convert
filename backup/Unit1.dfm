object Form1: TForm1
  Left = 236
  Height = 440
  Top = 310
  Width = 642
  Caption = 'Gene To Protein'
  ClientHeight = 440
  ClientWidth = 642
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  LCLVersion = '1.8.0.5'
  Visible = False
  object Label7: TLabel
    Left = 560
    Height = 13
    Top = 392
    Width = 62
    Caption = 'Coded:HE1P'
    ParentColor = False
  end
  object ToolBar1: TToolBar
    Left = 0
    Height = 33
    Top = 0
    Width = 642
    ButtonHeight = 23
    ButtonWidth = 25
    Caption = 'ToolBar1'
    Images = ImageList1
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 1
      Top = 2
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 26
      Height = 23
      Top = 2
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 34
      Top = 2
      Caption = 'ToolButton3'
      ImageIndex = 1
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 59
      Height = 23
      Top = 2
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Button1: TButton
      Left = 67
      Height = 23
      Top = 2
      Width = 200
      Caption = 'Decoder !'
      OnClick = Button1Click
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Height = 345
    Top = 40
    Width = 633
    ClientHeight = 345
    ClientWidth = 633
    TabOrder = 1
    object Label1: TLabel
      Left = 168
      Height = 13
      Top = 8
      Width = 8
      Caption = '5'''
      ParentColor = False
    end
    object Label2: TLabel
      Left = 616
      Height = 13
      Top = 64
      Width = 8
      Caption = '3'''
      ParentColor = False
    end
    object Label3: TLabel
      Left = 616
      Height = 13
      Top = 144
      Width = 8
      Caption = '5'''
      ParentColor = False
    end
    object Label4: TLabel
      Left = 168
      Height = 13
      Top = 88
      Width = 8
      Caption = '3'''
      ParentColor = False
    end
    object Label5: TLabel
      Left = 616
      Height = 13
      Top = 232
      Width = 8
      Caption = '3'''
      ParentColor = False
    end
    object Label6: TLabel
      Left = 168
      Height = 13
      Top = 168
      Width = 8
      Caption = '5'''
      ParentColor = False
    end
    object Memo1: TMemo
      Left = 176
      Height = 73
      Top = 8
      Width = 441
      Lines.Strings = (
        'ATTATCCGT'
      )
      TabOrder = 0
    end
    object Memo2: TMemo
      Left = 176
      Height = 73
      Top = 88
      Width = 441
      TabOrder = 1
    end
    object Memo3: TMemo
      Left = 176
      Height = 81
      Top = 168
      Width = 441
      TabOrder = 2
    end
    object Memo4: TMemo
      Left = 176
      Height = 81
      Top = 256
      Width = 441
      TabOrder = 3
    end
    object RadioButton1: TRadioButton
      Left = 16
      Height = 19
      Top = 40
      Width = 112
      Caption = 'Utiliser l''ADN 5''-->3'''
      Checked = True
      TabOrder = 4
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 16
      Height = 19
      Top = 104
      Width = 112
      Caption = 'Utiliser l''ADN 3''-->5'''
      TabOrder = 5
    end
    object RadioButton3: TRadioButton
      Left = 16
      Height = 19
      Top = 184
      Width = 89
      Caption = 'Utiliser l''ARNm'
      TabOrder = 6
    end
    object RadioButton4: TRadioButton
      Left = 16
      Height = 19
      Top = 264
      Width = 149
      Caption = 'Utiliser la chaine peptidique'
      TabOrder = 7
    end
  end
  object ImageList1: TImageList
    left = 592
    Bitmap = {
      4C69020000001000000010000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007DC9E3004DB7DA0080CC
      E600BFE6F200CAD3D600FEFEFE000000000000000000FEFEFE00FEFEFE00FEFE
      FE000000000000000000000000000000000000000000E3F4FC0099FFFF0099FF
      FF0099FFFF0097D6EC0063BBD90088D0E900C4E8F500D7FCFF00B6FEFF00418E
      A800BCD8E200FDFDFD000000000000000000BBE1EE00ACFDFF0099FFFF0099FF
      FF0099FFFF008FF9FC0023ACD6005EBFDF00ACDEEF00F8FEFF00F4FFFF00DEF5
      FF00327F9800EAEAEA000000000000000000B7DDEA00A1F4FF008FF5FF006CDF
      F20037BCDF006AC4E200D5FFFF00D3FFFF00D3FFFF00D3FFFF00D3FFFF00CAF2
      FF00436A7700EFEFEF000000000000000000D6E9EF0067C7E900E1FAFF00CBFD
      FF00BCFFFF00BAFFFF00BAFFFF00BAFFFF00BAFFFF00BAFFFF00BAFFFF00BDF2
      FF0066666600F9F9F9000000000000000000FDFDFD005DC1E6009EFFFF009EFF
      FF009EFFFF009EFFFF009EFFFF009EFFFF009EFFFF009EFFFF009EFFFF00B2F2
      FF0078787800FEFEFE000000000000000000FEFEFE002BACD90094FAFF0094FA
      FF0094FAFF0094FAFF0094FAFF0094FAFF0094FAFF0094FAFF0094FAFF0077D9
      F20092929200FEFEFE000000000000000000FEFEFE0027AAD9008BF1FF008BF1
      FF008BF1FF008BF1FF008BF1FF008BF1FF008BF1FF008BF1FF008BF1FF0044BF
      E600B0B0B000000000000000000000000000FEFEFE0026AAD60083E9FF0083E9
      FF0083E9FF0083E9FF0083E9FF0083E9FF0083E9FF0083E9FF0083E9FF001AA6
      D900CBCBCB00000000000000000000000000FEFEFE0031AFD9007AE0FF007AE0
      FF007AE0FF007AE0FF007AE0FF007AE0FF007AE0FF005CCEF2001FABD9002673
      8C00DEDEDE00000000000000000000000000FEFEFE0052BEE20071D7FF0071D7
      FF0071D7FF0047C0EC000EA1D20025728C006060600081818100B3B3B300DADA
      DA00FBFBFB00000000000000000000000000FEFEFE002DAED9000C87B100326B
      7F00676767008C8C8C00BFBFBF00E0E0E000F4F4F400FEFEFE00000000000000
      00000000000000000000000000000000000000000000DEDEDE00CCCCCC00E5E5
      E500F8F8F800FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8D8D800E1E1E100F9F9F900E0ADAD00C9C9
      C900000000000000000000000000000000000000000000000000000000000000
      0000FFCBCB00CC666600E0E0E000E6E6E600D2D2D200D1D1D100CC6666004E4E
      4E00F9F9F9000000000000000000000000000000000000000000000000000000
      0000FFC5C500CC666600C9C9C900B8B8B800BBBBBB00E1E1E100CC6666004949
      4900F9F9F9000000000000000000000000000000000000000000000000000000
      0000FFBFBF00CC666600CDCDCD00E2E2E200F8F8F800CBCBCB00CC6666004949
      4900F9F9F9000000000000000000000000000000000000000000000000000000
      0000FFB9B900CC666600A6595900CC666600CC666600A6595900CC6666004949
      4900F9F9F9000000000000000000000000000000000000000000000000000000
      0000FFB3B300CC66660099999900F4F4F400A3A3A300D4A1A100CC6666004949
      4900F9F9F9000000000000000000000000000000000000000000000000000000
      0000FFACAC00CC666600CA979700A5727200E6E6E600E1AEAE00CC6666004949
      4900F9F9F9000000000000000000000000000000000000000000E0E0E000BCBC
      BC00FFA6A600CC666600A7747400D6A3A300F4F4F400D5A2A200CC6666004949
      4900F9F9F9000000000000000000BBBBBB00C4C4C400FBFBFB00F8F8F800F4F4
      F400FFA0A000CC666600DCC3C300EDE1E100B1B1B100827B7B00BABABA00BABA
      BA00A0A0A000FBFBFB0000000000B6B6B600C0C0C000EDEDED00F1F1F100EDED
      ED00CC8080007B5555008A8A8A00C5C5C500D7D7D700D9D9D900707070009595
      9500A7A3A300917F7F00B1B1B100D0D0D000C5C5C500B9B9B900ACACAC00D4D4
      D400E9E9E900DEDEDE00D0D0D0006767670097979700A5A3A300857B7B00574D
      4D008A767600AC8E8E009393930084848400DCDCDC00D3D3D300C7C7C700BBBB
      BB00B0B0B00079797900BDBDBD006B6969006861610000000000101010007C72
      7200E6BBBB00D7AEAE0093939300FCFCFC00BFBFBF005B5B5B00CACACA00D6D6
      D600CACACA007A7A7A009B969600000000002726260045454500D6B8B8007C6A
      6A004747470080808000ECECEC000000000000000000FCFCFC00D8D8D8006262
      62009696960086868600B0A6A600C8A7A700A78C8C00373737005B5B5B00B1B1
      B100F2F2F2000000000000000000000000000000000000000000000000000000
      0000E9E9E900898989004B4B4B004444440079797900DADADA00FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F300F0F0F0000000000000000000000000000000
      0000000000000000000000000000
    }
  end
  object OpenDialog1: TOpenDialog
    Filter = 'ADN File Format|*,ADN;*.adn'
    left = 608
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.ADN'
    Filter = 'ADN File Format|*,ADN;*.adn'
    left = 624
  end
end
