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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.layer.LayerProcessorInterface_Package; use org.allbinary.layer.LayerProcessorInterface_Package;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.layer.LayerProcessor_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type LayerProcessor is tagged;
   type LayerProcessor_Access is access all LayerProcessor'Class;
   type LayerProcessor_Access_Array is array (Natural range <>) of LayerProcessor_Access;
   type LayerProcessor_Access_Array_Access is access all LayerProcessor_Access_Array;

   type LayerProcessor is new LayerProcessorInterface with record
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


