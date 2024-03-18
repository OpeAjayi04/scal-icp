import List "mo:base/List";
import Array "mo:base/Array";
import Text "mo:base/Text";
import Result "mo:base/Result";
import Iter "mo:base/Iter";
import Debug "mo:base/Debug";
actor {
  let keys = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"];
  type ScaleResult = Result.Result<[Text], Text>;
  public query func GetmajorScale(key : Text) : async ScaleResult {
    var index = Array.indexOf<Text>(key, keys, Text.equal);
    var pattern = [2, 2, 1, 2, 2, 2, 1];
    var scale = List.nil<Text>();

    switch (index) {
      case (?value) {
        var currentIndex = value;
        scale := List.push<Text>(keys[value], scale);
        for (i in Iter.range(0, 6)) {
          var step = pattern[i];
          currentIndex := (step + currentIndex) % 12;
          scale := List.push<Text>(keys[currentIndex], scale);
          Debug.print(debug_show (currentIndex));
        };
          scale :=List.reverse<Text>(scale);
        return #ok(List.toArray<Text>(scale));
      };
      case (null) { #err("Key doesn't exist") };
    };
  };
  public query func GetMinorScale(key : Text) : async ScaleResult {
    var index = Array.indexOf<Text>(key, keys, Text.equal);
    var pattern = [2,1,2,2,1,2,2];
    var scale = List.nil<Text>();

    switch (index) {
      case (?value) {
        var currentIndex = value;
        scale := List.push<Text>(keys[value], scale);
        for (i in Iter.range(0, 6)) {
          var step = pattern[i];
          currentIndex := (step + currentIndex) % 12;
          scale := List.push<Text>(keys[currentIndex], scale);
          Debug.print(debug_show (currentIndex));
        };
          scale :=List.reverse<Text>(scale);
        return #ok(List.toArray<Text>(scale));
      };
      case (null) { #err("Key doesn't exist") };
    };

  };
  public query func GetMajorPentScale(key : Text) : async ScaleResult  {
    var index = Array.indexOf<Text>(key, keys, Text.equal);
    var pattern = [2,2,3,2,3];
    var scale = List.nil<Text>();

    switch (index) {
      case (?value) {
        var currentIndex = value;
        scale := List.push<Text>(keys[value], scale);
        for (i in Iter.range(0, 4)) {
          var step = pattern[i];
          currentIndex := (step + currentIndex) % 12;
          scale := List.push<Text>(keys[currentIndex], scale);
          Debug.print(debug_show (currentIndex));
        };
          scale :=List.reverse<Text>(scale);
        return #ok(List.toArray<Text>(scale));
      };
      case (null) { #err("Key doesn't exist") };
    };
  };
  public query func GetMinorPentScale(key : Text) : async ScaleResult {
    var index = Array.indexOf<Text>(key, keys, Text.equal);
    var pattern = [3,2,2,3,2];
    var scale = List.nil<Text>();

    switch (index) {
      case (?value) {
        var currentIndex = value;
        scale := List.push<Text>(keys[value], scale);
        for (i in Iter.range(0, 4)) {
          var step = pattern[i];
          currentIndex := (step + currentIndex) % 12;
          scale := List.push<Text>(keys[currentIndex], scale);
          Debug.print(debug_show (currentIndex));
        };
          scale :=List.reverse<Text>(scale);
        return #ok(List.toArray<Text>(scale));
      };
      case (null) { #err("Key doesn't exist") };
    };
  };
  public query func GetDiminishedScale(key : Text) : async ScaleResult {
     var index = Array.indexOf<Text>(key, keys, Text.equal);
    var pattern = [2,1,2,1,2,1,2,1];
    var scale = List.nil<Text>();

    switch (index) {
      case (?value) {
        var currentIndex = value;
        scale := List.push<Text>(keys[value], scale);
        for (i in Iter.range(0, 7)) {
          var step = pattern[i];
          currentIndex := (step + currentIndex) % 12;
          scale := List.push<Text>(keys[currentIndex], scale);
          Debug.print(debug_show (currentIndex));
        };
          scale :=List.reverse<Text>(scale);
        return #ok(List.toArray<Text>(scale));
      };
      case (null) { #err("Key doesn't exist") };
    };
  };
  public query func GetAugmentedScale(key : Text) : async ScaleResult {
     var index = Array.indexOf<Text>(key, keys, Text.equal);
    var pattern = [2,2,2,2,1,2,1];
    var scale = List.nil<Text>();

    switch (index) {
      case (?value) {
        var currentIndex = value;
        scale := List.push<Text>(keys[value], scale);
        for (i in Iter.range(0, 6)) {
          var step = pattern[i];
          currentIndex := (step + currentIndex) % 12;
          scale := List.push<Text>(keys[currentIndex], scale);
          Debug.print(debug_show (currentIndex));
        };
          scale :=List.reverse<Text>(scale);
        return #ok(List.toArray<Text>(scale));
      };
      case (null) { #err("Key doesn't exist") };
    };
  };
};
