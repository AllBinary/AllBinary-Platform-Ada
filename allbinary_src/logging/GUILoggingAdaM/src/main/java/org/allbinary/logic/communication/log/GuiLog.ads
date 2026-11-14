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

with AllBinary_Java;
limited with org.allbinary.logic.communication.log.GuiLog_Package;
package org.allbinary.logic.communication.log.GuiLog_Package_References is
   type GuiLog_Access is access all org.allbinary.logic.communication.log.GuiLog_Package.GuiLog'Class;
   type GuiLog_Access_Array is array (Natural range <>) of GuiLog_Access;
   type GuiLog_Access_Array_Access is access all GuiLog_Access_Array;
   type GuiLog_Access_Array_Access_Array is array (Natural range <>) of GuiLog_Access_Array_Access;
   type GuiLog_Access_Array_Access_Array_Access is access all GuiLog_Access_Array_Access_Array;
   type GuiLog_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GuiLog_Access_Array_Access;
   end record;
   function Java_Box (Value : GuiLog_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GuiLog_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GuiLog_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GuiLog_Access_Array_Access is (if Value /= null and then Value.all in GuiLog_Access_Array_Object'Class then GuiLog_Access_Array_Object'Class (Value.all).Value else null);
   type GuiLog_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GuiLog_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GuiLog_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GuiLog_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GuiLog_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GuiLog_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GuiLog_Access_Array_Access_Array_Object'Class then GuiLog_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.GuiLog_Package_References;

with org.allbinary.logic.communication.log.GuiLog_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
--  with javax.swing.JLabel_Package; use javax.swing.JLabel_Package;
--  with javax.swing.JScrollPane_Package; use javax.swing.JScrollPane_Package;
--  with javax.swing.JTextArea_Package; use javax.swing.JTextArea_Package;
limited with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package_References;

package org.allbinary.logic.communication.log.GuiLog_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype LogFormatUtil_Access is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access;
   use type LogFormatUtil_Access;
   subtype LogFormatUtil_Access_Array is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array;
   use type LogFormatUtil_Access_Array;
   subtype LogFormatUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array_Access;
   use type LogFormatUtil_Access_Array_Access;
   subtype LogFormatUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array_Access_Array;
   use type LogFormatUtil_Access_Array_Access_Array;
   subtype LogFormatUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array_Access_Array_Access;
   use type LogFormatUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GuiLog_Access is org.allbinary.logic.communication.log.GuiLog_Package_References.GuiLog_Access;
   function "=" (Left, Right : GuiLog_Access) return Boolean renames org.allbinary.logic.communication.log.GuiLog_Package_References."=";
   subtype GuiLog_Access_Array is org.allbinary.logic.communication.log.GuiLog_Package_References.GuiLog_Access_Array;
   function "=" (Left, Right : GuiLog_Access_Array) return Boolean renames org.allbinary.logic.communication.log.GuiLog_Package_References."=";
   subtype GuiLog_Access_Array_Access is org.allbinary.logic.communication.log.GuiLog_Package_References.GuiLog_Access_Array_Access;
   function "=" (Left, Right : GuiLog_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.GuiLog_Package_References."=";
   function Java_Box (Value : GuiLog_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.GuiLog_Package_References.Java_Box;
   function Java_Unbox_GuiLog_Access_Array (Value : access Java_Object'Class) return GuiLog_Access_Array_Access renames org.allbinary.logic.communication.log.GuiLog_Package_References.Java_Unbox_GuiLog_Access_Array;
   subtype GuiLog_Access_Array_Access_Array is org.allbinary.logic.communication.log.GuiLog_Package_References.GuiLog_Access_Array_Access_Array;
   function "=" (Left, Right : GuiLog_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.GuiLog_Package_References."=";
   subtype GuiLog_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.GuiLog_Package_References.GuiLog_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GuiLog_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.GuiLog_Package_References."=";
   function Java_Box (Value : GuiLog_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.GuiLog_Package_References.Java_Box;
   function Java_Unbox_GuiLog_Access_Array_Access_Array (Value : access Java_Object'Class) return GuiLog_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.GuiLog_Package_References.Java_Unbox_GuiLog_Access_Array_Access_Array;

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


