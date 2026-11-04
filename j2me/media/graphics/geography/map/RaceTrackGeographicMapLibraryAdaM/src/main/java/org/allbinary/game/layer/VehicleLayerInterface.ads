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

limited with org.allbinary.game.layer.VehicleLayerInterface_Package;
package org.allbinary.game.layer.VehicleLayerInterface_Package_References is
   type VehicleLayerInterface_Access is access all org.allbinary.game.layer.VehicleLayerInterface_Package.VehicleLayerInterface'Class;
   type VehicleLayerInterface_Access_Array is array (Natural range <>) of VehicleLayerInterface_Access;
   type VehicleLayerInterface_Access_Array_Access is access all VehicleLayerInterface_Access_Array;
   type VehicleLayerInterface_Access_Array_Access_Array is array (Natural range <>) of VehicleLayerInterface_Access_Array_Access;
   type VehicleLayerInterface_Access_Array_Access_Array_Access is access all VehicleLayerInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.VehicleLayerInterface_Package_References;

with org.allbinary.game.layer.VehicleLayerInterface_Package_References;
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
limited with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package_References;
with org.allbinary.layer.LayerInterface_Package; use org.allbinary.layer.LayerInterface_Package;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References;
with org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package; use org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package;

package org.allbinary.game.layer.VehicleLayerInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package LayerInterface_Package renames Standard.org.allbinary.layer.LayerInterface_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPositionTracking_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
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
   subtype RotationAnimation_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access;
   use type RotationAnimation_Access;
   subtype RotationAnimation_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array;
   use type RotationAnimation_Access_Array;
   subtype RotationAnimation_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access;
   use type RotationAnimation_Access_Array_Access;
   subtype RotationAnimation_Access_Array_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array;
   use type RotationAnimation_Access_Array_Access_Array;
   subtype RotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array_Access;
   use type RotationAnimation_Access_Array_Access_Array_Access;
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   use type BasicDecimal_Access;
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   use type BasicDecimal_Access_Array;
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access;
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   use type BasicDecimal_Access_Array_Access_Array;
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access_Array_Access;
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   use type GeographicMapCellHistory_Access;
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   use type GeographicMapCellHistory_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access;
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   use type GeographicMapCellHistory_Access_Array_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPositionTracking_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access;
   use type GeographicMapCellPositionTracking_Access;
   subtype GeographicMapCellPositionTracking_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array;
   use type GeographicMapCellPositionTracking_Access_Array;
   subtype GeographicMapCellPositionTracking_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access;
   use type GeographicMapCellPositionTracking_Access_Array_Access;
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array;
   use type GeographicMapCellPositionTracking_Access_Array_Access_Array;
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionTracking_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type VehicleLayerInterface is interface and LayerInterface and VehiclePropertiesCompositeInterface;
   subtype VehicleLayerInterface_Access is org.allbinary.game.layer.VehicleLayerInterface_Package_References.VehicleLayerInterface_Access;
   function "=" (Left, Right : VehicleLayerInterface_Access) return Boolean renames org.allbinary.game.layer.VehicleLayerInterface_Package_References."=";
   subtype VehicleLayerInterface_Access_Array is org.allbinary.game.layer.VehicleLayerInterface_Package_References.VehicleLayerInterface_Access_Array;
   function "=" (Left, Right : VehicleLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.VehicleLayerInterface_Package_References."=";
   subtype VehicleLayerInterface_Access_Array_Access is org.allbinary.game.layer.VehicleLayerInterface_Package_References.VehicleLayerInterface_Access_Array_Access;
   function "=" (Left, Right : VehicleLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.VehicleLayerInterface_Package_References."=";
   subtype VehicleLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.VehicleLayerInterface_Package_References.VehicleLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VehicleLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.VehicleLayerInterface_Package_References."=";
   subtype VehicleLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.VehicleLayerInterface_Package_References.VehicleLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VehicleLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.VehicleLayerInterface_Package_References."=";
   function Java_Object_Access_From_VehicleLayerInterface (Value : VehicleLayerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getGameKeyEventList (This : in out VehicleLayerInterface) return BasicArrayList_Access is abstract;
   function getSpeedBasicDecimal (This : in out VehicleLayerInterface) return BasicDecimal_Access is abstract;
   function isReadyForExplosion (This : in out VehicleLayerInterface) return Boolean is abstract;
   function getRotationAnimationInterface (This : in out VehicleLayerInterface) return RotationAnimation_Access is abstract;
   procedure setRotationAnimationInterface (This : in out VehicleLayerInterface; animationInterface_Param : access RotationAnimation_Package.RotationAnimation'Class) is abstract;
   function isDestroyed (This : in out VehicleLayerInterface) return Boolean is abstract;
   function isFinish (This : in out VehicleLayerInterface) return Boolean is abstract;
   function getFinalPosition (This : in out VehicleLayerInterface) return Integer is abstract;
   procedure handleFinish (This : in out VehicleLayerInterface) is abstract;
   function getGeographicMapCellPositionTracking (This : in out VehicleLayerInterface) return GeographicMapCellPositionTracking_Access is abstract;
   function getGeographicMapCellHistoryArray (This : in out VehicleLayerInterface) return GeographicMapCellHistory_Access_Array_Access is abstract;
   procedure setGeographicMapCellHistoryArray (This : in out VehicleLayerInterface; geographicMapCellHistory : GeographicMapCellHistory_Access_Array_Access) is abstract;

end org.allbinary.game.layer.VehicleLayerInterface_Package;


