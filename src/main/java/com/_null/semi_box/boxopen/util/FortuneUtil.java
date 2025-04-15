package com._null.semi_box.boxopen.util;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class FortuneUtil {

    public static String generateFortune() {
        String apiKey = "key"; // 여기에 API 키!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 5$ 토큰 없는 키일시 429로인한 null 회수 
        String endpoint = "https://api.openai.com/v1/chat/completions";
        String model = "gpt-3.5-turbo";
        String prompt = "오늘의 짧은 행운(금전운)의 메시지를 한 문장으로 말해줘.";

        try {
            HttpClient client = HttpClient.newHttpClient();
            String body = """
                {
                  "model": "%s",
                  "messages": [
                    { "role": "user", "content": "%s" }
                  ]
                }
            """.formatted(model, prompt);

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create(endpoint))
                    .header("Content-Type", "application/json")
                    .header("Authorization", "Bearer " + apiKey)
                    .POST(HttpRequest.BodyPublishers.ofString(body))
                    .build();

            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
            String json = response.body();

            // 응답에서 content 값을 추출하는 로직
            String content = extractContentFromJson(json);

            // 추출한 content 반환
            return content.isEmpty() ? "운세를 가져오지 못했습니다." : content.trim();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "운세를 가져오지 못했습니다.";  // 예외 발생 시 기본 메시지 반환
    }

    private static String extractContentFromJson(String json) {
        try {
            // "choices" 배열 안의 첫 번째 객체 추출
            int choicesIndex = json.indexOf("\"choices\":");
            if (choicesIndex == -1) return "운세를 가져오지 못했습니다.";

            // "choices" 배열 시작 위치부터 찾기
            int startChoice = json.indexOf("{", choicesIndex);
            int endChoice = json.indexOf("}", startChoice);
            String choiceContent = json.substring(startChoice, endChoice + 1);

            // "message" 객체에서 content 값 추출
            int messageIndex = choiceContent.indexOf("\"message\":");
            if (messageIndex == -1) return "운세를 가져오지 못했습니다.";

            // "message" 객체 시작 위치 찾기
            int startMessage = choiceContent.indexOf("{", messageIndex);
            int endMessage = choiceContent.indexOf("}", startMessage);
            String messageContent = choiceContent.substring(startMessage, endMessage + 1);

            // "content" 값 추출
            int contentIndex = messageContent.indexOf("\"content\":");
            if (contentIndex == -1) return "운세를 가져오지 못했습니다.";

            int startContent = messageContent.indexOf("\"", contentIndex + 10) + 1;
            int endContent = messageContent.indexOf("\"", startContent);
            return messageContent.substring(startContent, endContent);
        } catch (Exception e) {
            e.printStackTrace();
            return "운세를 가져오지 못했습니다.";
        }
    }
}
