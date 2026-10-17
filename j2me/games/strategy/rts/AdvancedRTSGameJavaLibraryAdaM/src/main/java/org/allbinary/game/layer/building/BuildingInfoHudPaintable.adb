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


package body org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package is

   procedure Initialize_Fields (This : in out BuildingInfoHudPaintable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.HEALTH := To_Unbounded_String ("Health:");
      
      
      
      
      This.rtsLayer := NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER;
      This.currentHealth := 0;
   end Initialize_Fields;


   function getInstance return BuildingInfoHudPaintable_Access is
   begin
        return BuildingInfoHudPaintable_Package.instance;
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
        productivityHud := numberStringHudFactory.NULL_NUMBER_STRING_HUD;
        efficiencyHud := numberStringHudFactory.NULL_NUMBER_STRING_HUD;
        healthHud := numberStringHudFactory.NULL_NUMBER_STRING_HUD;
        maxHealthHud := numberStringHudFactory.NULL_NUMBER_STRING_HUD;
        begin
            index := 0;
            basicHudFactory := BasicHudFactory_Package.getInstance;
            basicColor := This.getBasicColorP;
            textX := This.textX;
            y := This.y;
            firstIndex := index;
            --  Java nested class ProductivityNumberStringHud: move it to its own package
            productivityHud := ProductivityNumberStringHud_Package.Create;
            index := index + 1;
            secondIndex := index;
            --  Java nested class EfficiencyNumberStringHud: move it to its own package
            efficiencyHud := EfficiencyNumberStringHud_Package.Create;
            index := index + 1;
            HEALTH := This.HEALTH;
            thirdIndex := index;
            --  Java nested class HealthNumberStringHud: move it to its own package
            totalLength := (Length (HEALTH)) + (1);
            healthHud := HealthNumberStringHud_Package.Create;
            fourthIndex := index;
            --  Java nested class MaxHealthNumberStringHud: move it to its own package
            maxHealthHud := MaxHealthNumberStringHud_Package.Create;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.CONSTRUCTOR, e);
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

   procedure updateMeasurement (This : in out BuildingInfoHudPaintable; graphics : Graphics_Access) is
      font : Font_Access;
      totalLength : Integer;
   begin
        font := graphics.getFont;
        totalLength := (Length (This.HEALTH)) + (MathUtil_Package.getInstance.getTotalDigits (This.currentHealth));
        This.maxHealthHud.setX ((This.textX) + (MyFontProcessor_Package.defaultStringWidth (font, totalLength)));
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure setBasicColorP (This : in out BuildingInfoHudPaintable; basicColor : BasicColor_Access) is
   begin
        SelectionHudPaintable (This).setBasicColorP (basicColor);
        This.productivityHud.setBasicColorP (basicColor);
        This.efficiencyHud.setBasicColorP (basicColor);
        This.healthHud.setBasicColorP (basicColor);
        This.maxHealthHud.setBasicColorP (basicColor);
   end setBasicColorP;

   procedure paint (This : in out BuildingInfoHudPaintable; graphics : Graphics_Access) is
   begin
        SelectionHudPaintable (This).paint (graphics);
        This.myFontProcessor.process (graphics);
        This.productivityHud.paint (graphics);
        This.efficiencyHud.paint (graphics);
        This.healthHud.paint (graphics);
        This.maxHealthHud.paint (graphics);
        This.getAnimationInterface.paintXY (graphics, This.imageX, This.y);
   end paint;

   procedure updateSelectionInfo (This : in out BuildingInfoHudPaintable) is
      buildingLayer : BuildingLayer_Access;
   begin
        buildingLayer := BuildingLayer_Access (This.rtsLayer);
        This.setName (buildingLayer.getName);
        This.setAnimationInterface (buildingLayer.getVerticleBuildAnimationInterface);
        This.productivityHud.set (buildingLayer.getProductivity);
        This.efficiencyHud.set ((buildingLayer.getEfficiency) / (100));
        This.currentHealth := buildingLayer.getHealthInterface.getHealth;
        This.healthHud.set (This.currentHealth);
        This.myFontProcessor := This.updateMyFontProcessor;
        This.maxHealthHud.set (buildingLayer.getHealthInterface.getMaxHealth);
   end updateSelectionInfo;

   procedure setRtsLayer (This : in out BuildingInfoHudPaintable; rtsLayer : PathFindingLayerInterface_Access) is
   begin
        This.rtsLayer := rtsLayer;
   end setRtsLayer;

begin
   null;
   instance := BuildingInfoHudPaintable_Package.Create;

end org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package;


