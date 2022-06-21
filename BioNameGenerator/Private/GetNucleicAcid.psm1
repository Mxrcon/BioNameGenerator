function Get-NucleicAcid {
    $NucleicAcids = @("Adenine",
            "Guanine",
            "Cytosine",
            "Thymine",
            "Uracil")
    return $NucleicAcids[$(Get-Random -Maximum $NucleicAcids.count)]
}

