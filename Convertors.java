package com.example.mybookshelf.utils;

import androidx.room.TypeConverter;

import com.example.mybookshelf.data.BookItem;
import com.example.mybookshelf.data.ImageLinks;
import com.example.mybookshelf.data.VolumeInfoItem;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.List;

public class Convertors {

    @TypeConverter
    public static List<String> fromString(String value) {
        return new Gson().fromJson(value, new TypeToken<List<String>>() {}.getType());
    }

    @TypeConverter
    public static String fromList(List<String> list) {
        return new Gson().toJson(list);
    }


    @TypeConverter
    public static ImageLinks imageLinksfromJsonString(String json) {
        if (json == null) {
            return null;
        }
        return new Gson().fromJson(json, ImageLinks.class);
    }

    @TypeConverter
    public static String toJsonString(ImageLinks imageLinks) {
        if (imageLinks == null) {
            return null;
        }
        return new Gson().toJson(imageLinks);
    }

    @TypeConverter
    public static List<BookItem> BookItemsfromJsonString(String json) {
        if (json == null) {
            return null;
        }
        Type listType = new TypeToken<List<BookItem>>() {}.getType();
        return new Gson().fromJson(json, listType);
    }

    @TypeConverter
    public static String toJsonString(List<BookItem> bookItems) {
        if (bookItems == null) {
            return null;
        }
        return new Gson().toJson(bookItems);
    }

    @TypeConverter
    public static VolumeInfoItem VolumeItemfromJsonString(String json) {
        if (json == null) {
            return null;
        }
        return new Gson().fromJson(json, VolumeInfoItem.class);
    }

    @TypeConverter
    public static String toJsonString(VolumeInfoItem volumeInfoItem) {
        if (volumeInfoItem == null) {
            return null;
        }
        return new Gson().toJson(volumeInfoItem);
    }
}
