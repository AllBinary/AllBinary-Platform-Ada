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
limited with org.allbinary.logic.java.byteutil.ByteUtil_Package;
package org.allbinary.logic.java.byteutil.ByteUtil_Package_References is
   type ByteUtil_Access is access all org.allbinary.logic.java.byteutil.ByteUtil_Package.ByteUtil'Class;
   type ByteUtil_Access_Array is array (Natural range <>) of ByteUtil_Access;
   type ByteUtil_Access_Array_Access is access all ByteUtil_Access_Array;
   type ByteUtil_Access_Array_Access_Array is array (Natural range <>) of ByteUtil_Access_Array_Access;
   type ByteUtil_Access_Array_Access_Array_Access is access all ByteUtil_Access_Array_Access_Array;
   type ByteUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ByteUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ByteUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ByteUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ByteUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ByteUtil_Access_Array_Access is (if Value /= null and then Value.all in ByteUtil_Access_Array_Object'Class then ByteUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ByteUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ByteUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ByteUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ByteUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ByteUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ByteUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ByteUtil_Access_Array_Access_Array_Object'Class then ByteUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.byteutil.ByteUtil_Package_References;

with org.allbinary.logic.java.byteutil.ByteUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.byteutil.ByteUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ByteUtil_Access is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access;
   function "=" (Left, Right : ByteUtil_Access) return Boolean renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References."=";
   subtype ByteUtil_Access_Array is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access_Array;
   function "=" (Left, Right : ByteUtil_Access_Array) return Boolean renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References."=";
   subtype ByteUtil_Access_Array_Access is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access_Array_Access;
   function "=" (Left, Right : ByteUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References."=";
   function Java_Box (Value : ByteUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References.Java_Box;
   function Java_Unbox_ByteUtil_Access_Array (Value : access Java_Object'Class) return ByteUtil_Access_Array_Access renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References.Java_Unbox_ByteUtil_Access_Array;
   subtype ByteUtil_Access_Array_Access_Array is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ByteUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References."=";
   subtype ByteUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ByteUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References."=";
   function Java_Box (Value : ByteUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References.Java_Box;
   function Java_Unbox_ByteUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ByteUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References.Java_Unbox_ByteUtil_Access_Array_Access_Array;

   type ByteUtil is new Java_Object with null record;
   instance : ByteUtil_Access;

   procedure Initialize (This : in out ByteUtil'Class);
   function Create return ByteUtil_Access;
   function getInstance return ByteUtil_Access;
   function xor_Id (This : in out ByteUtil; array_Id : Short_Short_Integer_Array_Access; mask : Short_Short_Integer) return Short_Short_Integer_Array_Access;
   procedure xor_Id (This : in out ByteUtil; array_Id : Short_Short_Integer_Array_Access; mask : Short_Short_Integer);
   function not_Id (This : in out ByteUtil; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure not_Id (This : in out ByteUtil; array_Id : Short_Short_Integer_Array_Access);
   function xorByte (This : in out ByteUtil; array_Id : Short_Short_Integer_Array_Access; index : Integer) return Short_Short_Integer_Array_Access;
   procedure xorByte (This : in out ByteUtil; array_Id : Short_Short_Integer_Array_Access; index : Integer);
   function compare (This : in out ByteUtil; newByteArray : Short_Short_Integer_Array_Access; oldByteArray : Short_Short_Integer_Array_Access) return Boolean;
   procedure compare (This : in out ByteUtil; newByteArray : Short_Short_Integer_Array_Access; oldByteArray : Short_Short_Integer_Array_Access);
   function compareWithStats (This : in out ByteUtil; newByteArray : Short_Short_Integer_Array_Access; newSize : Integer; oldByteArray : Short_Short_Integer_Array_Access; stats : Integer_Array_Access) return Boolean;
   procedure compareWithStats (This : in out ByteUtil; newByteArray : Short_Short_Integer_Array_Access; newSize : Integer; oldByteArray : Short_Short_Integer_Array_Access; stats : Integer_Array_Access);

end org.allbinary.logic.java.byteutil.ByteUtil_Package;


