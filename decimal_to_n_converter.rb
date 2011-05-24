def decimal_to_n(value, n_charactors)
  value = value.to_i if value.class == String
  char = n_charactors
  n_value = ""
  
  loop do
    m = value / char.length
    n = value % char.length
    n_value = char[n, 1] + n_value
    if(m > 0)
      value /= char.length
    else
      break
    end
  end
  
  return n_value
end

def hex_to_n(hex_text, n_charactors)
  return decimal_to_n(hex_text.hex, n_charactors)
end

def dec_to_62(value)
  return decimal_to_n(value, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
end

def hex_to_62(hex_text)
  return hex_to_n(hex_text, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
end

#s = 12546144278562894612746835728461874621345362513643253536362351312523513415422534252356235234123416357854724624676878576524135746323546578638756.to_s(16)
#p s
#p hex_to_n(s, "0123456789").to_i.to_s(16)

