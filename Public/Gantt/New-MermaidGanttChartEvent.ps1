function New-MermaidGanttChartEvent {
    [CmdletBinding()]
    param (
        $Label,
        [ValidateSet('active', 'done', 'crit','milestone')]$Tag = $null,
        $TID,
        $Startdate,
        $Enddate

    )
    
    begin {
        $ReturnString = ""
    }
    
    process {
        $ReturnString = "`t`t{0} : {1} ,{2}, {3:yyyy-MM-dd}, {4:yyyy-MM-dd}`n" -f $Label, $Tag, $TID, $Startdate, $Enddate
    }
    
    end {
        return $ReturnString
    }
}

