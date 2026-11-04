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

limited with org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;
package org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References is
   type MiniMapLayer_Access is access all org.allbinary.game.layer.geographic.map.MiniMapLayer_Package.MiniMapLayer'Class;
   type MiniMapLayer_Access_Array is array (Natural range <>) of MiniMapLayer_Access;
   type MiniMapLayer_Access_Array_Access is access all MiniMapLayer_Access_Array;
   type MiniMapLayer_Access_Array_Access_Array is array (Natural range <>) of MiniMapLayer_Access_Array_Access;
   type MiniMapLayer_Access_Array_Access_Array_Access is access all MiniMapLayer_Access_Array_Access_Array;
end org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References;

with org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.animation.vector.CircleFilledAnimation_Package;
with org.allbinary.animation.vector.CircleFilledAnimation_Package_References;
limited with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References;
limited with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;

package org.allbinary.game.layer.geographic.map.MiniMapLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CircleFilledAnimation_Package renames Standard.org.allbinary.animation.vector.CircleFilledAnimation_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package GeographicMapCellPositionEvent_Package renames Standard.org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
   package GeographicMapCellPositionEventListenerInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
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
   subtype CircleFilledAnimation_Access is org.allbinary.animation.vector.CircleFilledAnimation_Package_References.CircleFilledAnimation_Access;
   use type CircleFilledAnimation_Access;
   subtype CircleFilledAnimation_Access_Array is org.allbinary.animation.vector.CircleFilledAnimation_Package_References.CircleFilledAnimation_Access_Array;
   use type CircleFilledAnimation_Access_Array;
   subtype CircleFilledAnimation_Access_Array_Access is org.allbinary.animation.vector.CircleFilledAnimation_Package_References.CircleFilledAnimation_Access_Array_Access;
   use type CircleFilledAnimation_Access_Array_Access;
   subtype CircleFilledAnimation_Access_Array_Access_Array is org.allbinary.animation.vector.CircleFilledAnimation_Package_References.CircleFilledAnimation_Access_Array_Access_Array;
   use type CircleFilledAnimation_Access_Array_Access_Array;
   subtype CircleFilledAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.vector.CircleFilledAnimation_Package_References.CircleFilledAnimation_Access_Array_Access_Array_Access;
   use type CircleFilledAnimation_Access_Array_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   use type AllBinaryTiledLayer_Access;
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   use type AllBinaryTiledLayer_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   use type AllBinaryTiledLayer_Access_Array_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype BasicGeographicMapCellPositionFactory_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access;
   use type BasicGeographicMapCellPositionFactory_Access;
   subtype BasicGeographicMapCellPositionFactory_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array;
   use type BasicGeographicMapCellPositionFactory_Access_Array;
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access;
   use type BasicGeographicMapCellPositionFactory_Access_Array_Access;
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access_Array;
   use type BasicGeographicMapCellPositionFactory_Access_Array_Access_Array;
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   use type BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPositionEvent_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access;
   use type GeographicMapCellPositionEvent_Access;
   subtype GeographicMapCellPositionEvent_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array;
   use type GeographicMapCellPositionEvent_Access_Array;
   subtype GeographicMapCellPositionEvent_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access;
   use type GeographicMapCellPositionEvent_Access_Array_Access;
   subtype GeographicMapCellPositionEvent_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access_Array;
   use type GeographicMapCellPositionEvent_Access_Array_Access_Array;
   subtype GeographicMapCellPositionEvent_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionEvent_Access_Array_Access_Array_Access;
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   use type ViewPositionBase_Access;
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   use type ViewPositionBase_Access_Array;
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access;
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   use type ViewPositionBase_Access_Array_Access_Array;
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MiniMapLayer_Access is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access;
   function "=" (Left, Right : MiniMapLayer_Access) return Boolean renames org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References."=";
   subtype MiniMapLayer_Access_Array is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access_Array;
   function "=" (Left, Right : MiniMapLayer_Access_Array) return Boolean renames org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References."=";
   subtype MiniMapLayer_Access_Array_Access is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access_Array_Access;
   function "=" (Left, Right : MiniMapLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References."=";
   subtype MiniMapLayer_Access_Array_Access_Array is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access_Array_Access_Array;
   function "=" (Left, Right : MiniMapLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References."=";
   subtype MiniMapLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MiniMapLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References."=";

   type MiniMapLayer is new AllBinaryLayer and GeographicMapCellPositionEventListenerInterface with record
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      list : BasicArrayList_Access;
      basicColorList : BasicArrayList_Access;
      positionList : BasicArrayList_Access;
      animationInterface : CircleFilledAnimation_Access;
   end record;

   procedure Initialize (This : in out MiniMapLayer'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class);
   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return MiniMapLayer_Access;
   procedure init (This : in out MiniMapLayer);
   procedure onEvent (This : in out MiniMapLayer; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onRemoveGeographicMapCellPositionEvent (This : in out MiniMapLayer; geographicMapCellPositionEvent_Param : access GeographicMapCellPositionEvent_Package.GeographicMapCellPositionEvent'Class);
   procedure onGeographicMapCellPositionEvent (This : in out MiniMapLayer; geographicMapCellPositionEvent_Param : access GeographicMapCellPositionEvent_Package.GeographicMapCellPositionEvent'Class);
   procedure paintDots (This : in out MiniMapLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out MiniMapLayer; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;


