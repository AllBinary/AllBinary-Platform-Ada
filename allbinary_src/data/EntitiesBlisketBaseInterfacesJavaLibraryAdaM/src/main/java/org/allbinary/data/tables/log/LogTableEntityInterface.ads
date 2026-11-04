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

limited with org.allbinary.data.tables.log.LogTableEntityInterface_Package;
package org.allbinary.data.tables.log.LogTableEntityInterface_Package_References is
   type LogTableEntityInterface_Access is access all org.allbinary.data.tables.log.LogTableEntityInterface_Package.LogTableEntityInterface'Class;
   type LogTableEntityInterface_Access_Array is array (Natural range <>) of LogTableEntityInterface_Access;
   type LogTableEntityInterface_Access_Array_Access is access all LogTableEntityInterface_Access_Array;
   type LogTableEntityInterface_Access_Array_Access_Array is array (Natural range <>) of LogTableEntityInterface_Access_Array_Access;
   type LogTableEntityInterface_Access_Array_Access_Array_Access is access all LogTableEntityInterface_Access_Array_Access_Array;
end org.allbinary.data.tables.log.LogTableEntityInterface_Package_References;

with org.allbinary.data.tables.log.LogTableEntityInterface_Package_References;
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
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.log.LogTableEntityInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   type LogTableEntityInterface is interface and BasicDataTableInterface;
   subtype LogTableEntityInterface_Access is org.allbinary.data.tables.log.LogTableEntityInterface_Package_References.LogTableEntityInterface_Access;
   function "=" (Left, Right : LogTableEntityInterface_Access) return Boolean renames org.allbinary.data.tables.log.LogTableEntityInterface_Package_References."=";
   subtype LogTableEntityInterface_Access_Array is org.allbinary.data.tables.log.LogTableEntityInterface_Package_References.LogTableEntityInterface_Access_Array;
   function "=" (Left, Right : LogTableEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.log.LogTableEntityInterface_Package_References."=";
   subtype LogTableEntityInterface_Access_Array_Access is org.allbinary.data.tables.log.LogTableEntityInterface_Package_References.LogTableEntityInterface_Access_Array_Access;
   function "=" (Left, Right : LogTableEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.log.LogTableEntityInterface_Package_References."=";
   subtype LogTableEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.log.LogTableEntityInterface_Package_References.LogTableEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : LogTableEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.log.LogTableEntityInterface_Package_References."=";
   subtype LogTableEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.log.LogTableEntityInterface_Package_References.LogTableEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogTableEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.log.LogTableEntityInterface_Package_References."=";
   function Java_Object_Access_From_LogTableEntityInterface (Value : LogTableEntityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure deleteWhere (This : in out LogTableEntityInterface; key : Unbounded_String; value : Unbounded_String) is abstract;
   procedure insert (This : in out LogTableEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;

end org.allbinary.data.tables.log.LogTableEntityInterface_Package;


