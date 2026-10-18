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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out CurrentlyPressedTouchButtonSingleton'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   function getInstance return CurrentlyPressedTouchButtonSingleton_Access is
   begin
        return CurrentlyPressedTouchButtonSingleton_Package.instance;
   end getInstance;

   procedure Initialize (This : in out CurrentlyPressedTouchButtonSingleton'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CurrentlyPressedTouchButtonSingleton_Access is
      This : constant CurrentlyPressedTouchButtonSingleton_Access := new CurrentlyPressedTouchButtonSingleton;
   begin
      CurrentlyPressedTouchButtonSingleton_Package.Initialize (This.all);
      return This;
   end Create;

   function size (This : in out CurrentlyPressedTouchButtonSingleton) return Integer is
   begin
        return This.list.size;
   end size;

   function removeAt (This : in out CurrentlyPressedTouchButtonSingleton; index : Integer) return TouchButtonInput_Access is
   begin
        return TouchButtonInput_Access (This.list.removeAt (index));
   end removeAt;

   function remove (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) return Boolean is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
   begin
        return This.list.remove (Java_Object_Access (touchButtonInput));
   end remove;

   function get (This : in out CurrentlyPressedTouchButtonSingleton; index : Integer) return TouchButtonInput_Access is
   begin
        return TouchButtonInput_Access (This.list.objectArray (index));
   end get;

   function contains (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) return Boolean is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
   begin
        return This.list.contains (Java_Object_Access (touchButtonInput));
   end contains;

   procedure add (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
   begin
        This.list.add (Java_Object_Access (touchButtonInput));
   end add;

   procedure removeAt (This : in out CurrentlyPressedTouchButtonSingleton; index : Integer) is
      Java_Result : constant TouchButtonInput_Access := CurrentlyPressedTouchButtonSingleton'Class (This).removeAt (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeAt;

   procedure remove (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) is
      Java_Result : constant Boolean := CurrentlyPressedTouchButtonSingleton'Class (This).remove (touchButtonInput_Param => touchButtonInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

   procedure get (This : in out CurrentlyPressedTouchButtonSingleton; index : Integer) is
      Java_Result : constant TouchButtonInput_Access := CurrentlyPressedTouchButtonSingleton'Class (This).get (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure contains (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) is
      Java_Result : constant Boolean := CurrentlyPressedTouchButtonSingleton'Class (This).contains (touchButtonInput_Param => touchButtonInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end contains;

begin
   null;
   instance := CurrentlyPressedTouchButtonSingleton_Package.Create;

end org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;


