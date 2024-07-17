function New-MermaidGanttChartSection {
    [CmdletBinding()]
    param (
        $Title,
        [string[]]$Events
    )
    
    begin {
        $output = [System.Text.StringBuilder]::new()
        $output.Append("`tsection $Title`n")  | Out-Null
    }
    
    process {
        foreach($EventElement in $Events){
            $output.AppendLine("`t`t$EventElement`n") | Out-Null
        }
    }
    
    end {
        return $output.ToString()
    }
}