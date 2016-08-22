class ForwardErrorCorrection
    def encode(bitstring)
        @output_array = Array.new
        bitstring.split('').each do |letter|
            if letter == '0'
                @output_array << '000'
            else
                @output_array << '111'
            end
        end
        return @output_array.join('')
    end

    def decode(bitstring)
        @output_array = Array.new
        @errors_detected = 0
        bitstring.scan(/.../).each do |triplet|
            if triplet == '000'
                @output_array << '0'
            elsif triplet == '111'
                @output_array << '1'
            elsif ['001','010','100'].include? triplet
                @output_array << '0'
                @errors_detected = @errors_detected + 1
            elsif ['110', '101', '011'].include? triplet
                @output_array << '1'
                @errors_detected = @errors_detected + 1
            else
                raise "hell"
            end
        end
        puts "Errors detected: #{@errors_detected}"
        return @output_array.join('')
    end
end

