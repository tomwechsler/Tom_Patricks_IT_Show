# Install-Module ImportExcel

Get-Process | Where-Object Company |
    Export-Excel $home\ps.xlsx -Show `
    -IncludePivotTable -PivotRows Company -PivotData @{Handles=”sum”}`
    -IncludePivotChart -ChartType PieExploded3D