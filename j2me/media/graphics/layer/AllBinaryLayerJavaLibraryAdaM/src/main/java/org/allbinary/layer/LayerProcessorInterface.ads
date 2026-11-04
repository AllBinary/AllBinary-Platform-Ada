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

limited with org.allbinary.layer.LayerProcessorInterface_Package;
package org.allbinary.layer.LayerProcessorInterface_Package_References is
   type LayerProcessorInterface_Access is access all org.allbinary.layer.LayerProcessorInterface_Package.LayerProcessorInterface'Class;
   type LayerProcessorInterface_Access_Array is array (Natural range <>) of LayerProcessorInterface_Access;
   type LayerProcessorInterface_Access_Array_Access is access all LayerProcessorInterface_Access_Array;
   type LayerProcessorInterface_Access_Array_Access_Array is array (Natural range <>) of LayerProcessorInterface_Access_Array_Access;
   type LayerProcessorInterface_Access_Array_Access_Array_Access is access all LayerProcessorInterface_Access_Array_Access_Array;
end org.allbinary.layer.LayerProcessorInterface_Package_References;

with org.allbinary.layer.LayerProcessorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.BasicLayerProcessorInterface_Package; use org.allbinary.layer.BasicLayerProcessorInterface_Package;
limited with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManager_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.layer.LayerProcessorInterface_Package is

   package Reference_Types is
   subtype LayerManager_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access;
   use type LayerManager_Access;
   subtype LayerManager_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array;
   use type LayerManager_Access_Array;
   subtype LayerManager_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access;
   use type LayerManager_Access_Array_Access;
   subtype LayerManager_Access_Array_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array;
   use type LayerManager_Access_Array_Access_Array;
   subtype LayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array_Access;
   use type LayerManager_Access_Array_Access_Array_Access;
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
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type LayerProcessorInterface is interface and BasicLayerProcessorInterface;
   subtype LayerProcessorInterface_Access is org.allbinary.layer.LayerProcessorInterface_Package_References.LayerProcessorInterface_Access;
   function "=" (Left, Right : LayerProcessorInterface_Access) return Boolean renames org.allbinary.layer.LayerProcessorInterface_Package_References."=";
   subtype LayerProcessorInterface_Access_Array is org.allbinary.layer.LayerProcessorInterface_Package_References.LayerProcessorInterface_Access_Array;
   function "=" (Left, Right : LayerProcessorInterface_Access_Array) return Boolean renames org.allbinary.layer.LayerProcessorInterface_Package_References."=";
   subtype LayerProcessorInterface_Access_Array_Access is org.allbinary.layer.LayerProcessorInterface_Package_References.LayerProcessorInterface_Access_Array_Access;
   function "=" (Left, Right : LayerProcessorInterface_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerProcessorInterface_Package_References."=";
   subtype LayerProcessorInterface_Access_Array_Access_Array is org.allbinary.layer.LayerProcessorInterface_Package_References.LayerProcessorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : LayerProcessorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.LayerProcessorInterface_Package_References."=";
   subtype LayerProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.layer.LayerProcessorInterface_Package_References.LayerProcessorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerProcessorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerProcessorInterface_Package_References."=";
   function Java_Object_Access_From_LayerProcessorInterface (Value : LayerProcessorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getLayerManager (This : in out LayerProcessorInterface) return LayerManager_Access is abstract;
   procedure processAt (This : in out LayerProcessorInterface; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer) is abstract;
   function isProcessorLayer (This : in out LayerProcessorInterface; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is abstract;

end org.allbinary.layer.LayerProcessorInterface_Package;


