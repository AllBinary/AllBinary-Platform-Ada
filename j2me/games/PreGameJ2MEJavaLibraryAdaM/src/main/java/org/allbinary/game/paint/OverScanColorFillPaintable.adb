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


   procedure Initialize (This : in out OverScanColorFillPaintable'Class; basicColor : BasicColor_Access) is
   begin
        ColorFillPaintable_Package.Initialize (This, basicColor);
   end Initialize;

   function Create (basicColor : BasicColor_Access) return OverScanColorFillPaintable_Access is
      This : constant OverScanColorFillPaintable_Access := new OverScanColorFillPaintable;
   begin
      Initialize (This.all, basicColor);
      return This;
   end Create;

   procedure paint (This : in out OverScanColorFillPaintable; graphics : Graphics_Access) is
   begin
        graphics.setColor (This.colorP);
        graphics.fillRect (-(graphics.getClipX), -(graphics.getClipY), (This.displayInfoSingleton.getLastWidth) + (((graphics.getClipX) * (2))), (This.displayInfoSingleton.getLastHeight) + (((graphics.getClipY) * (2))));
   end paint;

end org.allbinary.game.paint.OverScanColorFillPaintable_Package;


