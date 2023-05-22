Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form
$form.Text = "My PowerShell GUI"
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::Fixed3D
$form.MaximizeBox = $false
$form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen

$button = New-Object System.Windows.Forms.Button
$button.Location = New-Object System.Drawing.Point(10, 10)
$button.Size = New-Object System.Drawing.Size(100, 30)
$button.Text = "Click me!"
$button.Add_Click({
    [System.Windows.Forms.MessageBox]::Show("Hello, world!")
})

$form.Controls.Add($button)

$form.ShowDialog() | Out-Null
