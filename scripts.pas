unit scripts;

interface

var
selectProducaoItens:string;
function  scpSelectProducaoItens:string;

implementation

function  scpSelectProducaoItens():string;
begin
selectProducaoItens:='SELECT id,codigo,produto,unidade,quantidademanteiga,quantidadecreme,'+
                 ' quantidadeleite,SUM(quantidadeproduzida) as quantidadeproduzida,SUM(totalproduzido) AS totalproduzido,'+
                 ' quantidadesoro,codigofilial,numeroproducao,lote,validade, SUM(qtdadicional) AS qtdadicional,'+
                 ' materiarequisitada FROM producaoitens ';

  result:= selectProducaoItens;
end;
end.
