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


   procedure Initialize (This : in out Line'Class; p1 : GPoint_Access; p2 : GPoint_Access) is
   begin
      Initialize_Fields (This);
        This.p1 := PointFactory_Package.getInstance.ZERO_ZERO;
        This.p2 := This.p1;
        This.setP1 (p1);
        This.setP2 (p2);
   end Initialize;

   function Create (p1 : GPoint_Access; p2 : GPoint_Access) return Line_Access is
      This : constant Line_Access := new Line;
   begin
      Initialize (This.all, p1, p2);
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

   procedure setP1 (This : in out Line; p1 : GPoint_Access) is
   begin
        This.p1 := p1;
        This.update;
   end setP1;

   procedure setP2 (This : in out Line; p2 : GPoint_Access) is
   begin
        This.p2 := p2;
        This.update;
   end setP2;

   procedure getGradient (This : in out Line) is
      Java_Result : constant Long_Float := Line'Class (This).getGradient;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGradient;

   procedure getDeltaX (This : in out Line) is
      Java_Result : constant Long_Float := Line'Class (This).getDeltaX;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDeltaX;

   procedure getDeltaY (This : in out Line) is
      Java_Result : constant Long_Float := Line'Class (This).getDeltaY;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDeltaY;

   procedure getP1 (This : in out Line) is
      Java_Result : constant GPoint_Access := Line'Class (This).getP1;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getP1;

   procedure getP2 (This : in out Line) is
      Java_Result : constant GPoint_Access := Line'Class (This).getP2;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getP2;

end org.allbinary.graphics.Line_Package;


