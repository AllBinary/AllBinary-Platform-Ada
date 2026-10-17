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


package body org.allbinary.game.paint.ColorFillPaintable_Package is

   procedure Initialize_Fields (This : in out ColorFillPaintable'Class) is
   begin
      null;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorFillPaintable'Class; basicColor : BasicColor_Access) is
   begin
        ColorFillBasePaintable_Package.Initialize (This, basicColor);
        Initialize_Fields (This);
   end Initialize;

   function Create (basicColor : BasicColor_Access) return ColorFillPaintable_Access is
      This : constant ColorFillPaintable_Access := new ColorFillPaintable;
   begin
      ColorFillPaintable_Package.Initialize (This.all, basicColor);
      return This;
   end Create;

   procedure paint (This : in out ColorFillPaintable; graphics : Graphics_Access) is
   begin
        graphics.setColor (This.colorP);
        graphics.fillRect (0, 0, This.displayInfoSingleton.getLastWidth, This.displayInfoSingleton.getLastHeight);
   end paint;

end org.allbinary.game.paint.ColorFillPaintable_Package;


