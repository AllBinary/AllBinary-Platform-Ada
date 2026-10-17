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


package body org.allbinary.game.layer.item.RTSLayerCostAnimation_Package is

   procedure Initialize_Fields (This : in out RTSLayerCostAnimation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.primitiveLongUtil := PrimitiveLongUtil_Package.createPowerOfTen (10000);
      This.DOLLAR := To_Unbounded_String ("$");
      
      
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.costString := NullUtil_Package.getInstance.NULL_CHAR_ARRAY;
      This.len := 0;
      This.adjustedCostX := 0;
      This.fontHeight := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out RTSLayerCostAnimation'Class; image : Image_Access; layerInterfaceFactoryInterface : CostLayerInterfaceFactoryInterface_Access) is
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.image := image;
        This.layerInterfaceFactoryInterface := layerInterfaceFactoryInterface;
        This.update;
   end Initialize;

   function Create (image : Image_Access; layerInterfaceFactoryInterface : CostLayerInterfaceFactoryInterface_Access) return RTSLayerCostAnimation_Access is
      This : constant RTSLayerCostAnimation_Access := new RTSLayerCostAnimation;
   begin
      Initialize (This.all, image, layerInterfaceFactoryInterface);
      return This;
   end Create;

   procedure updateMeasurement (This : in out RTSLayerCostAnimation; graphics : Graphics_Access) is
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.fontHeight := font.getHeight;
        This.adjustedCostX := font.stringWidth (This.DOLLAR);
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure onEvent (This : in out RTSLayerCostAnimation; event : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure onTechEvent (This : in out RTSLayerCostAnimation; event : AllBinaryEventObject_Access) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.update;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("onTechEvent"), e);
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

   procedure paintXY (This : in out RTSLayerCostAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
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


