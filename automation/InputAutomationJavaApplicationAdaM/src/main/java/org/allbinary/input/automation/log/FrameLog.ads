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
limited with org.allbinary.input.automation.log.FrameLog_Package;
package org.allbinary.input.automation.log.FrameLog_Package_References is
   type FrameLog_Access is access all org.allbinary.input.automation.log.FrameLog_Package.FrameLog'Class;
   type FrameLog_Access_Array is array (Natural range <>) of FrameLog_Access;
   type FrameLog_Access_Array_Access is access all FrameLog_Access_Array;
   type FrameLog_Access_Array_Access_Array is array (Natural range <>) of FrameLog_Access_Array_Access;
   type FrameLog_Access_Array_Access_Array_Access is access all FrameLog_Access_Array_Access_Array;
   type FrameLog_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FrameLog_Access_Array_Access;
   end record;
   function Java_Box (Value : FrameLog_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FrameLog_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FrameLog_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FrameLog_Access_Array_Access is (if Value /= null and then Value.all in FrameLog_Access_Array_Object'Class then FrameLog_Access_Array_Object'Class (Value.all).Value else null);
   type FrameLog_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FrameLog_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FrameLog_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FrameLog_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FrameLog_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FrameLog_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FrameLog_Access_Array_Access_Array_Object'Class then FrameLog_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.log.FrameLog_Package_References;

with org.allbinary.input.automation.log.FrameLog_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;

package org.allbinary.input.automation.log.FrameLog_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FrameLog_Access is org.allbinary.input.automation.log.FrameLog_Package_References.FrameLog_Access;
   function "=" (Left, Right : FrameLog_Access) return Boolean renames org.allbinary.input.automation.log.FrameLog_Package_References."=";
   subtype FrameLog_Access_Array is org.allbinary.input.automation.log.FrameLog_Package_References.FrameLog_Access_Array;
   function "=" (Left, Right : FrameLog_Access_Array) return Boolean renames org.allbinary.input.automation.log.FrameLog_Package_References."=";
   subtype FrameLog_Access_Array_Access is org.allbinary.input.automation.log.FrameLog_Package_References.FrameLog_Access_Array_Access;
   function "=" (Left, Right : FrameLog_Access_Array_Access) return Boolean renames org.allbinary.input.automation.log.FrameLog_Package_References."=";
   function Java_Box (Value : FrameLog_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.log.FrameLog_Package_References.Java_Box;
   function Java_Unbox_FrameLog_Access_Array (Value : access Java_Object'Class) return FrameLog_Access_Array_Access renames org.allbinary.input.automation.log.FrameLog_Package_References.Java_Unbox_FrameLog_Access_Array;
   subtype FrameLog_Access_Array_Access_Array is org.allbinary.input.automation.log.FrameLog_Package_References.FrameLog_Access_Array_Access_Array;
   function "=" (Left, Right : FrameLog_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.log.FrameLog_Package_References."=";
   subtype FrameLog_Access_Array_Access_Array_Access is org.allbinary.input.automation.log.FrameLog_Package_References.FrameLog_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FrameLog_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.log.FrameLog_Package_References."=";
   function Java_Box (Value : FrameLog_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.log.FrameLog_Package_References.Java_Box;
   function Java_Unbox_FrameLog_Access_Array_Access_Array (Value : access Java_Object'Class) return FrameLog_Access_Array_Access_Array_Access renames org.allbinary.input.automation.log.FrameLog_Package_References.Java_Unbox_FrameLog_Access_Array_Access_Array;

   type FrameLog is new Java_Object with record
      frame : Long_Long_Integer;
      infoStringBuffer : StringMaker_Access;
      actionsStringBuffer : StringMaker_Access;
   end record;
   frameBytes : Short_Short_Integer_Array_Access;
   info : Short_Short_Integer_Array_Access;
   actions : Short_Short_Integer_Array_Access;

   procedure Initialize (This : in out FrameLog'Class; frame : Long_Long_Integer);
   function Create (frame : Long_Long_Integer) return FrameLog_Access;
   procedure addInfo (This : in out FrameLog; infoString : Unbounded_String);
   procedure addActions (This : in out FrameLog; vectorOfStrings_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure addAction (This : in out FrameLog; action : Unbounded_String);
   procedure write (This : in out FrameLog);
   function getFrame (This : in out FrameLog) return Long_Long_Integer;

end org.allbinary.input.automation.log.FrameLog_Package;


