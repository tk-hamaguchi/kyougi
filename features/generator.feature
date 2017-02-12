# language: ja

機能: CLI

シナリオ: helpメッセージの表示
  * 下記のコマンドを実行する:
    """
    kyougi help
    """
  * "標準出力"に下記が出力されている:
    """
    Commands:
      kyougi generate NAME   # Generate Project
      kyougi help [COMMAND]  # Describe available commands or one specific command
    """
  * "標準エラー出力"に下記が出力されている:
    """
    """


シナリオ: CLIからのジェネレート
  * 下記のコマンドを実行する:
    """
    kyougi generate
    """
  * "標準出力"に下記が出力されている:
    """
          create  template.json
          create  http
          create  http/ks.cfg
    """
  * "標準エラー出力"に下記が出力されている:
    """
    """
