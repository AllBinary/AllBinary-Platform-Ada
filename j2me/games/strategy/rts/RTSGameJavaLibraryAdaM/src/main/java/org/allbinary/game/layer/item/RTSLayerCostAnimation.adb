-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;

package body org.allbinary.game.layer.item.RTSLayerCostAnimation_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   procedure Initialize_Fields (This : in out RTSLayerCostAnimation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.primitiveLongUtil := PrimitiveLongUtil_Package.createPowerOfTen (10000);
      This.DOLLAR := To_Unbounded_String ("$");
      
      
      This.myFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (RTSLayerCostAnimation_Access'(This'Unchecked_Access)));
      This.costString := NullUtil_Package.getInstance.NULL_CHAR_ARRAY;
      This.len := 0;
      This.adjustedCostX := 0;
      This.fontHeight := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out RTSLayerCostAnimation'Class; image_Param : access Image_Package.Image'Class; layerInterfaceFactoryInterface_Param : access CostLayerInterfaceFactoryInterface_Package.CostLayerInterfaceFactoryInterface'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      layerInterfaceFactoryInterface : constant CostLayerInterfaceFactoryInterface_Access := CostLayerInterfaceFactoryInterface_Access (layerInterfaceFactoryInterface_Param);
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.image := image;
        This.layerInterfaceFactoryInterface := layerInterfaceFactoryInterface;
        RTSLayerCostAnimation'Class (This).update;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; layerInterfaceFactoryInterface_Param : access CostLayerInterfaceFactoryInterface_Package.CostLayerInterfaceFactoryInterface'Class) return RTSLayerCostAnimation_Access is
      This : constant RTSLayerCostAnimation_Access := new RTSLayerCostAnimation;
   begin
      RTSLayerCostAnimation_Package.Initialize (This.all, image_Param, layerInterfaceFactoryInterface_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out RTSLayerCostAnimation; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.fontHeight := font.getHeight;
        This.adjustedCostX := font.stringWidth (This.DOLLAR);
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure onEvent (This : in out RTSLayerCostAnimation; event_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      event : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (event_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, RTSLayerCostAnimation_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onTechEvent (This : in out RTSLayerCostAnimation; event_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      event : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (event_Param);
      commonStrings : CommonStrings_Access;
   begin
        begin
            RTSLayerCostAnimation'Class (This).update;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, RTSLayerCostAnimation_Access'(This'Unchecked_Access), To_Unbounded_String ("onTechEvent"), e);
                end;
        end;
   end onTechEvent;

   --  throws Exception
   procedure update (This : in out RTSLayerCostAnimation) is
   begin
        This.len := 0;
        This.costString := This.primitiveLongUtil.getCharArray (This.layerInterfaceFactoryInterface.getCost);
        This.len := This.primitiveLongUtil.getCurrentTotalDigits;
   end update;

   procedure paintXY (This : in out RTSLayerCostAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      adjustedCostY : Integer;
      xa : Integer;
   begin
        This.myFontProcessor.process (graphics);
        Animation (This).paintXY (graphics, x, y);
        adjustedCostY := (This.image.getHeight) - (This.fontHeight);
        xa := (x) + (2);
        graphics.drawString (This.DOLLAR, xa, (y) + (adjustedCostY), 0);
        graphics.drawChars (This.costString, 0, This.len, (x) + (This.adjustedCostX), (y) + (adjustedCostY), 0);
   end paintXY;

end org.allbinary.game.layer.item.RTSLayerCostAnimation_Package;


