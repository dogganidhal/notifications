class JsonItem{
    int ID;
    String ARABIC_TEXT;
    String LANGUAGE_ARABIC_TRANSLATED_TEXT;
    String TRANSLATED_TEXT;
    int REPEAT;
    String AUDIO;

    JsonItem({
        this.ID,
        this.ARABIC_TEXT,
        this.LANGUAGE_ARABIC_TRANSLATED_TEXT,
        this.TRANSLATED_TEXT,
        this.REPEAT,
        this.AUDIO
    });

    factory JsonItem.fromJson(Map<String, dynamic> json){
        return JsonItem(
            ID: json["ID"] as int,
            ARABIC_TEXT: json["ARABIC_TEXT"] as String,
            LANGUAGE_ARABIC_TRANSLATED_TEXT: json["LANGUAGE_ARABIC_TRANSLATED_TEXT"] as String,
            TRANSLATED_TEXT: json["TRANSLATED_TEXT"] as String,
            REPEAT: json["REPEAT"] as int,
            AUDIO: json["AUDIO"] as String
        );
    }
}