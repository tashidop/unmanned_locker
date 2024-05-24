<?php

// 데이터베이스 연결 정보
$servername = "localhost";  // MySQL 호스트 주소
$username = "jukson";      // MySQL 사용자명
$password = "rlacksdn1!!";      // MySQL 비밀번호
$database = "jukson"; // 사용할 데이터베이스 이름

// MySQL 연결
$conn = new mysqli($servername, $username, $password, $database);

// 연결 확인
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// lockers 테이블에서 데이터 가져오기 (use_uid와 end_date 포함)
$sql = "SELECT id, status, location_name, address, use_uid, end_date FROM lockers";
$result = $conn->query($sql);

// 결과를 담을 배열 초기화
$response = array();

// 결과 처리
if ($result->num_rows > 0) {
    // 각 행을 반복하여 배열에 추가
    while($row = $result->fetch_assoc()) {
        $locker = array(
            'id' => $row['id'],
            'status' => $row['status'],
            'location_name' => $row['location_name'],
            'address' => $row['address'],
            'use_uid' => $row['use_uid'],
            'end_date' => $row['end_date']
        );
        array_push($response, $locker);
    }
    
    // JSON 형식으로 출력
    echo json_encode($response);
    
} else {
    // 결과가 없는 경우 에러 메시지 출력
    echo "No lockers found";
}

// MySQL 연결 종료
$conn->close();

?>
