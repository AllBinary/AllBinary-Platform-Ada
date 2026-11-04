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

limited with org.allbinary.data.tables.TableMappingInterface_Package;
package org.allbinary.data.tables.TableMappingInterface_Package_References is
   type TableMappingInterface_Access is access all org.allbinary.data.tables.TableMappingInterface_Package.TableMappingInterface'Class;
   type TableMappingInterface_Access_Array is array (Natural range <>) of TableMappingInterface_Access;
   type TableMappingInterface_Access_Array_Access is access all TableMappingInterface_Access_Array;
   type TableMappingInterface_Access_Array_Access_Array is array (Natural range <>) of TableMappingInterface_Access_Array_Access;
   type TableMappingInterface_Access_Array_Access_Array_Access is access all TableMappingInterface_Access_Array_Access_Array;
end org.allbinary.data.tables.TableMappingInterface_Package_References;

with org.allbinary.data.tables.TableMappingInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.data.tables.TableMappingInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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


   type TableMappingInterface is interface;
   subtype TableMappingInterface_Access is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access;
   function "=" (Left, Right : TableMappingInterface_Access) return Boolean renames org.allbinary.data.tables.TableMappingInterface_Package_References."=";
   subtype TableMappingInterface_Access_Array is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array;
   function "=" (Left, Right : TableMappingInterface_Access_Array) return Boolean renames org.allbinary.data.tables.TableMappingInterface_Package_References."=";
   subtype TableMappingInterface_Access_Array_Access is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array_Access;
   function "=" (Left, Right : TableMappingInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.TableMappingInterface_Package_References."=";
   subtype TableMappingInterface_Access_Array_Access_Array is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TableMappingInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.TableMappingInterface_Package_References."=";
   subtype TableMappingInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TableMappingInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.TableMappingInterface_Package_References."=";
   function Java_Object_Access_From_TableMappingInterface (Value : TableMappingInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getKey (This : in out TableMappingInterface) return Java_Object_Access is abstract;
   function toVector (This : in out TableMappingInterface) return BasicArrayList_Access is abstract;
   function toHashMap (This : in out TableMappingInterface) return HashMap_Access is abstract;

end org.allbinary.data.tables.TableMappingInterface_Package;


