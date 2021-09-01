<?php
include("../conexao.php");
header('Content-Type: application/json');
//header("Access-Control-Allow-Origin: *");
//header("Access-Control-Allow-Headers: Content-Type");
if ($_SERVER["REQUEST_METHOD"] == "DELETE") {
$codigo = $_GET["codigo"];
$sql = "delete from produto where pro_id = $codigo";
$status = mysqli_query($conexao, $sql);
if ($status) {
http_response_code(201);
$data = ["mensagem" => "Produto excluído com Sucesso"];
echo json_encode($data);
} else {
header("HTTP/1.1 500 Erro no SQL");
echo json_encode(["erro" => "Erro ao Inserir " . $conexao->error]);
}
}
?>