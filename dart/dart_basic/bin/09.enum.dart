enum Status{
  approve,
  pending,
  rejected
}
void main(){
  Status status;
  Status status1 = Status.approve;
  Status status2 = Status.pending;
  Status status3 = Status.rejected;

  status = status1;
  if(status == Status.approve){
    print('승인 되었습니다.');
  } else if(status == Status.pending){
    print('대기하세요.');
  } else if(status == Status.rejected){
    print('거절 되었습니다.');
  }


}