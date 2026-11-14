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

with AllBinary_Java;
limited with org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package;
package org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References is
   type AdvancedPlayerOwnedRTSLayers_Access is access all org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package.AdvancedPlayerOwnedRTSLayers'Class;
   type AdvancedPlayerOwnedRTSLayers_Access_Array is array (Natural range <>) of AdvancedPlayerOwnedRTSLayers_Access;
   type AdvancedPlayerOwnedRTSLayers_Access_Array_Access is access all AdvancedPlayerOwnedRTSLayers_Access_Array;
   type AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array is array (Natural range <>) of AdvancedPlayerOwnedRTSLayers_Access_Array_Access;
   type AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Access is access all AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array;
   type AdvancedPlayerOwnedRTSLayers_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvancedPlayerOwnedRTSLayers_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvancedPlayerOwnedRTSLayers_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvancedPlayerOwnedRTSLayers_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvancedPlayerOwnedRTSLayers_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvancedPlayerOwnedRTSLayers_Access_Array_Access is (if Value /= null and then Value.all in AdvancedPlayerOwnedRTSLayers_Access_Array_Object'Class then AdvancedPlayerOwnedRTSLayers_Access_Array_Object'Class (Value.all).Value else null);
   type AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Object'Class then AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References;

with org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References;
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
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package; use org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;
limited with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.game.layer.AllBinaryGameLayer_Package_References;

package org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package is

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
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   use type RTSLayer_Access;
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   use type RTSLayer_Access_Array;
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   use type RTSLayer_Access_Array_Access;
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   use type RTSLayer_Access_Array_Access_Array;
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   use type RTSLayer_Access_Array_Access_Array_Access;
   subtype AllBinaryGameLayer_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access;
   use type AllBinaryGameLayer_Access;
   subtype AllBinaryGameLayer_Access_Array is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array;
   use type AllBinaryGameLayer_Access_Array;
   subtype AllBinaryGameLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access;
   use type AllBinaryGameLayer_Access_Array_Access;
   subtype AllBinaryGameLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access_Array;
   use type AllBinaryGameLayer_Access_Array_Access_Array;
   subtype AllBinaryGameLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdvancedPlayerOwnedRTSLayers_Access is org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.AdvancedPlayerOwnedRTSLayers_Access;
   function "=" (Left, Right : AdvancedPlayerOwnedRTSLayers_Access) return Boolean renames org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References."=";
   subtype AdvancedPlayerOwnedRTSLayers_Access_Array is org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.AdvancedPlayerOwnedRTSLayers_Access_Array;
   function "=" (Left, Right : AdvancedPlayerOwnedRTSLayers_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References."=";
   subtype AdvancedPlayerOwnedRTSLayers_Access_Array_Access is org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.AdvancedPlayerOwnedRTSLayers_Access_Array_Access;
   function "=" (Left, Right : AdvancedPlayerOwnedRTSLayers_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References."=";
   function Java_Box (Value : AdvancedPlayerOwnedRTSLayers_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.Java_Box;
   function Java_Unbox_AdvancedPlayerOwnedRTSLayers_Access_Array (Value : access Java_Object'Class) return AdvancedPlayerOwnedRTSLayers_Access_Array_Access renames org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.Java_Unbox_AdvancedPlayerOwnedRTSLayers_Access_Array;
   subtype AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array is org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array;
   function "=" (Left, Right : AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References."=";
   subtype AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Access is org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References."=";
   function Java_Box (Value : AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.Java_Box;
   function Java_Unbox_AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Access renames org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.Java_Unbox_AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array;

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
   procedure addUnit (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure addWaypoint (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure addBase (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure addGarrison (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure addHouse (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure addLab (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure addFactory (This : in out AdvancedPlayerOwnedRTSLayers; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure removeUnit (This : in out AdvancedPlayerOwnedRTSLayers; gameLayer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);
   procedure removeWaypoint (This : in out AdvancedPlayerOwnedRTSLayers; gameLayer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);
   function getUnitsList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   function getWaypointsList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   function getBaseList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   function getGarrisonList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   function getHouseList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   function getLabList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   function getFactoryList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;
   function getTotalBuildings (This : in out AdvancedPlayerOwnedRTSLayers) return Integer;
   procedure removeBuilding (This : in out AdvancedPlayerOwnedRTSLayers; layerInterface_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);
   function toString (This : in out AdvancedPlayerOwnedRTSLayers) return Unbounded_String;
   function getBuildingList (This : in out AdvancedPlayerOwnedRTSLayers) return BasicArrayList_Access;

end org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package;


