When(/^下記のコマンドを実行する:$/) do |command|
  run_simple command
end

Then(/^"([^"]*)"に下記が出力されている:$/) do |device, output|
  method = case device
    when '標準出力'
      :stdout
    when '標準エラー出力'
      :stderr
    else
      raise 'unknown output'
    end
  expect(last_command_started.send(method).rstrip).to eq output
end
