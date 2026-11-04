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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package; use org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References;
with org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package; use org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.layer.building.ProductivityNumberStringHud_Package; use org.allbinary.game.layer.building.ProductivityNumberStringHud_Package;
with org.allbinary.game.layer.building.EfficiencyNumberStringHud_Package; use org.allbinary.game.layer.building.EfficiencyNumberStringHud_Package;
with org.allbinary.game.layer.building.HealthNumberStringHud_Package; use org.allbinary.game.layer.building.HealthNumberStringHud_Package;
with org.allbinary.game.layer.building.MaxHealthNumberStringHud_Package; use org.allbinary.game.layer.building.MaxHealthNumberStringHud_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package; use org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;

package body org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package NumberStringHudFactory_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicHudFactory_Package renames Standard.org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype NumberStringHud_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access;
   function "=" (Left, Right : NumberStringHud_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype NumberStringHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array;
   function "=" (Left, Right : NumberStringHud_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype NumberStringHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array_Access;
   function "=" (Left, Right : NumberStringHud_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype NumberStringHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array_Access_Array;
   function "=" (Left, Right : NumberStringHud_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype NumberStringHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NumberStringHud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   procedure Initialize_Fields (This : in out BuildingInfoHudPaintable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.HEALTH := To_Unbounded_String ("Health:");
      
      
      
      
      This.rtsLayer := PathFindingLayerInterface_Access (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER);
      This.currentHealth := 0;
   end Initialize_Fields;


   function getInstance return BuildingInfoHudPaintable_Access is
   begin
        return BuildingInfoHudPaintable_Access (BuildingInfoHudPaintable_Package.instance);
   end getInstance;

   procedure Initialize (This : in out BuildingInfoHudPaintable'Class) is
      numberStringHudFactory : NumberStringHudFactory_Access;
      productivityHud : NumberStringHud_Access;
      efficiencyHud : NumberStringHud_Access;
      healthHud : NumberStringHud_Access;
      maxHealthHud : NumberStringHud_Access;
      index : Integer;
      basicHudFactory : BasicHudFactory_Access;
      basicColor : BasicColor_Access;
      textX : Integer;
      y : Integer;
      firstIndex : Integer;
      secondIndex : Integer;
      HEALTH : Unbounded_String;
      thirdIndex : Integer;
      totalLength : Integer;
      fourthIndex : Integer;
      commonStrings : CommonStrings_Access;
   begin
      SelectionHudPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        numberStringHudFactory := NumberStringHudFactory_Package.getInstance;
        productivityHud := NumberStringHud_Access (numberStringHudFactory.NULL_NUMBER_STRING_HUD);
        efficiencyHud := NumberStringHud_Access (numberStringHudFactory.NULL_NUMBER_STRING_HUD);
        healthHud := NumberStringHud_Access (numberStringHudFactory.NULL_NUMBER_STRING_HUD);
        maxHealthHud := NumberStringHud_Access (numberStringHudFactory.NULL_NUMBER_STRING_HUD);
        begin
            index := 0;
            basicHudFactory := BasicHudFactory_Package.getInstance;
            basicColor := BuildingInfoHudPaintable'Class (This).getBasicColorP;
            textX := This.textX;
            y := This.y;
            firstIndex := index;
            --  Java nested class ProductivityNumberStringHud: move it to its own package
            productivityHud := NumberStringHud_Access (ProductivityNumberStringHud_Package.Create);
            index := index + 1;
            secondIndex := index;
            --  Java nested class EfficiencyNumberStringHud: move it to its own package
            efficiencyHud := NumberStringHud_Access (EfficiencyNumberStringHud_Package.Create);
            index := index + 1;
            HEALTH := This.HEALTH;
            thirdIndex := index;
            --  Java nested class HealthNumberStringHud: move it to its own package
            totalLength := (Length (HEALTH)) + (1);
            healthHud := NumberStringHud_Access (HealthNumberStringHud_Package.Create);
            fourthIndex := index;
            --  Java nested class MaxHealthNumberStringHud: move it to its own package
            maxHealthHud := NumberStringHud_Access (MaxHealthNumberStringHud_Package.Create);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, BuildingInfoHudPaintable_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR, e);
                end;
        end;
        This.productivityHud := productivityHud;
        This.efficiencyHud := efficiencyHud;
        This.healthHud := healthHud;
        This.maxHealthHud := maxHealthHud;
   end Initialize;

   function Create return BuildingInfoHudPaintable_Access is
      This : constant BuildingInfoHudPaintable_Access := new BuildingInfoHudPaintable;
   begin
      BuildingInfoHudPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out BuildingInfoHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
      totalLength : Integer;
   begin
        font := graphics.getFont;
        totalLength := (Length (This.HEALTH)) + (MathUtil_Package.getInstance.getTotalDigits (This.currentHealth));
        This.maxHealthHud.setX ((This.textX) + (MyFontProcessor_Package.defaultStringWidth (font, totalLength)));
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure setBasicColorP (This : in out BuildingInfoHudPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        SelectionHudPaintable_Package.SelectionHudPaintable (This).setBasicColorP (basicColor);
        This.productivityHud.setBasicColorP (basicColor);
        This.efficiencyHud.setBasicColorP (basicColor);
        This.healthHud.setBasicColorP (basicColor);
        This.maxHealthHud.setBasicColorP (basicColor);
   end setBasicColorP;

   procedure paint (This : in out BuildingInfoHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        SelectionHudPaintable_Package.SelectionHudPaintable (This).paint (graphics);
        This.myFontProcessor.process (graphics);
        This.productivityHud.paint (graphics);
        This.efficiencyHud.paint (graphics);
        This.healthHud.paint (graphics);
        This.maxHealthHud.paint (graphics);
        BuildingInfoHudPaintable'Class (This).getAnimationInterface.paintXY (graphics, This.imageX, This.y);
   end paint;

   procedure updateSelectionInfo (This : in out BuildingInfoHudPaintable) is
      buildingLayer : BuildingLayer_Access;
   begin
        buildingLayer := BuildingLayer_Access (This.rtsLayer);
        BuildingInfoHudPaintable'Class (This).setName (buildingLayer.getName);
        BuildingInfoHudPaintable'Class (This).setAnimationInterface (buildingLayer.getVerticleBuildAnimationInterface);
        This.productivityHud.set (buildingLayer.getProductivity);
        This.efficiencyHud.set ((buildingLayer.getEfficiency) / (100));
        This.currentHealth := buildingLayer.getHealthInterface.getHealth;
        This.healthHud.set (This.currentHealth);
        This.myFontProcessor := This.updateMyFontProcessor;
        This.maxHealthHud.set (buildingLayer.getHealthInterface.getMaxHealth);
   end updateSelectionInfo;

   procedure setRtsLayer (This : in out BuildingInfoHudPaintable; rtsLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      rtsLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (rtsLayer_Param);
   begin
        This.rtsLayer := rtsLayer;
   end setRtsLayer;

begin
   null;
   instance := BuildingInfoHudPaintable_Package.Create;

end org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package;


