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


package body org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package is

   procedure Initialize_Fields (This : in out TechnologyRTSInterfaceImageItem'Class) is
   begin
      null;
      
      This.primitiveLongUtil := PrimitiveLongUtil_Package.createPowerOfTen (10000);
      This.LEVEL := To_Unbounded_String ("Level");
      This.COST := To_Unbounded_String ("Cost");
      This.DOLLAR := To_Unbounded_String ("$");
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (TechnologyRTSInterfaceImageItem_Access'(This'Unchecked_Access));
      This.costString := CharArrayFactory_Package.getInstance.getZeroCharArray;
      This.costLength := 0;
      This.levelString := CharArrayFactory_Package.getInstance.getZeroCharArray;
      This.levelLength := 0;
      This.adjustedCostLabelY := 0;
      This.adjustedCostX := 0;
      This.adjustedCostY := 0;
      This.adjustedLevelX := 0;
      This.adjustedLevelY := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out TechnologyRTSInterfaceImageItem'Class; label : Unbounded_String; img_Param : access Image'Class; layout : Integer; altText : Unbounded_String; basicColor_Param : access BasicColor'Class; rtsInterface_Param : access RTSInterface'Class) is
      img : Image_Access := Image_Access (img_Param);
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
      rtsInterface : RTSInterface_Access := RTSInterface_Access (rtsInterface_Param);
   begin
        ABCustomImageItem_Package.Initialize (This, label, img, layout, altText, basicColor, 0);
        Initialize_Fields (This);
        This.rtsInterface := rtsInterface;
        This.update;
   end Initialize;

   function Create (label : Unbounded_String; img_Param : access Image'Class; layout : Integer; altText : Unbounded_String; basicColor_Param : access BasicColor'Class; rtsInterface_Param : access RTSInterface'Class) return TechnologyRTSInterfaceImageItem_Access is
      This : constant TechnologyRTSInterfaceImageItem_Access := new TechnologyRTSInterfaceImageItem;
   begin
      TechnologyRTSInterfaceImageItem_Package.Initialize (This.all, label, img_Param, layout, altText, basicColor_Param, rtsInterface_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out TechnologyRTSInterfaceImageItem; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
      fontHeight : Integer;
      imageHeight : Integer;
      image : Image_Access;
   begin
        font := graphics.getFont;
        fontHeight := font.getHeight;
        imageHeight := 0;
        image := This.getImage;
        if (image) /= (NullImage_Package.NULL_IMAGE) then
            imageHeight := image.getHeight;
        end if;
        This.adjustedCostLabelY := ((-(This.yOffset)) + (imageHeight)) - (((3) * (fontHeight)));
        This.adjustedCostY := ((-(This.yOffset)) + (imageHeight)) - (((2) * (fontHeight)));
        This.adjustedCostX := (2) + (((Length (This.DOLLAR)) * (((fontHeight) - (1)))));
        This.adjustedLevelY := ((-(This.yOffset)) + (imageHeight)) - (fontHeight);
        This.adjustedLevelX := (2) + (((Length (This.LEVEL)) * (((fontHeight) - (1)))));
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   function getRtsInterface (This : in out TechnologyRTSInterfaceImageItem) return RTSInterface_Access is
   begin
        return This.rtsInterface;
   end getRtsInterface;

   procedure update (This : in out TechnologyRTSInterfaceImageItem) is
   begin
        This.costString := This.primitiveLongUtil.getCharArray (This.getRtsInterface.getUpgradeCost);
        This.levelString := This.primitiveLongUtil.getCharArray (This.getRtsInterface.getLevel);
   end update;

   procedure paintXY (This : in out TechnologyRTSInterfaceImageItem; graphics_Param : access Graphics'Class; x : Integer; y : Integer) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      xa : Integer;
   begin
        This.myFontProcessor.process (graphics);
        ABCustomImageItem (This).paintXY (graphics, x, y);
        xa := (x) + (2);
        graphics.drawString (This.COST, xa, (y) + (This.adjustedCostLabelY), 0);
        graphics.drawString (This.DOLLAR, xa, (y) + (This.adjustedCostY), 0);
        graphics.drawChars (This.costString, 0, This.costLength, (x) + (This.adjustedCostX), (y) + (This.adjustedCostY), 0);
        graphics.drawString (This.LEVEL, xa, (y) + (This.adjustedLevelY), 0);
        graphics.drawChars (This.levelString, 0, This.levelLength, (x) + (This.adjustedLevelX), (y) + (This.adjustedLevelY), 0);
   end paintXY;

end org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package;


