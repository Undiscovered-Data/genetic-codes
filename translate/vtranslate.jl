include("code1.jl")
include("code2.jl")
include("code3.jl")
include("code4.jl")
include("code5.jl")
include("code6.jl")
include("code9.jl")
include("code10.jl")
include("code11.jl")
include("code12.jl")
include("code13.jl")
include("code14.jl")
include("code15.jl")
include("code16.jl")
include("code21.jl")
include("code22.jl")
include("code23.jl")
include("code24.jl")
include("code25.jl")
include("code26.jl")
include("code27.jl")
include("code28.jl")
include("code29.jl")
include("code30.jl")
include("code31.jl")
include("code33.jl")

import .code1
import .code2
import .code3
import .code4
import .code5
import .code6
import .code9
import .code10
import .code11
import .code12
import .code13
import .code14
import .code15
import .code16
import .code21
import .code22
import .code23
import .code24
import .code25
import .code26
import .code27
import .code28
import .code29
import .code30
import .code31
import .code33

ofile = open("chop.txt", "r")
file_array = readlines(ofile)
close(ofile)

popfirst!(file_array)

letter_array = []
for item in file_array
    sitem = strip(item)
    append!(letter_array, sitem)
end

work_list = [code1, code2, code3, code4, code5, code6, code9, code10, code11,
    code12, code13, code14, code15, code16, code21, code22, code23, code24,
    code25, code26, code27, code28, code29, code30, code31, code33]

name_list = ["code1", "code2", "code3", "code4", "code5", "code6", "code9",
    "code10", "code11", "code12", "code13", "code14", "code15", "code16",
    "code21", "code22", "code23", "code24", "code25", "code26", "code27",
    "code28", "code29", "code30", "code31", "code33"]


function interpret(what_code)
    global the_front = 1
    global the_back = 3
    the_last = length(letter_array)
    global is_transcribing = false
    global peptide_list = []

    while the_back <= the_last
        three_letter = join(letter_array[the_front:the_back])

        if is_transcribing
            the_aa = what_code.translate(three_letter)
            if the_aa[1] == "*"
                aa_string = join(peptide_list)
                println(aa_string)
                global peptide_list = []
                println("end")
                global is_transcribing = false
            else
                append!(peptide_list, the_aa[1])
            end
            global the_front += 3; global the_back += 3
            continue
        else
            global is_transcribing = what_code.initiate(three_letter)
            if is_transcribing
                the_aa = what_code.translate(three_letter)
                append!(peptide_list, the_aa[1])
                global the_front += 3; global the_back += 3
                println(the_aa)
                continue
            end
            global the_front += 1; global the_back += 1
        end
    end
end


for (rrr, sss) in enumerate(work_list)
    println("\n#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#")
    println(name_list[rrr])
    interpret(sss)
end

