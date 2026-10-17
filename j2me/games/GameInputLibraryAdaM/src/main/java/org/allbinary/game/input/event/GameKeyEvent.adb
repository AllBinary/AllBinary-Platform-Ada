--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.game.input.event.GameKeyEvent_Package is

   procedure Initialize_Fields (This : in out GameKeyEvent'Class) is
   begin
      null;
      
      This.repeated := False;
      
      This.gameActionKey := 0;
      This.originalKey := 0;
   end Initialize_Fields;


   function createEvent (anyType : Java_Object_Access; sourceId : Integer; key : Integer) return GameKeyEvent_Access is
   begin
        return GameKeyEvent_Package.Create (anyType, sourceId, 0, 0, key, False);
   end createEvent;

   procedure Initialize (This : in out GameKeyEvent'Class; anyType : Java_Object_Access; sourceId : Integer; originalKey : Integer; gameActionKey : Integer; key : Integer; repeated : Boolean) is
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
        This.sourceId := sourceId;
        This.setOriginalKey (originalKey);
        This.key := key;
        This.setGameActionKey (gameActionKey);
        This.setRepeatEvents (repeated);
   end Initialize;

   function Create (anyType : Java_Object_Access; sourceId : Integer; originalKey : Integer; gameActionKey : Integer; key : Integer; repeated : Boolean) return GameKeyEvent_Access is
      This : constant GameKeyEvent_Access := new GameKeyEvent;
   begin
      GameKeyEvent_Package.Initialize (This.all, anyType, sourceId, originalKey, gameActionKey, key, repeated);
      return This;
   end Create;

   procedure init (This : in out GameKeyEvent; anyType : Java_Object_Access) is
   begin
        This.setSource (anyType);
   end init;

   procedure setRepeatEvents (This : in out GameKeyEvent; repeated : Boolean) is
   begin
        This.repeated := repeated;
   end setRepeatEvents;

   function hasRepeatEvents (This : in out GameKeyEvent) return Boolean is
   begin
        return This.repeated;
   end hasRepeatEvents;

   function getKey (This : in out GameKeyEvent) return Integer is
   begin
        return This.key;
   end getKey;

   function toString (This : in out GameKeyEvent) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Key: "));
        stringBuffer.appendint (This.getKey);
        return stringBuffer.toString;
   end toString;

   function getOriginalKey (This : in out GameKeyEvent) return Integer is
   begin
        return This.originalKey;
   end getOriginalKey;

   procedure setOriginalKey (This : in out GameKeyEvent; originalKey : Integer) is
   begin
        This.originalKey := originalKey;
   end setOriginalKey;

   function getGameActionKey (This : in out GameKeyEvent) return Integer is
   begin
        return This.gameActionKey;
   end getGameActionKey;

   procedure setGameActionKey (This : in out GameKeyEvent; gameActionKey : Integer) is
   begin
        This.gameActionKey := gameActionKey;
   end setGameActionKey;

   function getSourceId (This : in out GameKeyEvent) return Integer is
   begin
        return This.sourceId;
   end getSourceId;

   procedure createEvent (anyType : Java_Object_Access; sourceId : Integer; key : Integer) is
      Java_Result : constant GameKeyEvent_Access := createEvent (anyType, sourceId, key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createEvent;

begin
   null;
   NONE := GameKeyEvent_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT, -(1), -(1), -(1), -(1), False);

end org.allbinary.game.input.event.GameKeyEvent_Package;


