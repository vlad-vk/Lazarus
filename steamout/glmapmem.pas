unit GLMapMem;

interface

uses
  Windows, SysUtils, Dialogs;

const
  FSize = 1024;

procedure MM_CreateFMEM(filename: AnsiString);
procedure MM_WriteToFMEM(data:String);
function  MM_ReadFromFMEM: String;
procedure MM_CloseFMEM;

var
  HMapMem: THandle;
  MemAddr: PChar;

implementation

procedure MM_CreateFMEM(filename: AnsiString);
begin
  MEMAddr := nil;
  HMapMem := Windows.CreateFileMapping(HMapMem, nil, PAGE_READWRITE, 0, FSize, PChar(filename));
//if HMapMem = 0 then ShowMessage('Область памяти для обмена не создана');
  MEMAddr := Windows.MapViewOfFile(HMapMem, FILE_MAP_ALL_ACCESS, 0,0, FSize);
//if MEMAddr = nil then ShowMessage('Область памяти для обмена не адресована');
end;

procedure MM_WriteToFMEM(data: String);
begin
  if (MEMAddr<>nil) then SysUtils.StrPCopy(MEMAddr, data);
end;

function MM_ReadFromFMEM: String;
begin
   if (MEMAddr<>nil) then result := PChar(MEMAddr) else result := '';
end;

procedure MM_CloseFMEM;
begin
    if (HMapMem<>0) and (MEMAddr<>nil) then begin
       Windows.UnMapViewOfFile(MEMAddr);
       Windows.CloseHandle(HMapMem);
    end;
end;

end.
