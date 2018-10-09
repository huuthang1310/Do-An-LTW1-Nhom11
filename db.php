<?php
class Db{
	//Tao bien $conn ket noi
	public static $conn;
	//Tao ket noi trong ham construct
	public function __construct(){
		self::$conn = new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
		self::$conn->set_charset('utf8');
	}
	public function __destruct(){
		self::$conn->close();
	}
	public function getData($obj){
		$arr = array();
		while($row = $obj->fetch_assoc()){
			$arr[]=$row;
		}
		return $arr;
	}
	//Viet ham lay ra tên và giá sản phẩm của hãng “Apple”
	public function product2(){
		//Viet cau SQL
		if(isset($_GET['key']))
		{
			$key = $_GET['key'];
		}
		$sql = "SELECT * FROM `products` JOIN `manufactures` ON `products`.`manu_id` = `manufactures`.`manu_ID` JOIN `protypes` ON `products`.`type_id` = `protypes`.`type_id` WHERE Name LIKE '%".$key."%'";
		//Thuc thi cau truy van

		$result = self::$conn->query($sql);
		return $this->getData($result);

	}
	public function product1(){
		//Viet cau SQL
		$sql = "SELECT * FROM `products` JOIN `manufactures` ON `products`.`manu_id` = `manufactures`.`manu_ID` JOIN `protypes` ON `products`.`type_id` = `protypes`.`type_id`";
		//Thuc thi cau truy van
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}

	public function getAllProducts($page, $per_page)
	{
		$first_link = ($page - 1) * $per_page; 
		$sql = "SELECT * FROM `products` JOIN `manufactures` ON `products`.`manu_id` = `manufactures`.`manu_ID` JOIN `protypes` ON `products`.`type_id` = `protypes`.`type_id` LIMIT  $first_link, $per_page"; 
		$result = self::$conn->query($sql);
		return $this->getData($result);
	} 

	public function paginate1($key,$url, $total, $page, $per_page)
	{
		$total_links = ceil($total/$per_page);

		$link =""; 

		for($j=1; $j <= $total_links ; $j++) 
		{
			$link = $link."<a href='$url?key=".$key."page=$j'>$j    </a>";
		} 
		return $link; 
	}

	public function paginate($url, $total, $page, $per_page)
	{
		$total_links = ceil($total/$per_page);

		$link =""; 

		for($j=1; $j <= $total_links ; $j++) 
		{
			$link = $link."<a href='$url?page=$j'>$j    </a>";
		} 
		return $link; 
	}
}