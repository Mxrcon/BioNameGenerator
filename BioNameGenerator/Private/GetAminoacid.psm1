function Get-Aminoacid {
    $Aminoacids = @("Alanine",
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
    return $Aminoacids[$(Get-Random -Maximum $Aminoacids.count)]
}

