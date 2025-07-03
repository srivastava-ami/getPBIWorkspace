# Power BI Workspace and Report Inventory Script
# This script will:
# - Connect to Power BI interactively
# - Retrieve all workspaces you have access to
# - Retrieve all reports in each workspace
# - Attempt to get report sharing info (if you have permission)
# - Export results to a CSV file

# Ensure the required module is installed
if (-not (Get-Module -ListAvailable -Name MicrosoftPowerBIMgmt)) {
    Install-Module -Name MicrosoftPowerBIMgmt -Force -AllowClobber
}

# Import the Power BI module
Import-Module MicrosoftPowerBIMgmt

# Connect to Power BI (will prompt you to log in)
Connect-PowerBIServiceAccount

# Get all workspaces you have access to
$workspaces = Get-PowerBIWorkspace -All

# Prepare results array
$results = @()

foreach ($workspace in $workspaces) {
    $reports = Get-PowerBIReport -WorkspaceId $workspace.Id

    foreach ($report in $reports) {
        # Add result to array
        $results += [PSCustomObject]@{
            WorkspaceName = $workspace.Name
            ReportName    = $report.Name
            ReportId      = $report.Id
        }
    }
}

# Export results to CSV
$csvPath = "$PSScriptRoot\PowerBI_Workspace_Reports.csv"
$results | Export-Csv -Path $csvPath -NoTypeInformation

# Display results in a table
$results | Format-Table -AutoSize

Write-Host "Results exported to $csvPath"
# End of script