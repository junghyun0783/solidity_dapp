contract MyContract {
    struct Student{
        string studentName;
        string gender;
        uint age;
    }
    
    Student[] students;

    function addStudent(string _name, strin _gender, uint _age) public {
        students.push(Student(_name, _gender, _age));   // 설명: student 상태변수 배열에 새로운 Student 입력

        Student storage updateStudent = students[0];    // 설명: storage에 저장하는 새로운 Student 선언
                                                        //       상태변수 students 배열의 첫번째 인덱스 값을 대입
                                                        //       storage로 선언됐기 때문에 상태변수를 가르키는 포인터 역활
        
        updateStudent.age = 55;         // 설명 : updateStudent의 age 필드를 55로 변경
                                        //         결과적으로는 상태변수 students 배열의 첫번째 인덱스의 age 필드를 55로 변경한다.


        Student memory updateStudent2 = students[0];// 설명 : memory에 저장하는 새로운 Student 선언
                                                    //        상태변수 students 배열의 첫번째 인덱스 값을 대입
                                                    //        memory로 선언됐기 때문에 복사한다.

        updateStudent2.age = 20;    // 설명 : updateStudent2의 age 필드를 20으로 변경
                                    //        결과적으로는 updateStudent2의 age 필드를 20으로 변경한다.

        student[0] = updateStudent2;    // 설명 : memory 배열의 값을 상태변수에 직접적으로 대입해주면 students 값 영구히 변경
    }
}
