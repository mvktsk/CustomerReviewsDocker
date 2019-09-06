# escape=`
#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat 

FROM virtocommerce/platform 

# Download modules
WORKDIR /vc-platform/Modules

# VirtoCommerce.Cache
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-cache\"; `
	$moduleId=\"VirtoCommerce.Cache\"; `
	$version=\"1.0.19\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName 

# VirtoCommerce.Cart
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-cart\"; `
	$moduleId=\"VirtoCommerce.Cart\"; `
	$version=\"2.17.0\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName 

# VirtoCommerce.Catalog
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-catalog\"; `
	$moduleId=\"VirtoCommerce.Catalog\"; `
	$version=\"2.23.21\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName 

# VirtoCommerce.CatalogCsvImportModule
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-catalog-csv-import\"; `
	$moduleId=\"VirtoCommerce.CatalogCsvImportModule\"; `
	$version=\"1.1.4\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName 

# VirtoCommerce.CatalogPersonalization
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-catalog-personalization\"; `
	$moduleId=\"VirtoCommerce.CatalogPersonalization\"; `
	$version=\"1.1.2\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName 

# VirtoCommerce.CatalogPublishing
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-catalog-publishing\"; `
	$moduleId=\"VirtoCommerce.CatalogPublishing\"; `
	$version=\"1.1.5\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName 

# VirtoCommerce.Content
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-content\"; `
	$moduleId=\"VirtoCommerce.Content\"; `
	$version=\"2.13.10\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName 

# VirtoCommerce.Core
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-core\"; `
	$moduleId=\"VirtoCommerce.Core\"; `
	$version=\"2.25.26\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName 

# VirtoCommerce.Customer
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-customer\"; `
	$moduleId=\"VirtoCommerce.Customer\"; `
	$version=\"2.14.21\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName

# VirtoCommerce.DynamicExpressions
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-dynamic-expressions\"; `
	$moduleId=\"VirtoCommerce.DynamicExpressions\"; `
	$version=\"2.13.3\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName

# VirtoCommerce.Export
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-export\"; `
	$moduleId=\"VirtoCommerce.Export\"; `
	$version=\"2.1.1\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName

# VirtoCommerce.ImageTools
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-image-tools\"; `
	$moduleId=\"VirtoCommerce.ImageTools\"; `
	$version=\"1.2.1\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName

# VirtoCommerce.Inventory
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-inventory\"; `
	$moduleId=\"VirtoCommerce.Inventory\"; `
	$version=\"2.13.5\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName


# VirtoCommerce.LuceneSearch
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-lucene-search\"; `
	$moduleId=\"VirtoCommerce.LuceneSearch\"; `
	$version=\"1.1.0\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName

# VirtoCommerce.Marketing
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-marketing\"; `
	$moduleId=\"VirtoCommerce.Marketing\"; `
	$version=\"2.17.6\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName

# VirtoCommerce.Orders
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-order\"; `
	$moduleId=\"VirtoCommerce.Orders\"; `
	$version=\"2.17.24\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName

# VirtoCommerce.Pricing
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-pricing\"; `
	$moduleId=\"VirtoCommerce.Pricing\"; `
	$version=\"2.18.7\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName

# VirtoCommerce.Quote
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-quote\"; `
	$moduleId=\"VirtoCommerce.Quote\"; `
	$version=\"2.12.0\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName \"https://github.com/VirtoCommerce/vc-module-quote/releases/download/v2.12/VirtoCommerce.Quote_2.12.0.zip\"; `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName


# VirtoCommerce.Sitemaps
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-sitemaps\"; `
	$moduleId=\"VirtoCommerce.Sitemaps\"; `
	$version=\"1.1.6\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName

# VirtoCommerce.Store
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-store\"; `
	$moduleId=\"VirtoCommerce.Store\"; `
	$version=\"2.13.8\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName

# VirtoCommerce.Subscription
RUN [Net.ServicePointManager]::SecurityProtocol = \"tls12, tls11, tls\"; `
	$repo=\"vc-module-subscription\"; `
	$moduleId=\"VirtoCommerce.Subscription\"; `
	$version=\"1.1.10\"; `
	$fileName=($moduleId + \"_\" + $version + \".zip\"); `
	Invoke-WebRequest -OutFile $fileName (\"https://github.com/VirtoCommerce/{0}/releases/download/v{1}/{2}\" -f $repo, $version, $fileName); `
	Expand-Archive $fileName -DestinationPath $moduleId; `
	Remove-Item $fileName

# Import sample data 
RUN mkdir c:\ps
COPY ImportCatalog.ps1 c:\ps
RUN powershell.exe -executionpolicy bypass c:\ps\ImportCatalog.ps1

# download the remote debugger
RUN Invoke-WebRequest -OutFile c:\vs_remotetools.exe -Uri https://aka.ms/vs/16/release/RemoteTools.amd64ret.enu.exe;
# install the remote debugging
RUN "c:\vs_remotetools.exe /install /quiet /norestart"

# Create new module folder
ARG source
RUN mkdir c:\vc-platform\modules\customerreviewsmodule
WORKDIR /vc-platform/modules/customerreviewsmodule
