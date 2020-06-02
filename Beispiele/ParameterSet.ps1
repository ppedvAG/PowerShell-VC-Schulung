[cmdletBinding()]
param(
    [Parameter(ParameterSetName="Set1")]
    [int]$start,

    [Parameter(ParameterSetName="Set1")]
    [int]$ende,

    [ValidateRange(5,10)]
    [Parameter(ParameterSetName="Set2")]
    [int[]]$range
    )


if($range.Length -lt 2)
{
    $start = $range[0]
    $ende = $range[1]
}