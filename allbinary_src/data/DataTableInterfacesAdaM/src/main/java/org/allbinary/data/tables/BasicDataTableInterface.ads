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
limited with org.allbinary.data.tables.BasicDataTableInterface_Package;
package org.allbinary.data.tables.BasicDataTableInterface_Package_References is
   type BasicDataTableInterface_Access is access all org.allbinary.data.tables.BasicDataTableInterface_Package.BasicDataTableInterface'Class;
   type BasicDataTableInterface_Access_Array is array (Natural range <>) of BasicDataTableInterface_Access;
   type BasicDataTableInterface_Access_Array_Access is access all BasicDataTableInterface_Access_Array;
   type BasicDataTableInterface_Access_Array_Access_Array is array (Natural range <>) of BasicDataTableInterface_Access_Array_Access;
   type BasicDataTableInterface_Access_Array_Access_Array_Access is access all BasicDataTableInterface_Access_Array_Access_Array;
   type BasicDataTableInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicDataTableInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicDataTableInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicDataTableInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicDataTableInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicDataTableInterface_Access_Array_Access is (if Value /= null and then Value.all in BasicDataTableInterface_Access_Array_Object'Class then BasicDataTableInterface_Access_Array_Object'Class (Value.all).Value else null);
   type BasicDataTableInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicDataTableInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicDataTableInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicDataTableInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicDataTableInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicDataTableInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicDataTableInterface_Access_Array_Access_Array_Object'Class then BasicDataTableInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.BasicDataTableInterface_Package_References;

with org.allbinary.data.tables.BasicDataTableInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.data.tables.BasicDataTableInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type BasicDataTableInterface is interface;
   subtype BasicDataTableInterface_Access is org.allbinary.data.tables.BasicDataTableInterface_Package_References.BasicDataTableInterface_Access;
   function "=" (Left, Right : BasicDataTableInterface_Access) return Boolean renames org.allbinary.data.tables.BasicDataTableInterface_Package_References."=";
   subtype BasicDataTableInterface_Access_Array is org.allbinary.data.tables.BasicDataTableInterface_Package_References.BasicDataTableInterface_Access_Array;
   function "=" (Left, Right : BasicDataTableInterface_Access_Array) return Boolean renames org.allbinary.data.tables.BasicDataTableInterface_Package_References."=";
   subtype BasicDataTableInterface_Access_Array_Access is org.allbinary.data.tables.BasicDataTableInterface_Package_References.BasicDataTableInterface_Access_Array_Access;
   function "=" (Left, Right : BasicDataTableInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.BasicDataTableInterface_Package_References."=";
   function Java_Box (Value : BasicDataTableInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.BasicDataTableInterface_Package_References.Java_Box;
   function Java_Unbox_BasicDataTableInterface_Access_Array (Value : access Java_Object'Class) return BasicDataTableInterface_Access_Array_Access renames org.allbinary.data.tables.BasicDataTableInterface_Package_References.Java_Unbox_BasicDataTableInterface_Access_Array;
   subtype BasicDataTableInterface_Access_Array_Access_Array is org.allbinary.data.tables.BasicDataTableInterface_Package_References.BasicDataTableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicDataTableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.BasicDataTableInterface_Package_References."=";
   subtype BasicDataTableInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.BasicDataTableInterface_Package_References.BasicDataTableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicDataTableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.BasicDataTableInterface_Package_References."=";
   function Java_Box (Value : BasicDataTableInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.BasicDataTableInterface_Package_References.Java_Box;
   function Java_Unbox_BasicDataTableInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicDataTableInterface_Access_Array_Access_Array_Access renames org.allbinary.data.tables.BasicDataTableInterface_Package_References.Java_Unbox_BasicDataTableInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_BasicDataTableInterface (Value : BasicDataTableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function createTable (This : in out BasicDataTableInterface) return Unbounded_String is abstract;
   function dropTable (This : in out BasicDataTableInterface) return Unbounded_String is abstract;

end org.allbinary.data.tables.BasicDataTableInterface_Package;


