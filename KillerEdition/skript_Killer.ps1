### DBD Loadout Generator ###


Add-Type -AssemblyName System.Windows.Forms

# === Arbeitsverzeichnis setzen ===
Set-Location -Path $PSScriptRoot

# === GUI Setup ===
$form = New-Object Windows.Forms.Form
$form.Text = "DBD Loadout Generator - Killer"
$form.Width =  500
$form.Height = 200

# Dropdown für Sprache
$Languages = @("English", "Deutsch")
$languageDropdown = New-Object Windows.Forms.ComboBox
$languageDropdown.Items.AddRange($Languages)
$languageDropdown.SelectedIndex = 0
$languageDropdown.Top = 30
$languageDropdown.Left = 20
$languageDropdown.Width = 120
$form.Controls.Add($languageDropdown)

# Generieren Button
$button = New-Object Windows.Forms.Button
$button.Text = "Generieren"
$button.Width = 100
$button.Top = 30
$button.Left = 175
$form.Controls.Add($button)

# Ausgabe
$output = New-Object Windows.Forms.Label
$output.Width = 470
$output.Height = 250
$output.Top = 75
$output.Left = 25
$output.Text = ""
$form.Controls.Add($output)

# Sprache speichern (anstelle des Labels)
$saveButton = New-Object Windows.Forms.Button
$saveButton.Text = "Sprache speichern"
$saveButton.Width = 120
$saveButton.Top = 5      # gleiche Position wie das frühere Label
$saveButton.Left = 20    # gleiche Position wie das frühere Label
$form.Controls.Add($saveButton)

$saveButton.Add_Click({
    $selectedLanguage = $languageDropdown.SelectedItem
    Set-Content -Path "$PSScriptRoot\language_Killer.cfg" -Value $selectedLanguage -Encoding UTF8

    # Ausgabe aktualisieren – nur wenn Button geklickt wird
    $output.Text = "✅ Start-Sprache ist nun: $selectedLanguage"
})


# Sprache beim Start wiederherstellen
$languageFile = "$PSScriptRoot\language_Killer.cfg"
if (Test-Path $languageFile) {
    $savedLanguage = Get-Content $languageFile -Encoding UTF8
    $index = $Languages.IndexOf($savedLanguage)
    if ($index -ge 0) {
        $languageDropdown.SelectedIndex = $index
    }
}

# Copy-Button
$copyButton = New-Object Windows.Forms.Button
$copyButton.Text = "COPY"
$copyButton.Width = 50
$copyButton.Top = 30
$copyButton.Left = 300
$form.Controls.Add($copyButton)

# Ausgabe rechts neben dem COPY-Button
$outputCopy = New-Object Windows.Forms.Label
$outputCopy.Width = 120
$outputCopy.Height = 60
$outputCopy.Top = 33
$outputCopy.Left = 360   # Direkt rechts vom Button
$outputCopy.Text = ""
$outputCopy.ForeColor = 'Green'  # Erfolgsfarbe
$form.Controls.Add($outputCopy)


# Copy-Logik
$copyButton.Add_Click({
    if ($output.Text -ne "") {
        [System.Windows.Forms.Clipboard]::SetText($output.Text)
        $outputCopy.Text = "Kopiert!"
        }    
})


# === Generator-Logik ===
$button.Add_Click({
    $outputCopy.Text = ""
    $language = $languageDropdown.SelectedItem
    $role = $roleDropdown.SelectedItem
    $prefix = if ($language -eq "Deutsch") { "de" } else { "en" }
    $dataPath = if ($language -eq "Deutsch") { ".\de_Killer" } else { ".\en_Killer" }

    try {
        $characters = Get-Content "$dataPath\/${prefix}_chars_Killer.csv" -Encoding UTF8
        $perks = Get-Content "$dataPath\/${prefix}_perks_Killer.csv" -Encoding UTF8
        $offerings = Get-Content "$dataPath\/${prefix}_offerings_Killer.csv" -Encoding UTF8
        $addons = Get-Content "$dataPath\/${prefix}_addonsColours_Killer.csv" -Encoding UTF8
        $char = Get-Random -InputObject $characters
        $perkText = (Get-Random -InputObject $perks -Count 4) -join " / "
        $offering = Get-Random -InputObject $offerings
        $addonCombo = Get-Random -InputObject $addons

        # Ausgabe
        $output.Text = "Perks: $perkText`nAdd-ons: $addonCombo`nOffering: $offering " #"$char`nPerks: $perkText`nItem: $item`nAdd-ons: $addons`nOffering: $offering"
        
    } catch {
        $output.Text = "⚠️ Fehler beim Laden der Daten. Prüfe die CSV-Dateien im Verzeichnis: ${dataPath}"
    }
})

$form.ShowDialog()