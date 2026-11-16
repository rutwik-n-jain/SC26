# Copies images referenced by ![[...]] in the notes from ../attachments into ./attachments
$here = $PSScriptRoot
foreach ($m in Get-ChildItem $here -Filter *.md) {
  [regex]::Matches((Get-Content $m.FullName -Raw), '!\[\[([^\]|]+)') | ForEach-Object {
    $f = Join-Path $here "..\attachments\$($_.Groups[1].Value.Trim())"
    if (Test-Path $f) { Copy-Item $f "$here\attachments" -Force } else { Write-Warning "Missing: $f" }
  }
}
