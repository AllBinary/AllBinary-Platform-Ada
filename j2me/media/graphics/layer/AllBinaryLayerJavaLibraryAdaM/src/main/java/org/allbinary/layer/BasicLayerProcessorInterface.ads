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

limited with org.allbinary.layer.BasicLayerProcessorInterface_Package;
package org.allbinary.layer.BasicLayerProcessorInterface_Package_References is
   type BasicLayerProcessorInterface_Access is access all org.allbinary.layer.BasicLayerProcessorInterface_Package.BasicLayerProcessorInterface'Class;
   type BasicLayerProcessorInterface_Access_Array is array (Natural range <>) of BasicLayerProcessorInterface_Access;
   type BasicLayerProcessorInterface_Access_Array_Access is access all BasicLayerProcessorInterface_Access_Array;
   type BasicLayerProcessorInterface_Access_Array_Access_Array is array (Natural range <>) of BasicLayerProcessorInterface_Access_Array_Access;
   type BasicLayerProcessorInterface_Access_Array_Access_Array_Access is access all BasicLayerProcessorInterface_Access_Array_Access_Array;
end org.allbinary.layer.BasicLayerProcessorInterface_Package_References;

with org.allbinary.layer.BasicLayerProcessorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package org.allbinary.layer.BasicLayerProcessorInterface_Package is

   package Reference_Types is
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type BasicLayerProcessorInterface is interface;
   subtype BasicLayerProcessorInterface_Access is org.allbinary.layer.BasicLayerProcessorInterface_Package_References.BasicLayerProcessorInterface_Access;
   function "=" (Left, Right : BasicLayerProcessorInterface_Access) return Boolean renames org.allbinary.layer.BasicLayerProcessorInterface_Package_References."=";
   subtype BasicLayerProcessorInterface_Access_Array is org.allbinary.layer.BasicLayerProcessorInterface_Package_References.BasicLayerProcessorInterface_Access_Array;
   function "=" (Left, Right : BasicLayerProcessorInterface_Access_Array) return Boolean renames org.allbinary.layer.BasicLayerProcessorInterface_Package_References."=";
   subtype BasicLayerProcessorInterface_Access_Array_Access is org.allbinary.layer.BasicLayerProcessorInterface_Package_References.BasicLayerProcessorInterface_Access_Array_Access;
   function "=" (Left, Right : BasicLayerProcessorInterface_Access_Array_Access) return Boolean renames org.allbinary.layer.BasicLayerProcessorInterface_Package_References."=";
   subtype BasicLayerProcessorInterface_Access_Array_Access_Array is org.allbinary.layer.BasicLayerProcessorInterface_Package_References.BasicLayerProcessorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicLayerProcessorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.BasicLayerProcessorInterface_Package_References."=";
   subtype BasicLayerProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.layer.BasicLayerProcessorInterface_Package_References.BasicLayerProcessorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicLayerProcessorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.BasicLayerProcessorInterface_Package_References."=";
   function Java_Object_Access_From_BasicLayerProcessorInterface (Value : BasicLayerProcessorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure process (This : in out BasicLayerProcessorInterface; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is abstract;

end org.allbinary.layer.BasicLayerProcessorInterface_Package;


