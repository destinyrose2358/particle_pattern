file_name = "particle_pattern/terms_"
file = File.open(file_name + "1_10000.txt", "w")
term_group = 10000

term = 2
series = [1]

until term == 1000000
    if term > term_group
        term_group += 10000
        file.close
        new_name = file_name + term.to_s + "_" + term_group.to_s + ".txt"
        file = File.open(new_name, "w")
    end
    until series.first >= series.length
        series.shift
    end

    length = series.length
    
    new_term = ((length + 1) * (length / 2.0)).to_i + term
    file.puts new_term
    series << new_term
    term += 1
end

file.close
