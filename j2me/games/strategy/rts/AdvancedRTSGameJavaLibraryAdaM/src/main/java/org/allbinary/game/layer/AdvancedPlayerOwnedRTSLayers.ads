-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package; use org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;

package org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type AdvancedPlayerOwnedRTSLayers is tagged;
   type AdvancedPlayerOwnedRTSLayers_Access is access all AdvancedPlayerOwnedRTSLayers'Class;
   type AdvancedPlayerOwnedRTSLayers_Access_Array is array (Natural range <>) of AdvancedPlayerOwnedRTSLayers_Access;
   type AdvancedPlayerOwnedRTSLayers_Access_Array_Access is access all AdvancedPlayerOwnedRTSLayers_Access_Array;

   type AdvancedPlayerOwnedRTSLayers is new PlayerOwnedRTSLayers with record
      unitsList : BasicArrayList_Access;
      waypointsList : BasicArrayList_Access;
      buildingList : BasicArrayList_Access;
      baseList : BasicArrayList_Access;
      garrisonList : BasicArrayList_Access;
      houseList : BasicArrayList_Access;
      labList : BasicArrayList_Access;
      factoryList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out AdvancedPlayerOwnedRTSLayers'Class);
   function Create return AdvancedPlayerOwnedRTSLayers_Access;
   procedure addUnit (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer : RTSLayer_Access);
   procedure addWaypoint (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer : RTSLayer_Access);
   procedure addBase (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer : RTSLayer_Access);
   procedure addGarrison (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer : RTSLayer_Access);
   procedure addHouse (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer : RTSLayer_Access);
   procedure addLab (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer : RTSLayer_Access);
   procedure addFactory (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer : RTSLayer_Access);
   procedure removeUnit (This : in out AdvancedPlayerOwnedRTSLayers; gameLayer : AllBinaryGameLayer_Access);
   procedure removeWaypoint (This : in out AdvancedPlayerOwnedRTSLayers; gameLayer : AllBinaryGameLayer_Access);
   function getUnitsList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   procedure getUnitsList (This : in out AdvancedPlayerOwnedRTSLayers);
   function getWaypointsList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   procedure getWaypointsList (This : in out AdvancedPlayerOwnedRTSLayers);
   function getBaseList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   procedure getBaseList (This : in out AdvancedPlayerOwnedRTSLayers);
   function getGarrisonList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   procedure getGarrisonList (This : in out AdvancedPlayerOwnedRTSLayers);
   function getHouseList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   procedure getHouseList (This : in out AdvancedPlayerOwnedRTSLayers);
   function getLabList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   procedure getLabList (This : in out AdvancedPlayerOwnedRTSLayers);
   function getFactoryList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   procedure getFactoryList (This : in out AdvancedPlayerOwnedRTSLayers);
   function getTotalBuildings (This : in out AdvancedPlayerOwnedRTSLayers) return Integer;
   procedure getTotalBuildings (This : in out AdvancedPlayerOwnedRTSLayers);
   procedure removeBuilding (This : in out AdvancedPlayerOwnedRTSLayers; layerInterface : AllBinaryGameLayer_Access);
   function toString (This : in out AdvancedPlayerOwnedRTSLayers) return Unbounded_String;
   procedure toString (This : in out AdvancedPlayerOwnedRTSLayers);
   function getBuildingList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   procedure getBuildingList (This : in out AdvancedPlayerOwnedRTSLayers);

end org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package;


