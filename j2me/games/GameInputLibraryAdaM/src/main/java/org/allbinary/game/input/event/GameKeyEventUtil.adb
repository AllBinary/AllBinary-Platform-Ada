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


package body org.allbinary.game.input.event.GameKeyEventUtil_Package is

   procedure Initialize_Fields (This : in out GameKeyEventUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameKeyEventUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameKeyEventUtil_Access is
      This : constant GameKeyEventUtil_Access := new GameKeyEventUtil;
   begin
      GameKeyEventUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getKey (anyType_Param : access Java_Object'Class) return Integer is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      gameKeyEvent : GameKeyEvent_Access;
   begin
        gameKeyEvent := GameKeyEvent_Access (anyType);
        return gameKeyEvent.getKey;
   end getKey;

   procedure getKey (anyType_Param : access Java_Object'Class) is
      Java_Result : constant Integer := getKey (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

end org.allbinary.game.input.event.GameKeyEventUtil_Package;


