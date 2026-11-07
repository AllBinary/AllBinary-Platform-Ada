-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.TsUtil_Package;
package org.allbinary.TsUtil_Package_References is
   type TsUtil_Access is access all org.allbinary.TsUtil_Package.TsUtil'Class;
   type TsUtil_Access_Array is array (Natural range <>) of TsUtil_Access;
   type TsUtil_Access_Array_Access is access all TsUtil_Access_Array;
   type TsUtil_Access_Array_Access_Array is array (Natural range <>) of TsUtil_Access_Array_Access;
   type TsUtil_Access_Array_Access_Array_Access is access all TsUtil_Access_Array_Access_Array;
end org.allbinary.TsUtil_Package_References;

with org.allbinary.TsUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;
with java.lang.ClassLoader_Package; use java.lang.ClassLoader_Package;

package org.allbinary.TsUtil_Package is

   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package ClassLoader_Package renames Standard.java.lang.ClassLoader_Package;
   package Reference_Types is
   subtype Displayable_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access;
   use type Displayable_Access;
   subtype Displayable_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array;
   use type Displayable_Access_Array;
   subtype Displayable_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access;
   use type Displayable_Access_Array_Access;
   subtype Displayable_Access_Array_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array;
   use type Displayable_Access_Array_Access_Array;
   subtype Displayable_Access_Array_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array_Access;
   use type Displayable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TsUtil_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access;
   function "=" (Left, Right : TsUtil_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array;
   function "=" (Left, Right : TsUtil_Access_Array) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access;
   function "=" (Left, Right : TsUtil_Access_Array_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";

   type TsUtil is new Java_Object with null record;
   instance : TsUtil_Access;

   procedure Initialize (This : in out TsUtil'Class);
   function Create return TsUtil_Access;
   function getInstance return TsUtil_Access;
   function longBitsToDouble (This : in out TsUtil; bits : Long_Long_Integer) return Long_Float;
   procedure longBitsToDouble (This : in out TsUtil; bits : Long_Long_Integer);
   function intBitsToFloat (This : in out TsUtil; bits : Integer) return Float;
   procedure intBitsToFloat (This : in out TsUtil; bits : Integer);
   function hashCode (This : in out TsUtil; anyType_Param : access Java_Object'Class) return Integer;
   procedure hashCode (This : in out TsUtil; anyType_Param : access Java_Object'Class);
   procedure waitFor (This : in out TsUtil; any_Param : access Java_Object'Class; timeoutMillis : Long_Long_Integer);
   function getRecord (This : in out TsUtil; anyType_Param : access Java_Object'Class; recordId : Integer) return Short_Short_Integer_Array_Access;
   procedure getRecord (This : in out TsUtil; anyType_Param : access Java_Object'Class; recordId : Integer);
   function compareTo (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String) return Integer;
   procedure compareTo (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String);
   function equalIgnoreCase (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String) return Boolean;
   procedure equalIgnoreCase (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String);
   function equalsNotstring (This : in out TsUtil; anyType_Param : access Java_Object'Class; object2_Param : access Java_Object'Class) return Boolean;
   procedure equalsNotstring (This : in out TsUtil; anyType_Param : access Java_Object'Class; object2_Param : access Java_Object'Class);
   function getClassClassLoader (This : in out TsUtil; anyType_Param : access Java_Object'Class) return ClassLoader_Access;
   procedure getClassClassLoader (This : in out TsUtil; anyType_Param : access Java_Object'Class);
   function toNumberFromChar (This : in out TsUtil; value : Character) return Integer;
   procedure toNumberFromChar (This : in out TsUtil; value : Character);
   function toNumber (This : in out TsUtil; value : Integer) return Integer;
   procedure toNumber (This : in out TsUtil; value : Integer);
   function getByteArray (This : in out TsUtil; string_Id : Unbounded_String) return Short_Short_Integer_Array_Access;
   procedure getByteArray (This : in out TsUtil; string_Id : Unbounded_String);
   function isItemListener (This : in out TsUtil; owner_Param : access Displayable_Package.Displayable'Class) return Boolean;
   procedure isItemListener (This : in out TsUtil; owner_Param : access Displayable_Package.Displayable'Class);
   procedure gc (This : in out TsUtil);
   function hashCode (This : in out TsUtil; Value : Unbounded_String) return Integer;
   procedure hashCode (This : in out TsUtil; Value : Unbounded_String);
   function getClassClassLoader (This : in out TsUtil; Value : Unbounded_String) return ClassLoader_Access;
   procedure getClassClassLoader (This : in out TsUtil; Value : Unbounded_String);

end org.allbinary.TsUtil_Package;


