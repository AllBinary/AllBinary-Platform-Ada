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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.health.Health_Package; use org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.Health_Package_References;
with org.allbinary.game.health.HealthBarAnimation_Package; use org.allbinary.game.health.HealthBarAnimation_Package;
with org.allbinary.game.health.HealthBarAnimation_Package_References;
with org.allbinary.game.health.HealthBarTwodAnimation_Package; use org.allbinary.game.health.HealthBarTwodAnimation_Package;
with org.allbinary.game.health.HealthInterface_Package; use org.allbinary.game.health.HealthInterface_Package;
with org.allbinary.game.health.HealthInterface_Package_References;
with org.allbinary.game.health.HealthListenerInterface_Package; use org.allbinary.game.health.HealthListenerInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.game.ag.life.Life_Package; use org.allbinary.game.ag.life.Life_Package;
with org.allbinary.game.ag.life.Life_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.game.ag.life.Life_Package;
with org.allbinary.game.ag.life.LifeInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.ag.life.HealthIncludingLifeBar_Package is

   package HealthBarTwodAnimation_Package renames Standard.org.allbinary.game.health.HealthBarTwodAnimation_Package;
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
   subtype Health_Access is org.allbinary.game.health.Health_Package_References.Health_Access;
   function "=" (Left, Right : Health_Access) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array;
   function "=" (Left, Right : Health_Access_Array) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access;
   function "=" (Left, Right : Health_Access_Array_Access) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array;
   function "=" (Left, Right : Health_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Health_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype HealthBarAnimation_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access;
   function "=" (Left, Right : HealthBarAnimation_Access) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthBarAnimation_Access_Array is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array;
   function "=" (Left, Right : HealthBarAnimation_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthBarAnimation_Access_Array_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access;
   function "=" (Left, Right : HealthBarAnimation_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthBarAnimation_Access_Array_Access_Array is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : HealthBarAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthBarAnimation_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthBarAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthInterface_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access;
   function "=" (Left, Right : HealthInterface_Access) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   subtype HealthInterface_Access_Array is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array;
   function "=" (Left, Right : HealthInterface_Access_Array) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   subtype HealthInterface_Access_Array_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access;
   function "=" (Left, Right : HealthInterface_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   subtype HealthInterface_Access_Array_Access_Array is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HealthInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   subtype HealthInterface_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype Life_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access;
   function "=" (Left, Right : Life_Access) return Boolean renames org.allbinary.game.ag.life.Life_Package_References."=";
   subtype Life_Access_Array is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array;
   function "=" (Left, Right : Life_Access_Array) return Boolean renames org.allbinary.game.ag.life.Life_Package_References."=";
   subtype Life_Access_Array_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access;
   function "=" (Left, Right : Life_Access_Array_Access) return Boolean renames org.allbinary.game.ag.life.Life_Package_References."=";
   subtype Life_Access_Array_Access_Array is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access_Array;
   function "=" (Left, Right : Life_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.life.Life_Package_References."=";
   subtype Life_Access_Array_Access_Array_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Life_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.life.Life_Package_References."=";
   procedure Initialize_Fields (This : in out HealthIncludingLifeBar'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   --  throws Exception
   function createHealthIncludingLifeBar (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; life_Param : access Life_Package.Life'Class; healthInterface_Param : access Health_Package.Health'Class; location : Integer; direction : Integer) return HealthIncludingLifeBar_Access is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      life : constant Life_Access := Life_Access (life_Param);
      healthInterface : constant Health_Access := Health_Access (healthInterface_Param);
   begin
        return HealthIncludingLifeBar_Package.Create (layerInterface, life, healthInterface, HealthBarTwodAnimation_Package.Create (layerInterface, location), direction);
   end createHealthIncludingLifeBar;

   procedure Initialize (This : in out HealthIncludingLifeBar'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; life_Param : access Life_Package.Life'Class; healthInterface_Param : access Health_Package.Health'Class; animationInterface_Param : access HealthBarAnimation_Package.HealthBarAnimation'Class; direction : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      life : constant Life_Access := Life_Access (life_Param);
      healthInterface : constant Health_Access := Health_Access (healthInterface_Param);
      animationInterface : constant HealthBarAnimation_Access := HealthBarAnimation_Access (animationInterface_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.allbinaryLayer := layerInterface;
        This.animationInterface := animationInterface;
        This.life := life;
        This.healthInterface := HealthInterface_Access (healthInterface);
        This.healthInterface.addListener (HealthIncludingLifeBar_Access'(This'Unchecked_Access));
        HealthIncludingLifeBar'Class (This).onHealthChange;
   end Initialize;

   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; life_Param : access Life_Package.Life'Class; healthInterface_Param : access Health_Package.Health'Class; animationInterface_Param : access HealthBarAnimation_Package.HealthBarAnimation'Class; direction : Integer) return HealthIncludingLifeBar_Access is
      This : constant HealthIncludingLifeBar_Access := new HealthIncludingLifeBar;
   begin
      HealthIncludingLifeBar_Package.Initialize (This.all, layerInterface_Param, life_Param, healthInterface_Param, animationInterface_Param, direction);
      return This;
   end Create;

   procedure onHealthChange (This : in out HealthIncludingLifeBar) is
   begin
        This.animationInterface.onHealthChange ((((((This.healthInterface.getHealth) + (((This.healthInterface.getMaxHealth) * (This.life.get))))) * (This.allbinaryLayer.getWidth))) / (((This.healthInterface.getMaxHealth) + (((This.healthInterface.getMaxHealth) * (This.life.getStartLives))))));
   end onHealthChange;

   procedure paint (This : in out HealthIncludingLifeBar; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterface.paintXY (graphics, 0, 0);
   end paint;

   procedure paintThreed (This : in out HealthIncludingLifeBar; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterface.paintThreedXYZ (graphics, 0, 0, 0);
   end paintThreed;

   procedure createHealthIncludingLifeBar (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; life_Param : access Life_Package.Life'Class; healthInterface_Param : access Health_Package.Health'Class; location : Integer; direction : Integer) is
      Java_Result : constant HealthIncludingLifeBar_Access := createHealthIncludingLifeBar (layerInterface_Param => layerInterface_Param, life_Param => life_Param, healthInterface_Param => healthInterface_Param, location => location, direction => direction);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHealthIncludingLifeBar;

end org.allbinary.game.ag.life.HealthIncludingLifeBar_Package;


