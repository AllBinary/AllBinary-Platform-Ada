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
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
package org.allbinary.logic.util.event.AllBinaryEventObject_Package_References is
   type AllBinaryEventObject_Access is access all org.allbinary.logic.util.event.AllBinaryEventObject_Package.AllBinaryEventObject'Class;
   type AllBinaryEventObject_Access_Array is array (Natural range <>) of AllBinaryEventObject_Access;
   type AllBinaryEventObject_Access_Array_Access is access all AllBinaryEventObject_Access_Array;
   type AllBinaryEventObject_Access_Array_Access_Array is array (Natural range <>) of AllBinaryEventObject_Access_Array_Access;
   type AllBinaryEventObject_Access_Array_Access_Array_Access is access all AllBinaryEventObject_Access_Array_Access_Array;
   type AllBinaryEventObject_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryEventObject_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryEventObject_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryEventObject_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryEventObject_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryEventObject_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryEventObject_Access_Array_Object'Class then AllBinaryEventObject_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryEventObject_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryEventObject_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryEventObject_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryEventObject_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryEventObject_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryEventObject_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryEventObject_Access_Array_Access_Array_Object'Class then AllBinaryEventObject_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;

with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.util.event.AllBinaryEventObject_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   function Java_Box (Value : AllBinaryEventObject_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.Java_Box;
   function Java_Unbox_AllBinaryEventObject_Access_Array (Value : access Java_Object'Class) return AllBinaryEventObject_Access_Array_Access renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.Java_Unbox_AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   function Java_Box (Value : AllBinaryEventObject_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.Java_Box;
   function Java_Unbox_AllBinaryEventObject_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryEventObject_Access_Array_Access_Array_Access renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.Java_Unbox_AllBinaryEventObject_Access_Array_Access_Array;

   type AllBinaryEventObject is new Java_Object with record
      source : Java_Object_Access;
   end record;
   NULL_EVENT : AllBinaryEventObject_Access;

   procedure Initialize (This : in out AllBinaryEventObject'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return AllBinaryEventObject_Access;
   function getSource (This : in out AllBinaryEventObject) return Java_Object_Access;
   procedure setSource (This : in out AllBinaryEventObject; source_Param : access Java_Object'Class);
   procedure setSource (This : in out AllBinaryEventObject; Value : Unbounded_String);

end org.allbinary.logic.util.event.AllBinaryEventObject_Package;


