<?php
// 데이터베이스 연결 설정
$servername = "localhost";
$username = "jukson";
$password = "rlacksdn1!!";
$dbname = "jukson";

// 연결 생성
$conn = new mysqli($servername, $username, $password, $dbname);

// 연결 확인
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// POST 매개변수 확인
if (isset($_POST['use_uid']) && isset($_POST['end_date']) && isset($_POST['locker_id']) && isset($_POST['status'])) {
    $useUid = $_POST['use_uid'];
    $endDate = $_POST['end_date'];
    $lockerId = $_POST['locker_id'];
    $status = $_POST['status'];

    // SQL 쿼리 준비 및 실행
    $sql = "UPDATE lockers SET use_uid='$useUid', end_date='$endDate', status='$status' WHERE id='$lockerId'";

    if ($conn->query($sql) === TRUE) {
        echo "Data updated successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
} else {
    echo "Required parameters are missing";
}

$conn->close();
?>
