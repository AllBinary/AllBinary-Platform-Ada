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


package body org.allbinary.game.graphics.hud.HudGraphicsPosition_Package is

   procedure Initialize_Fields (This : in out HudGraphicsPosition'Class) is
   begin
      null;
      This.anchor := 0;
      This.point := PointFactory_Package.getInstance.ZERO_ZERO;
   end Initialize_Fields;


   procedure Initialize (This : in out HudGraphicsPosition'Class; point : GPoint_Access; anchor : Integer) is
   begin
      Initialize_Fields (This);
        This.setAnchor (anchor);
        This.setPoint (point);
   end Initialize;

   function Create (point : GPoint_Access; anchor : Integer) return HudGraphicsPosition_Access is
      This : constant HudGraphicsPosition_Access := new HudGraphicsPosition;
   begin
      HudGraphicsPosition_Package.Initialize (This.all, point, anchor);
      return This;
   end Create;

   function getAnchor (This : in out HudGraphicsPosition) return Integer is
   begin
        return This.anchor;
   end getAnchor;

   procedure setAnchor (This : in out HudGraphicsPosition; anchor : Integer) is
   begin
        This.anchor := anchor;
   end setAnchor;

   function getPoint (This : in out HudGraphicsPosition) return GPoint_Access is
   begin
        return This.point;
   end getPoint;

   procedure setPoint (This : in out HudGraphicsPosition; point : GPoint_Access) is
   begin
        This.point := point;
   end setPoint;

begin
   null;
   NULL_HUD_GRAPHICS_POSITION := HudGraphicsPosition_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, 9);

end org.allbinary.game.graphics.hud.HudGraphicsPosition_Package;


