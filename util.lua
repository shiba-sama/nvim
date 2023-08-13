function wrap_text(text, width)
  text = text:gsub("\n", "")
  words = {}

  for word in text:gmatch("[^\n]+") do
    table.insert(words, word)
  end

  wrapped_text = ""
  current_line = ""

  for i = 1, #words do
    if #current_line + #words[i] > width then
      wrapped_text = wrapped_text .. "\n" .. current_line
      current_line = ""
    end
  end
end
