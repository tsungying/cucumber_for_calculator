Given(/^the input "([^"]*)"$/) do |input|
  # 將 feature 所輸入的值儲存在 ＠input
  # instance variable 可以繼續被使用在之後的 step 中
  @input = input
end

When(/^the claculator is run$/) do
  # 嘗試去執行 calc.rb，傳遞儲存在第一步的值，並將第二步輸出結果紀錄起來
  @output = `ruby calc.rb #{@input}`
  # 檢查 Ruby 變數 $? 來確認指令是否成功
  raise("Command faild!") unless $?.success?
end

Then(/^the output should be "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
