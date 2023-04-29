# Fix up the contributions for the docs.
$contrib = Get-Content "$PSScriptRoot/contributors.md"
for ($i = 0; $i -lt $contrib.Count; $i++) {
    $line = $contrib[$i];
    if ($line.Contains(":octocat:")) { $line = $line.Replace(":octocat:", "* ")}
    if ($line.Contains(":date:")) { $line = $line.Replace(":date:", "* ")}

    $contrib[$i] = $line
}
Set-Content -Path "$PSScriptRoot/docs/contributors.md" -Value $contrib -Encoding UTF8 -Force
