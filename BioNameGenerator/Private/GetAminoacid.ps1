function Get-Aminoacid {
	$aminoacids = @("Alanine",
		"Arginine",
		"Asparagine",
		"Aspartate",
		"Cysteine",
		"Glutamine",
		"Glutamate",
		"Glycine",
		"Histidine",
		"Isoleucine",
		"Leucine",
		"Lysine",
		"Methionine",
		"Phenylalanine",
		"Proline",
		"Serine",
		"Threonine",
		"Tryptophan",
		"Tyrosine",
		"Valine",
		"Selenocysteine",
		"Pyrrolysine")
    return $aminoacids[$(Get-Random -Maximum $aminoacids.count)]
}

