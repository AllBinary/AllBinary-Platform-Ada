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
limited with org.allbinary.logic.communication.log.PreLogUtil_Package;
package org.allbinary.logic.communication.log.PreLogUtil_Package_References is
   type PreLogUtil_Access is access all org.allbinary.logic.communication.log.PreLogUtil_Package.PreLogUtil'Class;
   type PreLogUtil_Access_Array is array (Natural range <>) of PreLogUtil_Access;
   type PreLogUtil_Access_Array_Access is access all PreLogUtil_Access_Array;
   type PreLogUtil_Access_Array_Access_Array is array (Natural range <>) of PreLogUtil_Access_Array_Access;
   type PreLogUtil_Access_Array_Access_Array_Access is access all PreLogUtil_Access_Array_Access_Array;
   type PreLogUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PreLogUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : PreLogUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PreLogUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PreLogUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PreLogUtil_Access_Array_Access is (if Value /= null and then Value.all in PreLogUtil_Access_Array_Object'Class then PreLogUtil_Access_Array_Object'Class (Value.all).Value else null);
   type PreLogUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PreLogUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PreLogUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PreLogUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PreLogUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PreLogUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PreLogUtil_Access_Array_Access_Array_Object'Class then PreLogUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.PreLogUtil_Package_References;

with org.allbinary.logic.communication.log.PreLogUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.log.PreLogUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PreLogUtil_Access is org.allbinary.logic.communication.log.PreLogUtil_Package_References.PreLogUtil_Access;
   function "=" (Left, Right : PreLogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.PreLogUtil_Package_References."=";
   subtype PreLogUtil_Access_Array is org.allbinary.logic.communication.log.PreLogUtil_Package_References.PreLogUtil_Access_Array;
   function "=" (Left, Right : PreLogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.PreLogUtil_Package_References."=";
   subtype PreLogUtil_Access_Array_Access is org.allbinary.logic.communication.log.PreLogUtil_Package_References.PreLogUtil_Access_Array_Access;
   function "=" (Left, Right : PreLogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.PreLogUtil_Package_References."=";
   function Java_Box (Value : PreLogUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.PreLogUtil_Package_References.Java_Box;
   function Java_Unbox_PreLogUtil_Access_Array (Value : access Java_Object'Class) return PreLogUtil_Access_Array_Access renames org.allbinary.logic.communication.log.PreLogUtil_Package_References.Java_Unbox_PreLogUtil_Access_Array;
   subtype PreLogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.PreLogUtil_Package_References.PreLogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PreLogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.PreLogUtil_Package_References."=";
   subtype PreLogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.PreLogUtil_Package_References.PreLogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreLogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.PreLogUtil_Package_References."=";
   function Java_Box (Value : PreLogUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.PreLogUtil_Package_References.Java_Box;
   function Java_Unbox_PreLogUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return PreLogUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.PreLogUtil_Package_References.Java_Unbox_PreLogUtil_Access_Array_Access_Array;

   type PreLogUtil is new Java_Object with null record;
   LOG_SUCCESS : Unbounded_String;

   procedure Initialize (This : in out PreLogUtil'Class);
   function Create return PreLogUtil_Access;
   procedure put (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String);
   procedure putOE (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class);
   procedure putS (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String);
   procedure putSE (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class);
   function getClassName (anyType_Param : access Java_Object'Class) return Unbounded_String;
   procedure getClassName (anyType_Param : access Java_Object'Class);
   function getClassName (Value : Unbounded_String) return Unbounded_String;
   procedure getClassName (Value : Unbounded_String);

end org.allbinary.logic.communication.log.PreLogUtil_Package;


