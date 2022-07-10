---
external help file: BioNameGenerator-help.xml
Module Name: BioNameGenerator
online version:
schema: 2.0.0
---

# Get-RandomPhrase

## SYNOPSIS
This function Generates 2 or 3 random words and concatenate them with a delimiter

## SYNTAX

```
Get-RandomPhrase [[-Start] <String>] [[-Middle] <String>] [[-End] <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns one or more random generated words separated by a delimiter
## EXAMPLES

### EXAMPLE 1
```
 Get-RandomPhrase -Start Metals -Middle Nobel -End       Species -Delimiter "-"
```

Returns a random phrase joined by a delimiter, exemple output: `Flevorium-Koshiba-antibiotica`

## PARAMETERS

### -Start
Specifies the dictionary to be used for the first word, can be one of the dicitionaries or None

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: Aminoacid
Accept pipeline input: False
Accept wildcard characters: False
```

### -Middle
Specifies the dictionary to be used for the middle word, can be one of the dicitionaries or None

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -End
Specifies the dictionary to be used for the Last word, can be one of the dicitionaries or None

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: Generas
Accept pipeline input: False
Accept wildcard characters: False
```
### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).


### -Delimiter
Specifies which string will be used as delimiter for the Phrase

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: "_"
Accept pipeline input: False
Accept wildcard characters: False

```
## INPUTS

## OUTPUTS

### System.String
A random string Joined by the specified Delimiter.
## NOTES

## RELATED LINKS
