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


package body org.allbinary.graphics.Line_Package is

   procedure Initialize_Fields (This : in out Line'Class) is
   begin
      null;
      
      
      This.deltaX := 0.0;
      This.deltaY := 0.0;
   end Initialize_Fields;


   procedure Initialize (This : in out Line'Class; p1_Param : access GPoint_Package.GPoint'Class; p2_Param : access GPoint_Package.GPoint'Class) is
      p1 : constant GPoint_Access := GPoint_Access (p1_Param);
      p2 : constant GPoint_Access := GPoint_Access (p2_Param);
   begin
      Initialize_Fields (This);
        This.p1 := PointFactory_Package.getInstance.ZERO_ZERO;
        This.p2 := This.p1;
        This.setP1 (p1);
        This.setP2 (p2);
   end Initialize;

   function Create (p1_Param : access GPoint_Package.GPoint'Class; p2_Param : access GPoint_Package.GPoint'Class) return Line_Access is
      This : constant Line_Access := new Line;
   begin
      Line_Package.Initialize (This.all, p1_Param, p2_Param);
      return This;
   end Create;

   function getGradient (This : in out Line) return Long_Float is
   begin
        return (This.getDeltaY) / (This.getDeltaX);
   end getGradient;

   procedure update (This : in out Line) is
   begin
        This.deltaX := (Long_Float (This.getP1.getX)) - (This.getP2.getX);
        This.deltaY := (Long_Float (This.getP1.getY)) - (This.getP2.getY);
   end update;

   function getDeltaX (This : in out Line) return Long_Float is
   begin
        return This.deltaX;
   end getDeltaX;

   function getDeltaY (This : in out Line) return Long_Float is
   begin
        return This.deltaY;
   end getDeltaY;

   function getP1 (This : in out Line) return GPoint_Access is
   begin
        return This.p1;
   end getP1;

   function getP2 (This : in out Line) return GPoint_Access is
   begin
        return This.p2;
   end getP2;

   procedure setP1 (This : in out Line; p1_Param : access GPoint_Package.GPoint'Class) is
      p1 : constant GPoint_Access := GPoint_Access (p1_Param);
   begin
        This.p1 := p1;
        This.update;
   end setP1;

   procedure setP2 (This : in out Line; p2_Param : access GPoint_Package.GPoint'Class) is
      p2 : constant GPoint_Access := GPoint_Access (p2_Param);
   begin
        This.p2 := p2;
        This.update;
   end setP2;

end org.allbinary.graphics.Line_Package;


