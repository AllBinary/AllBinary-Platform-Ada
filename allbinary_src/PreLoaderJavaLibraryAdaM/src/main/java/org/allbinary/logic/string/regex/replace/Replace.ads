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
limited with org.allbinary.logic.string_Id.regex.replace.Replace_Package;
package org.allbinary.logic.string_Id.regex.replace.Replace_Package_References is
   type Replace_Access is access all org.allbinary.logic.string_Id.regex.replace.Replace_Package.Replace'Class;
   type Replace_Access_Array is array (Natural range <>) of Replace_Access;
   type Replace_Access_Array_Access is access all Replace_Access_Array;
   type Replace_Access_Array_Access_Array is array (Natural range <>) of Replace_Access_Array_Access;
   type Replace_Access_Array_Access_Array_Access is access all Replace_Access_Array_Access_Array;
   type Replace_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Replace_Access_Array_Access;
   end record;
   function Java_Box (Value : Replace_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Replace_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Replace_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Replace_Access_Array_Access is (if Value /= null and then Value.all in Replace_Access_Array_Object'Class then Replace_Access_Array_Object'Class (Value.all).Value else null);
   type Replace_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Replace_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Replace_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Replace_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Replace_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Replace_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Replace_Access_Array_Access_Array_Object'Class then Replace_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.string_Id.regex.replace.Replace_Package_References;

with org.allbinary.logic.string_Id.regex.replace.Replace_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.J2SEUtil_Package;
with org.allbinary.J2SEUtil_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.logic.string_Id.regex.replace.Replace_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package J2SEUtil_Package renames Standard.org.allbinary.J2SEUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype J2SEUtil_Access is org.allbinary.J2SEUtil_Package_References.J2SEUtil_Access;
   use type J2SEUtil_Access;
   subtype J2SEUtil_Access_Array is org.allbinary.J2SEUtil_Package_References.J2SEUtil_Access_Array;
   use type J2SEUtil_Access_Array;
   subtype J2SEUtil_Access_Array_Access is org.allbinary.J2SEUtil_Package_References.J2SEUtil_Access_Array_Access;
   use type J2SEUtil_Access_Array_Access;
   subtype J2SEUtil_Access_Array_Access_Array is org.allbinary.J2SEUtil_Package_References.J2SEUtil_Access_Array_Access_Array;
   use type J2SEUtil_Access_Array_Access_Array;
   subtype J2SEUtil_Access_Array_Access_Array_Access is org.allbinary.J2SEUtil_Package_References.J2SEUtil_Access_Array_Access_Array_Access;
   use type J2SEUtil_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Replace_Access is org.allbinary.logic.string_Id.regex.replace.Replace_Package_References.Replace_Access;
   function "=" (Left, Right : Replace_Access) return Boolean renames org.allbinary.logic.string_Id.regex.replace.Replace_Package_References."=";
   subtype Replace_Access_Array is org.allbinary.logic.string_Id.regex.replace.Replace_Package_References.Replace_Access_Array;
   function "=" (Left, Right : Replace_Access_Array) return Boolean renames org.allbinary.logic.string_Id.regex.replace.Replace_Package_References."=";
   subtype Replace_Access_Array_Access is org.allbinary.logic.string_Id.regex.replace.Replace_Package_References.Replace_Access_Array_Access;
   function "=" (Left, Right : Replace_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.regex.replace.Replace_Package_References."=";
   function Java_Box (Value : Replace_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.string_Id.regex.replace.Replace_Package_References.Java_Box;
   function Java_Unbox_Replace_Access_Array (Value : access Java_Object'Class) return Replace_Access_Array_Access renames org.allbinary.logic.string_Id.regex.replace.Replace_Package_References.Java_Unbox_Replace_Access_Array;
   subtype Replace_Access_Array_Access_Array is org.allbinary.logic.string_Id.regex.replace.Replace_Package_References.Replace_Access_Array_Access_Array;
   function "=" (Left, Right : Replace_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.regex.replace.Replace_Package_References."=";
   subtype Replace_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.regex.replace.Replace_Package_References.Replace_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Replace_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.regex.replace.Replace_Package_References."=";
   function Java_Box (Value : Replace_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.string_Id.regex.replace.Replace_Package_References.Java_Box;
   function Java_Unbox_Replace_Access_Array_Access_Array (Value : access Java_Object'Class) return Replace_Access_Array_Access_Array_Access renames org.allbinary.logic.string_Id.regex.replace.Replace_Package_References.Java_Unbox_Replace_Access_Array_Access_Array;

   type Replace is new Java_Object with record
      logUtil : LogUtil_Access;
      j2seUtil : J2SEUtil_Access;
      REPLACERS_U : Unbounded_String;
      ALL_Field_Id : Unbounded_String;
      FOUND_KEY : Unbounded_String;
      hashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out Replace'Class; key : Unbounded_String; value : Unbounded_String);
   function Create (key : Unbounded_String; value : Unbounded_String) return Replace_Access;
   procedure Initialize (This : in out Replace'Class; keys : Unbounded_String_Array_Access; values : Unbounded_String_Array_Access);
   function Create (keys : Unbounded_String_Array_Access; values : Unbounded_String_Array_Access) return Replace_Access;
   procedure Initialize (This : in out Replace'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return Replace_Access;
   function all_Id (This : in out Replace; replace_Var : Unbounded_String) return Unbounded_String;
   procedure all_Id (This : in out Replace; replace_Var : Unbounded_String);
   function upTo (This : in out Replace; replace_Var_Param : Unbounded_String; total : Integer) return Unbounded_String;
   procedure upTo (This : in out Replace; replace_Var_Param : Unbounded_String; total : Integer);
   function line (This : in out Replace; replace_Var_Param : Unbounded_String) return Unbounded_String;
   procedure line (This : in out Replace; replace_Var_Param : Unbounded_String);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.string_Id.regex.replace.Replace_Package;


