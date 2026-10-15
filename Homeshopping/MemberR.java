package dao;

import java.util.*;
import dto.User;
public class MemberR {
	
	static ArrayList<User> userList = new ArrayList<User>();
	
	public void addUser(User u) {
		userList.add(u);
		number++;
	}//List에 객체 추가하는 메서드

	public ArrayList<User> getUsers(){
		return userList;
	}// 저장된 객체를 보여주기 위한 메서드
	
	private static int number=1;
	
	public String countNumber() {
		String serial = String.format("User%03d", number);
		return serial;
	}	//시리얼 번호 자동생성할 메서드
	
}