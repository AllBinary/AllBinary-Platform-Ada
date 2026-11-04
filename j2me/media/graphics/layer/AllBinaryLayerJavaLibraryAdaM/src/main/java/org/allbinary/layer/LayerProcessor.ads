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

limited with org.allbinary.layer.LayerProcessor_Package;
package org.allbinary.layer.LayerProcessor_Package_References is
   type LayerProcessor_Access is access all org.allbinary.layer.LayerProcessor_Package.LayerProcessor'Class;
   type LayerProcessor_Access_Array is array (Natural range <>) of LayerProcessor_Access;
   type LayerProcessor_Access_Array_Access is access all LayerProcessor_Access_Array;
   type LayerProcessor_Access_Array_Access_Array is array (Natural range <>) of LayerProcessor_Access_Array_Access;
   type LayerProcessor_Access_Array_Access_Array_Access is access all LayerProcessor_Access_Array_Access_Array;
end org.allbinary.layer.LayerProcessor_Package_References;

with org.allbinary.layer.LayerProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.layer.LayerProcessorInterface_Package; use org.allbinary.layer.LayerProcessorInterface_Package;
limited with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManager_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.layer.LayerProcessor_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype LayerProcessor_Access is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access;
   function "=" (Left, Right : LayerProcessor_Access) return Boolean renames org.allbinary.layer.LayerProcessor_Package_References."=";
   subtype LayerProcessor_Access_Array is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access_Array;
   function "=" (Left, Right : LayerProcessor_Access_Array) return Boolean renames org.allbinary.layer.LayerProcessor_Package_References."=";
   subtype LayerProcessor_Access_Array_Access is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access_Array_Access;
   function "=" (Left, Right : LayerProcessor_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerProcessor_Package_References."=";
   subtype LayerProcessor_Access_Array_Access_Array is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : LayerProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.LayerProcessor_Package_References."=";
   subtype LayerProcessor_Access_Array_Access_Array_Access is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerProcessor_Package_References."=";

   type LayerProcessor is new Java_Object and LayerProcessorInterface with record
      commonStrings : CommonStrings_Access;
      layerManager : LayerManager_Access;
   end record;

   procedure Initialize (This : in out LayerProcessor'Class; layerManager_Param : access LayerManager_Package.LayerManager'Class);
   function Create (layerManager_Param : access LayerManager_Package.LayerManager'Class) return LayerProcessor_Access;
   procedure processAt (This : in out LayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer);
   function isProcessorLayer (This : in out LayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isProcessorLayer (This : in out LayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function getLayerManager (This : in out LayerProcessor) return LayerManager_Access;
   procedure process (This : in out LayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);

end org.allbinary.layer.LayerProcessor_Package;


