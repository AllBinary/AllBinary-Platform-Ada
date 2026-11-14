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
limited with org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package;
package org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References is
   type BuildingInfoHudPaintable_Access is access all org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package.BuildingInfoHudPaintable'Class;
   type BuildingInfoHudPaintable_Access_Array is array (Natural range <>) of BuildingInfoHudPaintable_Access;
   type BuildingInfoHudPaintable_Access_Array_Access is access all BuildingInfoHudPaintable_Access_Array;
   type BuildingInfoHudPaintable_Access_Array_Access_Array is array (Natural range <>) of BuildingInfoHudPaintable_Access_Array_Access;
   type BuildingInfoHudPaintable_Access_Array_Access_Array_Access is access all BuildingInfoHudPaintable_Access_Array_Access_Array;
   type BuildingInfoHudPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BuildingInfoHudPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : BuildingInfoHudPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BuildingInfoHudPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BuildingInfoHudPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BuildingInfoHudPaintable_Access_Array_Access is (if Value /= null and then Value.all in BuildingInfoHudPaintable_Access_Array_Object'Class then BuildingInfoHudPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type BuildingInfoHudPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BuildingInfoHudPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BuildingInfoHudPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BuildingInfoHudPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BuildingInfoHudPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BuildingInfoHudPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BuildingInfoHudPaintable_Access_Array_Access_Array_Object'Class then BuildingInfoHudPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References;

with org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References;
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
with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package; use org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package NumberStringHud_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
   package SelectionHudPaintable_Package renames Standard.org.allbinary.game.layer.SelectionHudPaintable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   use type PathFindingLayerInterface_Access;
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   use type PathFindingLayerInterface_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access;
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   use type PathFindingLayerInterface_Access_Array_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BuildingInfoHudPaintable_Access is org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References.BuildingInfoHudPaintable_Access;
   function "=" (Left, Right : BuildingInfoHudPaintable_Access) return Boolean renames org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References."=";
   subtype BuildingInfoHudPaintable_Access_Array is org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References.BuildingInfoHudPaintable_Access_Array;
   function "=" (Left, Right : BuildingInfoHudPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References."=";
   subtype BuildingInfoHudPaintable_Access_Array_Access is org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References.BuildingInfoHudPaintable_Access_Array_Access;
   function "=" (Left, Right : BuildingInfoHudPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References."=";
   function Java_Box (Value : BuildingInfoHudPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References.Java_Box;
   function Java_Unbox_BuildingInfoHudPaintable_Access_Array (Value : access Java_Object'Class) return BuildingInfoHudPaintable_Access_Array_Access renames org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References.Java_Unbox_BuildingInfoHudPaintable_Access_Array;
   subtype BuildingInfoHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References.BuildingInfoHudPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : BuildingInfoHudPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References."=";
   subtype BuildingInfoHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References.BuildingInfoHudPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BuildingInfoHudPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References."=";
   function Java_Box (Value : BuildingInfoHudPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References.Java_Box;
   function Java_Unbox_BuildingInfoHudPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return BuildingInfoHudPaintable_Access_Array_Access_Array_Access renames org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package_References.Java_Unbox_BuildingInfoHudPaintable_Access_Array_Access_Array;

   type BuildingInfoHudPaintable is new SelectionHudPaintable with record
      logUtil : LogUtil_Access;
      HEALTH : Unbounded_String;
      productivityHud : NumberStringHud_Access;
      efficiencyHud : NumberStringHud_Access;
      healthHud : NumberStringHud_Access;
      maxHealthHud : NumberStringHud_Access;
      rtsLayer : PathFindingLayerInterface_Access;
      currentHealth : Integer;
   end record;
   instance : BuildingInfoHudPaintable_Access;

   procedure Initialize (This : in out BuildingInfoHudPaintable'Class);
   function Create return BuildingInfoHudPaintable_Access;
   function getInstance return BuildingInfoHudPaintable_Access;
   procedure updateMeasurement (This : in out BuildingInfoHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setBasicColorP (This : in out BuildingInfoHudPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure paint (This : in out BuildingInfoHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure updateSelectionInfo (This : in out BuildingInfoHudPaintable);
   procedure setRtsLayer (This : in out BuildingInfoHudPaintable; rtsLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);

end org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package;


