contract MyContract{
    struct Student{
        string studentName;
        string gender;
        uint age;
    }

    mapping(uint256->Student) studentInfo;

    function setStudentInfo(uint _studentId, string _name, string _gender, uint _age) public {
        Student storage student - studentInfo[_studentID];  // 설명 : 키값으로 매개변수로 받은 _studentId 입력
                                                            //        입력값과 일치한 특정 student 구조체 정보를 불러온다.

        // 설명: 각각 필드에 매개변수로 받은 자료형들 대입
        student.studentName = _name;
        student.gender = _gender;
        student.age = _age;
    }

    function getStudentInfo(uint256 _studentId) view public returns (string, string, uint){
        // 설명 : 매개변수로 받은 _studentId를 키값으로 활용하여 매핑된 value 값인 Student를 불러온다.
        return (studentInfo[_studentId].studentName, studentInfo[_studentId].gender, studentInfo[_studentId].age);
    }


}