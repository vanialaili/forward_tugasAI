<?php
include 'koneksi.php';
if(isset($_POST['submit'])){
	$qry='select id from tb_rule where ';
	array_pop($_POST);
	$rule_input=array();
	foreach ($_POST as $where) {
		$qry.=$where."=1 and ";
		array_push($rule_input,$where);
	}
	$qry.="1=1";
	$data=mysqli_query($kon,$qry);
	$id='';
	$rule=array(
		array("G001","G002"), #COVID 19 TANPA GEJALA
		array("G001","G002","G014","G015","G019"), #COVID 19 TANPA GEJALA
		array("G001","G002","G003","G004","G005","G010","G011","G015","G017","G018","G019"), #COVID 19 KRITIS
		array("G001","G002","G003","G004","G005","G015","G017"), #COVID 19 BERAT
		array("G001","G002","G003","G005","G014","G015","G018"), #COVID 19 SEDANG
		array("G001","G002","G003","G007","G013","G014","G015"), #COVID 19 RINGAN
		array("G002","G003","G004","G005","G010","G011","G015","G017","G0018","G020"), #COVID 19 KRITIS
		array("G002","G003","G004","G005","G015","G017"), #COVID 19 BERAT
		array("G002","G003","G005","G014","G015","G018"), #COVID 19 SEDANG
		array("G003","G005","G007","G012","G016","G018"), #PNEUMONIA KOMUNITI
		array("G003","G005","G006"), #CAMPAK
		array("G003","G006","G007","G009","G019"), #DEMAM CHIKUNGUYA
		array("G003","G006","G018","G019"), #TIPES
		array("G003","G007","G008","G009","G019"), #DBD
		array("G003","G007","G014","G015","G019"), #COVID 19 RINGAN
		array("G003","G007","G019"), #DBD
		array("G003","G012","G013","G014","G019","G020"), #FLU
		array("G005","G010","G012","G014","G018"), #EMFESIMA
		array("G013","G014","G020"), #FLU
		array("G013","G020")); #ALERGI DEBU
		
	$status=false;
	for ($i=0; $i <20 ; $i++) {
		$result=($rule_input==$rule[$i]);
		if ($result) {
			$status=true;
		}
	}
	
	if($status==true){
		while ($d=mysqli_fetch_assoc($data)) {
			$id=$d['id'];
		}
		$cari_penyakit="select * from tb_penyakit where id=$id";
		$db=mysqli_query($kon,$cari_penyakit);
		while ($d=mysqli_fetch_assoc($db)) {
			$penyakit=$d['penyakit'];
			$info=$d['info'];
			$solusi=$d['solusi'];
			include 'kesimpulan.php';
		}

	}else{
				include 'tidakada_hasil.php';
	}
}
?>
