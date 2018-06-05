
$time = Get-Date -Format 'yyyyMMdd HHmmss'
echo $time
if(Test-Path .\$time){del -Recurse .\$time}
mkdir $time

foreach($file in dir .)
{
        #echo $file.Name  # 这里可以显示文件名，
      
   
        if((Get-Item $file) -is [IO.DirectoryInfo]){continue}
        if($file.Name -eq "备份.ps1"){continue}
        copy $file .\$time
}
