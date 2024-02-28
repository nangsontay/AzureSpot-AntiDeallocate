param (
    [Parameter(Mandatory=$true)]
    [string] $ResourceGroupName,

    [Parameter(Mandatory=$true)]
    [string] $VmName,
    [Parameter(ValueFromRemainingArguments=$true)]
    $OtherParameters
)
$WebhookData = ""
Write-Output "------ Anti Spot-Evicted by Auto Turn On when dellocated -------"
Write-Output "----------------------- By NangSonTay --------------------------"
Write-Output "---------------------- FUCK YOU MICROSOFT ----------------------"
Write-Output ""
Write-Output "------------------------ Authentication ------------------------"
Write-Output "Logging into Azure ..."
try {
    "Connect to Azure Subscription..."
    Connect-AzAccount -Identity
}
catch {
    Write-Error -Message $_.Exception
}
# Starting the VM
try {
    $vm = Get-AzVM -ResourceGroupName $ResourceGroupName -Name $VmName
    Start-AzVM -ResourceGroupName $ResourceGroupName -Name $VmName
    Write-Output "Started VM '$VmName' in Resource Group '$ResourceGroupName'"
} catch {
    throw "Failed to start VM '$VmName': $_"
}