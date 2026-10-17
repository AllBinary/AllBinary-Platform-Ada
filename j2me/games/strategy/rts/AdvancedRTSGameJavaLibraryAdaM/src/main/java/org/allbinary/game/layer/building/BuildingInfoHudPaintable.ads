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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package; use org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
with org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package; use org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package; use org.allbinary.game.layer.building.BuildingLayer_Package;

package org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package is

   package NumberStringHud_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
   package NumberStringHudFactory_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package;
   package SelectionHudPaintable_Package renames Standard.org.allbinary.game.layer.SelectionHudPaintable_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicHudFactory_Package renames Standard.org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;

   type BuildingInfoHudPaintable is tagged;
   type BuildingInfoHudPaintable_Access is access all BuildingInfoHudPaintable'Class;
   type BuildingInfoHudPaintable_Access_Array is array (Natural range <>) of BuildingInfoHudPaintable_Access;
   type BuildingInfoHudPaintable_Access_Array_Access is access all BuildingInfoHudPaintable_Access_Array;

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


