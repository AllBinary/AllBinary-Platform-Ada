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
limited with org.allbinary.data.CamelCaseUtil_Package;
package org.allbinary.data.CamelCaseUtil_Package_References is
   type CamelCaseUtil_Access is access all org.allbinary.data.CamelCaseUtil_Package.CamelCaseUtil'Class;
   type CamelCaseUtil_Access_Array is array (Natural range <>) of CamelCaseUtil_Access;
   type CamelCaseUtil_Access_Array_Access is access all CamelCaseUtil_Access_Array;
   type CamelCaseUtil_Access_Array_Access_Array is array (Natural range <>) of CamelCaseUtil_Access_Array_Access;
   type CamelCaseUtil_Access_Array_Access_Array_Access is access all CamelCaseUtil_Access_Array_Access_Array;
   type CamelCaseUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CamelCaseUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : CamelCaseUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CamelCaseUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CamelCaseUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CamelCaseUtil_Access_Array_Access is (if Value /= null and then Value.all in CamelCaseUtil_Access_Array_Object'Class then CamelCaseUtil_Access_Array_Object'Class (Value.all).Value else null);
   type CamelCaseUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CamelCaseUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CamelCaseUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CamelCaseUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CamelCaseUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CamelCaseUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CamelCaseUtil_Access_Array_Access_Array_Object'Class then CamelCaseUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.CamelCaseUtil_Package_References;

with org.allbinary.data.CamelCaseUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;

package org.allbinary.data.CamelCaseUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Reference_Types is
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
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CamelCaseUtil_Access is org.allbinary.data.CamelCaseUtil_Package_References.CamelCaseUtil_Access;
   function "=" (Left, Right : CamelCaseUtil_Access) return Boolean renames org.allbinary.data.CamelCaseUtil_Package_References."=";
   subtype CamelCaseUtil_Access_Array is org.allbinary.data.CamelCaseUtil_Package_References.CamelCaseUtil_Access_Array;
   function "=" (Left, Right : CamelCaseUtil_Access_Array) return Boolean renames org.allbinary.data.CamelCaseUtil_Package_References."=";
   subtype CamelCaseUtil_Access_Array_Access is org.allbinary.data.CamelCaseUtil_Package_References.CamelCaseUtil_Access_Array_Access;
   function "=" (Left, Right : CamelCaseUtil_Access_Array_Access) return Boolean renames org.allbinary.data.CamelCaseUtil_Package_References."=";
   function Java_Box (Value : CamelCaseUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.CamelCaseUtil_Package_References.Java_Box;
   function Java_Unbox_CamelCaseUtil_Access_Array (Value : access Java_Object'Class) return CamelCaseUtil_Access_Array_Access renames org.allbinary.data.CamelCaseUtil_Package_References.Java_Unbox_CamelCaseUtil_Access_Array;
   subtype CamelCaseUtil_Access_Array_Access_Array is org.allbinary.data.CamelCaseUtil_Package_References.CamelCaseUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CamelCaseUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.data.CamelCaseUtil_Package_References."=";
   subtype CamelCaseUtil_Access_Array_Access_Array_Access is org.allbinary.data.CamelCaseUtil_Package_References.CamelCaseUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CamelCaseUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.CamelCaseUtil_Package_References."=";
   function Java_Box (Value : CamelCaseUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.CamelCaseUtil_Package_References.Java_Box;
   function Java_Unbox_CamelCaseUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return CamelCaseUtil_Access_Array_Access_Array_Access renames org.allbinary.data.CamelCaseUtil_Package_References.Java_Unbox_CamelCaseUtil_Access_Array_Access_Array;

   type CamelCaseUtil is new Java_Object with record
      commonSeps : CommonSeps_Access;
   end record;
   instance : CamelCaseUtil_Access;

   procedure Initialize (This : in out CamelCaseUtil'Class);
   function Create return CamelCaseUtil_Access;
   function getInstance return CamelCaseUtil_Access;
   function getAsCamelCase (This : in out CamelCaseUtil; string_Id : Unbounded_String; stringBuilder_Param : access StringMaker_Package.StringMaker'Class) return Unbounded_String;
   procedure getAsCamelCase (This : in out CamelCaseUtil; string_Id : Unbounded_String; stringBuilder_Param : access StringMaker_Package.StringMaker'Class);

end org.allbinary.data.CamelCaseUtil_Package;


