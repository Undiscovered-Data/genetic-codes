module code15
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
		"TGA" => ["*", "Ter"],
		"TTG" => ["L", "Leu"],
		"TCG" => ["S", "Ser"],
		"TAG" => ["Q", "Gln"],
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
		"ATA" => ["I", "Ile"],
		"ACA" => ["T", "Thr"],
		"AAA" => ["K", "Lys"],
		"AGA" => ["R", "Arg"],
		"ATG" => ["M", "Met", "i"],
		"ACG" => ["T", "Thr"],
		"AAG" => ["K", "Lys"],
		"AGG" => ["R", "Arg"],
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
		"GTG" => ["V", "Val"],
		"GCG" => ["A", "Ala"],
		"GAG" => ["E", "Glu"],
		"GGG" => ["G", "Gly"],
	)
	return my_dict[www]
end

function initiate(xxx)
    in_code = ["ATG"]
    if xxx in in_code
        return true
    end
    return false
end

end
