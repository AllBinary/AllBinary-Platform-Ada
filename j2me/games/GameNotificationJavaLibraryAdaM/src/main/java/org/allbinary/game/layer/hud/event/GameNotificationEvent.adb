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


package body org.allbinary.game.layer.hud.event.GameNotificationEvent_Package is

   procedure Initialize_Fields (This : in out GameNotificationEvent'Class) is
   begin
      null;
      This.string_Id := StringUtil_Package.getInstance.EMPTY_STRING;
      
      This.basicColor := BasicColorFactory_Package.getInstance.BLACK;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameNotificationEvent'Class; anyType : Java_Object_Access; string_Id : Unbounded_String; seconds : Integer; basicColor : BasicColor_Access; permanent : Boolean) is
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
        This.setString (string_Id);
        This.seconds := seconds;
        This.setBasicColorP (basicColor);
        This.removeable := permanent;
   end Initialize;

   function Create (anyType : Java_Object_Access; string_Id : Unbounded_String; seconds : Integer; basicColor : BasicColor_Access; permanent : Boolean) return GameNotificationEvent_Access is
      This : constant GameNotificationEvent_Access := new GameNotificationEvent;
   begin
      Initialize (This.all, anyType, string_Id, seconds, basicColor, permanent);
      return This;
   end Create;

   function getString (This : in out GameNotificationEvent) return Unbounded_String is
   begin
        return This.string_Id;
   end getString;

   function getSeconds (This : in out GameNotificationEvent) return Integer is
   begin
        return This.seconds;
   end getSeconds;

   function getBasicColorP (This : in out GameNotificationEvent) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   function getPermanent (This : in out GameNotificationEvent) return Boolean is
   begin
        return This.removeable;
   end getPermanent;

   procedure setString (This : in out GameNotificationEvent; string_Id : Unbounded_String) is
   begin
        This.string_Id := string_Id;
   end setString;

   procedure setBasicColorP (This : in out GameNotificationEvent; basicColor : BasicColor_Access) is
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   procedure getString (This : in out GameNotificationEvent) is
      Java_Result : constant Unbounded_String := GameNotificationEvent'Class (This).getString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

   procedure getSeconds (This : in out GameNotificationEvent) is
      Java_Result : constant Integer := GameNotificationEvent'Class (This).getSeconds;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSeconds;

   procedure getBasicColorP (This : in out GameNotificationEvent) is
      Java_Result : constant BasicColor_Access := GameNotificationEvent'Class (This).getBasicColorP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicColorP;

   procedure getPermanent (This : in out GameNotificationEvent) is
      Java_Result : constant Boolean := GameNotificationEvent'Class (This).getPermanent;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPermanent;

end org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;


