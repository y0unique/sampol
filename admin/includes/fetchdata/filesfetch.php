<?php 
include "../../database/connection.php";

$output= array();
$sql = "SELECT * FROM filesvw";

$totalQuery = mysqli_query($con,$sql);
$total_all_rows = mysqli_num_rows($totalQuery);

//Data Table
$columns = array(
	0 => 'id',
	1 => 'type',
	2 => 'title',
	3 => 'link',
	4 => 'department',
	5 => 'date',
	6 => 'status'
);

//Search
if(isset($_POST['search']['value']))
{
	$search_value = $_POST['search']['value'];
	$sql .= " WHERE title like '%".$search_value."%'";
	$sql .= " OR date like '%".$search_value."%'";
}

//Order
if(isset($_POST['order']))
{
	$column_name = $_POST['order'][0]['column'];
	$order = $_POST['order'][0]['dir'];
	$sql .= " ORDER BY ".$columns[$column_name]." ".$order."";
}
else
{
	$sql .= " ORDER BY id asc, type asc";
    
}

if($_POST['length'] != -1)
{
	$start = $_POST['start'];
	$length = $_POST['length'];
	$sql .= " LIMIT  ".$start .", ".$length;
}	

//displaying of table data
$query = mysqli_query($con,$sql);
$count_rows = mysqli_num_rows($query);
$data = array();
while($row = mysqli_fetch_assoc($query))
{
	$sub_array = array();
    $sub_array[] = '<a href="javascript:void();" data-id="'.$row['id'].'" class="btn btn-info btn-sm editfilebtn" ><i class="fas fa-edit"></i></a>  
					<a href="javascript:void();" data-id="'.$row['id'].'" class="btn btn-danger btn-sm deletefilebtn" ><i class="fas fa-trash"></i></a>';
	$sub_array[] = $row['id'];
	$sub_array[] = $row['type'];
	$sub_array[] = '<a href="'.$row['link'].'" target="_blank">'.$row['title'].'</a>';
	$sub_array[] = $row['date'];
	$sub_array[] = $row['department'];
	$sub_array[] = $row['status'];
	$data[] = $sub_array;
}
$output = array(
	'draw'=> intval($_POST['draw']),
	'recordsTotal' =>$count_rows ,
	'recordsFiltered'=>   $total_all_rows,
	'data'=>$data,
);
echo  json_encode($output);
