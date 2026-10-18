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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.graphics.threed.SWTJOGLProcessor_Package; use org.allbinary.graphics.threed.SWTJOGLProcessor_Package;

package body org.allbinary.game.displayable.canvas.MyFormUtil_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package SWTJOGLProcessor_Package renames Standard.org.allbinary.graphics.threed.SWTJOGLProcessor_Package;
   procedure Initialize_Fields (This : in out MyFormUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.popupMenuRectangle := RectangleFactory_Package.SINGLETON;
   end Initialize_Fields;

   procedure Initialize (This : in out MyFormUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MyFormUtil_Access is
      This : constant MyFormUtil_Access := new MyFormUtil;
   begin
      MyFormUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MyFormUtil_Access is
   begin
        return MyFormUtil_Package.instance;
   end getInstance;

   procedure updateMeasurement (This : in out MyFormUtil; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
      displayInfo : DisplayInfoSingleton_Access;
      features : Features_Access;
      isOpenGL : Boolean;
      TOTAL_CHAR_WIDTH : Integer;
      width : Integer;
      pointFactory : PointFactory_Access;
   begin
        font := graphics.getFont;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        features := Features_Package.getInstance;
        isOpenGL := features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL);
        TOTAL_CHAR_WIDTH := (if (SWTJOGLProcessor_Package.getInstance.isJOGL) and then (isOpenGL) then 2 else 3);
        width := MyFontProcessor_Package.defaultStringWidth (font, TOTAL_CHAR_WIDTH);
        pointFactory := PointFactory_Package.getInstance;
        if (displayInfo.getLastHeight) < (320) then
            This.popupMenuRectangle := Rectangle_Package.Create (pointFactory.createXY (0, 25), width, (((font.getHeight) * (4))) + (2));
        else
            This.popupMenuRectangle := Rectangle_Package.Create (pointFactory.createXY (0, (displayInfo.getLastHalfHeight) - (70)), width, ((font.getHeight) * (5)));
        end if;
   end updateMeasurement;

   function getPopupMenuRectangle (This : in out MyFormUtil) return Rectangle_Access is
   begin
        return This.popupMenuRectangle;
   end getPopupMenuRectangle;

begin
   null;
   instance := MyFormUtil_Package.Create;

end org.allbinary.game.displayable.canvas.MyFormUtil_Package;


