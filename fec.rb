class ForwardErrorCorrection
  def encode(bitstring)
    @output_array = Array.new
    bitstring.split("").each do |i|
      if i == "0"
        @output_array << "000"
      else
        @output_array << "111"
      end
    end
    return @output_array.join("")
  end

  def decode(bitstring)
    bitstring.split("").each do |i|
      
    end
  end
end

