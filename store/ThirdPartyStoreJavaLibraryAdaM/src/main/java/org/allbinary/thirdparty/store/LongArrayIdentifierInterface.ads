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

limited with org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package;
package org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References is
   type LongArrayIdentifierInterface_Access is access all org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package.LongArrayIdentifierInterface'Class;
   type LongArrayIdentifierInterface_Access_Array is array (Natural range <>) of LongArrayIdentifierInterface_Access;
   type LongArrayIdentifierInterface_Access_Array_Access is access all LongArrayIdentifierInterface_Access_Array;
   type LongArrayIdentifierInterface_Access_Array_Access_Array is array (Natural range <>) of LongArrayIdentifierInterface_Access_Array_Access;
   type LongArrayIdentifierInterface_Access_Array_Access_Array_Access is access all LongArrayIdentifierInterface_Access_Array_Access_Array;
end org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References;

with org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type LongArrayIdentifierInterface is interface;
   subtype LongArrayIdentifierInterface_Access is org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References.LongArrayIdentifierInterface_Access;
   function "=" (Left, Right : LongArrayIdentifierInterface_Access) return Boolean renames org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References."=";
   subtype LongArrayIdentifierInterface_Access_Array is org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References.LongArrayIdentifierInterface_Access_Array;
   function "=" (Left, Right : LongArrayIdentifierInterface_Access_Array) return Boolean renames org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References."=";
   subtype LongArrayIdentifierInterface_Access_Array_Access is org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References.LongArrayIdentifierInterface_Access_Array_Access;
   function "=" (Left, Right : LongArrayIdentifierInterface_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References."=";
   subtype LongArrayIdentifierInterface_Access_Array_Access_Array is org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References.LongArrayIdentifierInterface_Access_Array_Access_Array;
   function "=" (Left, Right : LongArrayIdentifierInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References."=";
   subtype LongArrayIdentifierInterface_Access_Array_Access_Array_Access is org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References.LongArrayIdentifierInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LongArrayIdentifierInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package_References."=";
   function Java_Object_Access_From_LongArrayIdentifierInterface (Value : LongArrayIdentifierInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getLongArrayIdentifier (This : in out LongArrayIdentifierInterface) return Long_Long_Integer_Array_Access is abstract;

end org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package;


