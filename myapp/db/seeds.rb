tests = [
    ["吾輩は猫である", "サッカー"], 
    ["蜘蛛の糸", "バレー"], 
    ["探偵はバーにいる", "野球"]
]

tests.each do |title, content|
    Test.create(title: title, content: content)
end
