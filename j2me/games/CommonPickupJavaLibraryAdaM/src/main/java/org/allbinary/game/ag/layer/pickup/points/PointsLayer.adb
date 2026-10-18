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


with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;

package body org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;
   procedure Initialize_Fields (This : in out PointsLayer'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PointsLayer'Class; points : Integer) is
   begin
        AllBinaryLayer_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING, Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, 0, 0), ViewPosition_Package.getInstanceD);
        Initialize_Fields (This);
        This.points := points;
   end Initialize;

   function Create (points : Integer) return PointsLayer_Access is
      This : constant PointsLayer_Access := new PointsLayer;
   begin
      PointsLayer_Package.Initialize (This.all, points);
      return This;
   end Create;

   procedure paint (This : in out PointsLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

   procedure visit (This : in out PointsLayer; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class) is
      scoreableInterface : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
   begin
        scoreableInterface.addPoints (This.points);
   end visit;

end org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package;


