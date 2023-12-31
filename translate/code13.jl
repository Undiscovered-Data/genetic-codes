module code13
export translate
export initiate

function translate(www)

	my_dict = Dict(
		"TTT" => ["F", "Phe"],
		"TCT" => ["S", "Ser"],
		"TAT" => ["Y", "Tyr"],
		"TGT" => ["C", "Cys"],
		"TTC" => ["F", "Phe"],
		"TCC" => ["S", "Ser"],
		"TAC" => ["Y", "Tyr"],
		"TGC" => ["C", "Cys"],
		"TTA" => ["L", "Leu"],
		"TCA" => ["S", "Ser"],
		"TAA" => ["*", "Ter"],
		"TGA" => ["W", "Trp"],
		"TTG" => ["L", "Leu", "i"],
		"TCG" => ["S", "Ser"],
		"TAG" => ["*", "Ter"],
		"TGG" => ["W", "Trp"],
		"CTT" => ["L", "Leu"],
		"CCT" => ["P", "Pro"],
		"CAT" => ["H", "His"],
		"CGT" => ["R", "Arg"],
		"CTC" => ["L", "Leu"],
		"CCC" => ["P", "Pro"],
		"CAC" => ["H", "His"],
		"CGC" => ["R", "Arg"],
		"CTA" => ["L", "Leu"],
		"CCA" => ["P", "Pro"],
		"CAA" => ["Q", "Gln"],
		"CGA" => ["R", "Arg"],
		"CTG" => ["L", "Leu"],
		"CCG" => ["P", "Pro"],
		"CAG" => ["Q", "Gln"],
		"CGG" => ["R", "Arg"],
		"ATT" => ["I", "Ile"],
		"ACT" => ["T", "Thr"],
		"AAT" => ["N", "Asn"],
		"AGT" => ["S", "Ser"],
		"ATC" => ["I", "Ile"],
		"ACC" => ["T", "Thr"],
		"AAC" => ["N", "Asn"],
		"AGC" => ["S", "Ser"],
		"ATA" => ["M", "Met", "i"],
		"ACA" => ["T", "Thr"],
		"AAA" => ["K", "Lys"],
		"AGA" => ["G", "Gly"],
		"ATG" => ["M", "Met", "i"],
		"ACG" => ["T", "Thr"],
		"AAG" => ["K", "Lys"],
		"AGG" => ["G", "Gly"],
		"GTT" => ["V", "Val"],
		"GCT" => ["A", "Ala"],
		"GAT" => ["D", "Asp"],
		"GGT" => ["G", "Gly"],
		"GTC" => ["V", "Val"],
		"GCC" => ["A", "Ala"],
		"GAC" => ["D", "Asp"],
		"GGC" => ["G", "Gly"],
		"GTA" => ["V", "Val"],
		"GCA" => ["A", "Ala"],
		"GAA" => ["E", "Glu"],
		"GGA" => ["G", "Gly"],
		"GTG" => ["V", "Val", "i"],
		"GCG" => ["A", "Ala"],
		"GAG" => ["E", "Glu"],
		"GGG" => ["G", "Gly"],
	)
	return my_dict[www]
end

function initiate(xxx)
    in_code = ["TTG", "ATA", "ATG", "GTG"]
    if xxx in in_code
        return true
    end
    return false
end

end
