unit scripts;

interface

var
selectProcaoItens:string;
function  scpSelectProcaoItens:string;

implementation

function  scpSelectProcaoItens():string;
begin
selectProcaoItens:='SELECT id,codigo,produto,unidade,quantidademanteiga,quantidadecreme,'+
                 ' quantidadeleite,SUM(quantidadeproduzida) as quantidadeproduzida,SUM(totalproduzido) AS totalproduzido,'+
                 ' quantidadesoro,codigofilial,numeroproducao,lote,validade, SUM(qtdadicional) AS qtdadicional,'+
                 ' materiarequisitada FROM producaoitens ';

  result:= selectProcaoItens;
end;
end.
