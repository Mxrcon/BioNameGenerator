function Get-NucleicAcid {
	$nucleicAcids = @("Adenine",
			"Guanine",
			"Cytosine",
			"Thymine",
			"Uracil")
	return $nucleicAcids[$(Get-Random -Maximum $nucleicAcids.count)]
}

