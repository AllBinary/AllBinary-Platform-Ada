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


package body org.allbinary.game.paint.OverScanColorFillPaintable_Package is

   procedure Initialize_Fields (This : in out OverScanColorFillPaintable'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out OverScanColorFillPaintable'Class; basicColor_Param : access BasicColor'Class) is
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        ColorFillPaintable_Package.Initialize (This, basicColor);
   end Initialize;

   function Create (basicColor_Param : access BasicColor'Class) return OverScanColorFillPaintable_Access is
      This : constant OverScanColorFillPaintable_Access := new OverScanColorFillPaintable;
   begin
      OverScanColorFillPaintable_Package.Initialize (This.all, basicColor_Param);
      return This;
   end Create;

   procedure paint (This : in out OverScanColorFillPaintable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.setColor (This.colorP);
        graphics.fillRect (-(graphics.getClipX), -(graphics.getClipY), (This.displayInfoSingleton.getLastWidth) + (((graphics.getClipX) * (2))), (This.displayInfoSingleton.getLastHeight) + (((graphics.getClipY) * (2))));
   end paint;

end org.allbinary.game.paint.OverScanColorFillPaintable_Package;


