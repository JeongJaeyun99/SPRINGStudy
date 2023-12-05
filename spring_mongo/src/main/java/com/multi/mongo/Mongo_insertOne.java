package com.multi.mongo;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class Mongo_insertOne {

	public static void main(String[] args) {
		try {
			MongoClient client = new MongoClient("localhost",27017);
			System.out.println("1. mongoserver 연결");
			MongoDatabase database = client.getDatabase("shop2");
			System.out.println("2. shop2 mongodb 연결");
			MongoCollection<Document> collection = database.getCollection("member");
			System.out.println("3. memo collection 연결");
			Document doc = new Document();
			doc.append("id", "banana");
			doc.append("phone", "011");
			doc.append("addr", "seoul");
			System.out.println("4. insert할 document객체 생성");
			collection.insertOne(doc);
			client.close();
			System.out.println("5. mongodb로 전송");
		} catch (Exception e) {
			
		}
	}

}
