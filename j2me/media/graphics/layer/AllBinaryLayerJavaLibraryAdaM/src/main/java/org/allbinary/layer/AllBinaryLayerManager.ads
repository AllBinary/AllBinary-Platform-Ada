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

limited with org.allbinary.layer.AllBinaryLayerManager_Package;
package org.allbinary.layer.AllBinaryLayerManager_Package_References is
   type AllBinaryLayerManager_Access is access all org.allbinary.layer.AllBinaryLayerManager_Package.AllBinaryLayerManager'Class;
   type AllBinaryLayerManager_Access_Array is array (Natural range <>) of AllBinaryLayerManager_Access;
   type AllBinaryLayerManager_Access_Array_Access is access all AllBinaryLayerManager_Access_Array;
   type AllBinaryLayerManager_Access_Array_Access_Array is array (Natural range <>) of AllBinaryLayerManager_Access_Array_Access;
   type AllBinaryLayerManager_Access_Array_Access_Array_Access is access all AllBinaryLayerManager_Access_Array_Access_Array;
end org.allbinary.layer.AllBinaryLayerManager_Package_References;

with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package_References;
limited with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package_References;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;
limited with org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.layer.LayerProcessor_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.layer.AllBinaryLayerManager_Package is

   package LayerManagerEvent_Package renames Standard.org.allbinary.layer.event.LayerManagerEvent_Package;
   package LayerManagerEventHandler_Package renames Standard.org.allbinary.layer.event.LayerManagerEventHandler_Package;
   package Reference_Types is
   subtype LayerManagerEvent_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access;
   use type LayerManagerEvent_Access;
   subtype LayerManagerEvent_Access_Array is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array;
   use type LayerManagerEvent_Access_Array;
   subtype LayerManagerEvent_Access_Array_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access;
   use type LayerManagerEvent_Access_Array_Access;
   subtype LayerManagerEvent_Access_Array_Access_Array is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access_Array;
   use type LayerManagerEvent_Access_Array_Access_Array;
   subtype LayerManagerEvent_Access_Array_Access_Array_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access_Array_Access;
   use type LayerManagerEvent_Access_Array_Access_Array_Access;
   subtype LayerManagerEventHandler_Access is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access;
   use type LayerManagerEventHandler_Access;
   subtype LayerManagerEventHandler_Access_Array is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access_Array;
   use type LayerManagerEventHandler_Access_Array;
   subtype LayerManagerEventHandler_Access_Array_Access is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access_Array_Access;
   use type LayerManagerEventHandler_Access_Array_Access;
   subtype LayerManagerEventHandler_Access_Array_Access_Array is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access_Array_Access_Array;
   use type LayerManagerEventHandler_Access_Array_Access_Array;
   subtype LayerManagerEventHandler_Access_Array_Access_Array_Access is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access_Array_Access_Array_Access;
   use type LayerManagerEventHandler_Access_Array_Access_Array_Access;
   subtype LayerProcessor_Access is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access;
   use type LayerProcessor_Access;
   subtype LayerProcessor_Access_Array is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access_Array;
   use type LayerProcessor_Access_Array;
   subtype LayerProcessor_Access_Array_Access is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access_Array_Access;
   use type LayerProcessor_Access_Array_Access;
   subtype LayerProcessor_Access_Array_Access_Array is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access_Array_Access_Array;
   use type LayerProcessor_Access_Array_Access_Array;
   subtype LayerProcessor_Access_Array_Access_Array_Access is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access_Array_Access_Array_Access;
   use type LayerProcessor_Access_Array_Access_Array_Access;
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


   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";

   type AllBinaryLayerManager is new LayerManager with record
      layerManagerEventHandler : LayerManagerEventHandler_Access;
      createLayerManagerEvent : LayerManagerEvent_Access;
      deleteLayerManagerEvent : LayerManagerEvent_Access;
      basicLayerProcessorArray : LayerProcessor_Access_Array_Access;
   end record;

   procedure Initialize (This : in out AllBinaryLayerManager'Class);
   function Create return AllBinaryLayerManager_Access;
   function getLayerProcessorArray (This : in out AllBinaryLayerManager) return LayerProcessor_Access_Array_Access;
   procedure setLayerProcessorArray (This : in out AllBinaryLayerManager; layerProcessorArray : LayerProcessor_Access_Array_Access);
   procedure log (This : in out AllBinaryLayerManager);
   procedure append (This : in out AllBinaryLayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure appendAt (This : in out AllBinaryLayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer);
   procedure appendProcessors (This : in out AllBinaryLayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure remove (This : in out AllBinaryLayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure process (This : in out AllBinaryLayerManager);
   procedure cleanup (This : in out AllBinaryLayerManager);

end org.allbinary.layer.AllBinaryLayerManager_Package;


