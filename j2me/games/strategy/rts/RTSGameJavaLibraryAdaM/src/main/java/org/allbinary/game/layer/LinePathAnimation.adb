-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.game.layer.LinePathAnimation_Package is

   procedure Initialize_Fields (This : in out LinePathAnimation'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LinePathAnimation'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LinePathAnimation_Access is
      This : constant LinePathAnimation_Access := new LinePathAnimation;
   begin
      LinePathAnimation_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LinePathAnimation_Access is
   begin
        return LinePathAnimation_Package.instance;
   end getInstance;

   procedure paint (This : in out LinePathAnimation; graphics_Param : access Graphics'Class; point_Param : access GPoint'Class; nextPoint_Param : access GPoint'Class; tiledLayer_Param : access Layer'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      point : GPoint_Access := GPoint_Access (point_Param);
      nextPoint : GPoint_Access := GPoint_Access (nextPoint_Param);
      tiledLayer : Layer_Access := Layer_Access (tiledLayer_Param);
   begin
        graphics.drawLine (nextPoint.getX, nextPoint.getY, point.getX, point.getY);
   end paint;

begin
   null;
   instance := LinePathAnimation_Package.Create;

end org.allbinary.game.layer.LinePathAnimation_Package;


