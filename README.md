# getPBIWorkspace# Power BI Workspace & Report Inventory Script

This project provides a simple PowerShell script to extract all Power BI workspaces, reports, and sharing information you have access to, and export the results to a CSV file.

## Prerequisites

- **Power BI account** (with access to the workspaces/reports you want to inventory)
- **No coding experience required**

## Setup & Usage

### 1. Open PowerShell

- Open terminal.
- Install brew, if not already.
- Install powershell with the following command.

```bash
  brew install powershell/tap/powershell-lts
```

### 2. Download the Script

```bash
git clone git@github.com:srivastava-ami/getPBIWorkspace.git
```

### 3. Run the Script

1. In Terminal, navigate to the folder where you saved the script:
   ```bash
   cd getPBIWorkspace
   ```
2. Run the script:
   ```bash
   pwsh getWorkspacedetail.ps1
   ```

### 4. Log In

- The script will prompt you to sign in with your Power BI account.
- Complete any multi-factor authentication if required.

### 5. Results

- The script will display a table of results in PowerShell.
- It will also save a file named `PowerBI_Workspace_Reports.csv` in the same folder as the script.

## Troubleshooting

- **Module not found:** The script will automatically install the required Power BI module if it’s not present.
- **Permission errors:** You may not see sharing information for all reports unless you are a Power BI admin.
- **Access denied:** If you cannot see certain workspaces or reports, ensure your account has the necessary permissions.

## References

- [Power BI PowerShell Cmdlets Documentation](https://learn.microsoft.com/en-us/powershell/power-bi/overview)
- [Power BI REST API Overview](https://learn.microsoft.com/en-us/rest/api/power-bi/)

## Notes

- This script is designed for **one-time, manual use**.
- No Azure app registration or service principal is required.
- Your login credentials are not stored by the script.

---

If you have questions or need help, open an issue or ask your Power BI administrator.
