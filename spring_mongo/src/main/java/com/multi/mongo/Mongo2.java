package com.multi.mongo;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class Mongo2 {

	public static void main(String[] args) {
		try {
			MongoClient client = new MongoClient("localhost",27017);
			System.out.println("1. mongoserver 연결");
			MongoDatabase database = client.getDatabase("shop2");
			System.out.println("2. shop2 mongodb 연결");
			MongoCollection<Document> collection = database.getCollection("memo");
			System.out.println("3. memo collection 연결");
			Document doc1 = new Document();
			doc1.append("id", "apple");
			doc1.append("pw", "apple");
			doc1.append("name", "apple");
			doc1.append("tel", "apple");
			Document doc2 = new Document();
			doc2.append("id", "apple2");
			doc2.append("pw", "apple2");
			doc2.append("name", "apple2");
			doc2.append("tel", "apple2");
			System.out.println("4. insert할 document객체 생성");
			List<Document> list = new ArrayList<Document>();
			list.add(doc1);
			list.add(doc2);
			collection.insertMany(list);
			client.close();
			System.out.println("5. mongodb로 전송");
		} catch (Exception e) {
			
		}
	}

}
