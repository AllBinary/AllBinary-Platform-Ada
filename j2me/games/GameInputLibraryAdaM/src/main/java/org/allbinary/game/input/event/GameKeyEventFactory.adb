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


with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package body org.allbinary.game.input.event.GameKeyEventFactory_Package is

   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out GameKeyEventFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.TOUCH_BUTTON_SOURCE_ID := 2;
      This.MOTION_GESTURE_SOURCE_ID := 3;
      This.MAX_SOURCES := 4;
      This.ARRAY_Id := new GameKeyEvent_Access_Array_Access_Array'(0 .. (This.MAX_SOURCES) - 1 => new GameKeyEvent_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null));
   end Initialize_Fields;


   function getInstance return GameKeyEventFactory_Access is
   begin
        if (GameKeyEventFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            GameKeyEventFactory_Package.instance := GameKeyEventFactory_Package.Create;
        end if;
        return GameKeyEventFactory_Access (GameKeyEventFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out GameKeyEventFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameKeyEventFactory_Access is
      This : constant GameKeyEventFactory_Access := new GameKeyEventFactory;
   begin
      GameKeyEventFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out GameKeyEventFactory) is
      nullUtil : NullUtil_Access;
      size : Integer;
      index2 : Integer;
      index : Integer;
   begin
        nullUtil := NullUtil_Package.getInstance;
        size := InputFactory_Package.getInstance.MAX;
        index := This.MAX_SOURCES;
        while (Java_Pre_Decrement (index)) >= (0) loop
            index2 := size;
            while (Java_Pre_Decrement (index2)) >= (0) loop
                This.ARRAY_Id (index) (index2) := GameKeyEvent_Package.createEvent (nullUtil.NULL_OBJECT, index, index2);
            end loop;
        end loop;
   end init;

   --  throws Exception
   function getInstanceForKey (This : in out GameKeyEventFactory; anyType_Param : access GameKeyEventSourceInterface_Package.GameKeyEventSourceInterface'Class; key : Integer) return GameKeyEvent_Access is
      anyType : constant GameKeyEventSourceInterface_Access := GameKeyEventSourceInterface_Access (anyType_Param);
      gameKeyEvent : GameKeyEvent_Access;
   begin
        gameKeyEvent := This.ARRAY_Id (anyType.getSourceId) (key);
        return gameKeyEvent;
   end getInstanceForKey;

   --  throws Exception
   function getInstanceForInput (This : in out GameKeyEventFactory; anyType_Param : access GameKeyEventSourceInterface_Package.GameKeyEventSourceInterface'Class; input_Param : access Input_Package.Input'Class) return GameKeyEvent_Access is
      anyType : constant GameKeyEventSourceInterface_Access := GameKeyEventSourceInterface_Access (anyType_Param);
      input : constant Input_Access := Input_Access (input_Param);
      gameKeyEvent : GameKeyEvent_Access;
   begin
        gameKeyEvent := This.ARRAY_Id (anyType.getSourceId) (input.getId);
        return gameKeyEvent;
   end getInstanceForInput;

   procedure getInstanceForKey (This : in out GameKeyEventFactory; anyType_Param : access GameKeyEventSourceInterface_Package.GameKeyEventSourceInterface'Class; key : Integer) is
      Java_Result : constant GameKeyEvent_Access := GameKeyEventFactory'Class (This).getInstanceForKey (anyType_Param => anyType_Param, key => key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForKey;

   procedure getInstanceForInput (This : in out GameKeyEventFactory; anyType_Param : access GameKeyEventSourceInterface_Package.GameKeyEventSourceInterface'Class; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant GameKeyEvent_Access := GameKeyEventFactory'Class (This).getInstanceForInput (anyType_Param => anyType_Param, input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForInput;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.event.GameKeyEventFactory_Package;


