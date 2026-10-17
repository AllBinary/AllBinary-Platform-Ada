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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package; use org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.JDialog_Package; use org.allbinary.logic.communication.log.JDialog_Package;
with org.allbinary.logic.communication.log.GridLayout_Package; use org.allbinary.logic.communication.log.GridLayout_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;

package org.allbinary.logic.communication.log.GuiLog_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type GuiLog is tagged;
   type GuiLog_Access is access all GuiLog'Class;
   type GuiLog_Access_Array is array (Natural range <>) of GuiLog_Access;
   type GuiLog_Access_Array_Access is access all GuiLog_Access_Array;

   type GuiLog is new Java_Object with record
      logFormatUtil : LogFormatUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instance : GuiLog_Access;

   procedure Initialize (This : in out GuiLog'Class);
   function Create return GuiLog_Access;
   function getInstance return GuiLog_Access;
   procedure showDialog (This : in out GuiLog; msg : Unbounded_String);
   function put (This : in out GuiLog; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) return Unbounded_String;
   procedure put (This : in out GuiLog; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String);
   function put (This : in out GuiLog; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Throwable_Object'Class) return Unbounded_String;
   procedure put (This : in out GuiLog; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Throwable_Object'Class);
   function put (This : in out GuiLog; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) return Unbounded_String;
   procedure put (This : in out GuiLog; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String);
   function put (This : in out GuiLog; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id_Param : access Java_Throwable_Object'Class) return Unbounded_String;
   procedure put (This : in out GuiLog; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id_Param : access Java_Throwable_Object'Class);

end org.allbinary.logic.communication.log.GuiLog_Package;


