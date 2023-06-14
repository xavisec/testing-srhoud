function lalalalaee
{
    [CmdletBinding(PositionalBinding = $false)]
    param(
        [Alias("c")]
        [String[]]
        $CollectionMethods = [String[]]@('Default'),

        [Alias("d")]
        [String]
        $Domain,
        
        [Alias("s")]
        [Switch]
        $SearchForest,

        [Switch]
        $Stealth,

        [String]
        $LdapFilter,

        [String]
        $DistinguishedName,

        [String]
        $ComputerFile,

        [ValidateScript({ Test-Path -Path $_ })]
        [String]
        $OutputDirectory = $( Get-Location ),

        [ValidateNotNullOrEmpty()]
        [String]
        $OutputPrefix,

        [String]
        $CacheName,

        [Switch]
        $MemCache,

        [Switch]
        $RebuildCache,

        [Switch]
        $RandomFilenames,

        [String]
        $ZipFilename,
        
        [Switch]
        $NoZip,
        
        [String]
        $ZipPassword,
        
        [Switch]
        $TrackComputerCalls,
        
        [Switch]
        $PrettyPrint,

        [String]
        $LdapUsername,

        [String]
        $LdapPassword,

        [string]
        $DomainController,

        [ValidateRange(0, 65535)]
        [Int]
        $LdapPort,

        [Switch]
        $SecureLdap,
        
        [Switch]
        $DisableCertVerification,

        [Switch]
        $DisableSigning,

        [Switch]
        $SkipPortCheck,

        [ValidateRange(50, 5000)]
        [Int]
        $PortCheckTimeout = 500,

        [Switch]
        $SkipPasswordCheck,

        [Switch]
        $ExcludeDCs,

        [Int]
        $Throttle,

        [ValidateRange(0, 100)]
        [Int]
        $Jitter,

        [Int]
        $Threads,

        [Switch]
        $SkipRegistryLoggedOn,

        [String]
        $OverrideUsername,

        [String]
        $RealDNSName,

        [Switch]
        $CollectAllProperties,

        [Switch]
        $Loop,

        [String]
        $LoopDuration,

        [String]
        $LoopInterval,

        [ValidateRange(500, 60000)]
        [Int]
        $StatusInterval,
        
        [Alias("v")]
        [ValidateRange(0, 5)]
        [Int]
        $Verbosity,

        [Alias("h")]
        [Switch]
        $Help,

        [Switch]
        $Version
    )

    $vars = New-Object System.Collections.Generic.List[System.Object]
    
    if(!($hola.ContainsKey("help") -or $hola.ContainsKey("version"))){
        $hola.Keys | % {
            if ($_ -notmatch "verbosity"){
                $vars.add("--$_")
                if($hola.item($_).gettype().name -notmatch "switch"){
                    $vars.add($hola.item($_))
                }
            }
            elseif ($_ -match "verbosity") {
                $vars.add("-v")
                $vars.add($hola.item($_))
            }
        }
    }
    else {
        $hola.Keys |? {$_ -match "help" -or $_ -match "version"}| % {
            $vars.add("--$_")
        }
    }
    
    $passed = [string[]]$vars.ToArray()

    	$DeflatedStream = New-Object IO.Compression.DeflateStream([IO.MemoryStream][Convert]::FromBase64String($EncodedCompressedFile),[IO.Compression.CompressionMode]::Decompress)
	$UncompressedFileBytes = New-Object Byte[](1046528)
	$DeflatedStream.Read($UncompressedFileBytes, 0, 1046528) | Out-Null
	$Assembly = [Reflection.Assembly]::Load($UncompressedFileBytes)
	$BindingFlags = [Reflection.BindingFlags] "Public,Static"
	$a = @()
	$Assembly.GetType("Costura.AssemblyLoader", $false).GetMethod("Attach", $BindingFlags).Invoke($Null, @())
	$Assembly.GetType("lalalala.Program").GetMethod("lalalala").Invoke($Null, @(,$passed))
}
