$script = {
    Write-Output "Uploading..."

    for ($i = 1; $i -lt 7; $i++) {
        python uploader.py $i
    }
}

Measure-Command {& $script| Out-Default}

