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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.event.LayerManagerEvent_Package; use org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package; use org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;

package org.allbinary.layer.AllBinaryLayerManager_Package is

   package LayerManagerEvent_Package renames org.allbinary.layer.event.LayerManagerEvent_Package;
   package LayerManagerEventHandler_Package renames org.allbinary.layer.event.LayerManagerEventHandler_Package;

   type AllBinaryLayerManager is tagged;
   type AllBinaryLayerManager_Access is access all AllBinaryLayerManager'Class;
   type AllBinaryLayerManager_Access_Array is array (Natural range <>) of AllBinaryLayerManager_Access;
   type AllBinaryLayerManager_Access_Array_Access is access all AllBinaryLayerManager_Access_Array;

   type AllBinaryLayerManager is new LayerManager with record
      layerManagerEventHandler : LayerManagerEventHandler_Access;
      createLayerManagerEvent : LayerManagerEvent_Access;
      deleteLayerManagerEvent : LayerManagerEvent_Access;
      basicLayerProcessorArray : LayerProcessor_Access_Array_Access;
   end record;

   procedure Initialize (This : in out AllBinaryLayerManager'Class);
   function Create return AllBinaryLayerManager_Access;
   function getLayerProcessorArray (This : in out AllBinaryLayerManager) return LayerProcessor_Access_Array_Access;
   procedure getLayerProcessorArray (This : in out AllBinaryLayerManager);
   procedure setLayerProcessorArray (This : in out AllBinaryLayerManager; layerProcessorArray : LayerProcessor_Access_Array_Access);
   procedure log (This : in out AllBinaryLayerManager);
   procedure append (This : in out AllBinaryLayerManager; layerInterface : AllBinaryLayer_Access);
   procedure appendAt (This : in out AllBinaryLayerManager; layerInterface : AllBinaryLayer_Access; index : Integer);
   procedure appendProcessors (This : in out AllBinaryLayerManager; layerInterface : AllBinaryLayer_Access);
   procedure remove (This : in out AllBinaryLayerManager; layerInterface : AllBinaryLayer_Access);
   procedure process (This : in out AllBinaryLayerManager);
   procedure cleanup (This : in out AllBinaryLayerManager);

end org.allbinary.layer.AllBinaryLayerManager_Package;


