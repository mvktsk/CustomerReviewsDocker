$UrlModules = "https://raw.githubusercontent.com/VirtoCommerce/vc-modules/master/modules.json"
$ModulesList = Invoke-WebRequest -Uri $UrlModules -UseBasicParsing; 

$jsonArray =  ConvertFrom-Json $ModulesList

ForEach( $Module in $jsonArray)
{
    $fileName = $Module.packageUrl
    $moduleId = $Module.id
    Write-Host $fileName
    Write-Host $moduleId
}

# $fileName=($moduleId + "_" + $version + ".zip"); 
# Invoke-WebRequest -OutFile $fileName ("https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}" -f $repo, $version, $fileName); 
# Expand-Archive $fileName -DestinationPath $moduleId; 
# Remove-Item $fileName