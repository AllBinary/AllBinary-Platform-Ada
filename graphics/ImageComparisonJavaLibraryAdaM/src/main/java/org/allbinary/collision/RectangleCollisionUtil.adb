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


package body org.allbinary.collision.RectangleCollisionUtil_Package is

   procedure Initialize_Fields (This : in out RectangleCollisionUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RectangleCollisionUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RectangleCollisionUtil_Access is
      This : constant RectangleCollisionUtil_Access := new RectangleCollisionUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function isCollision (rectangle : Rectangle_Access; point : GPoint_Access) return Boolean is
   begin
        if ((((point.getX) > (((Integer (rectangle.x)) + (rectangle.getWidth)))) or else ((point.getY) > (((Integer (rectangle.y)) + (rectangle.getHeight))))) or else ((point.getX) < (rectangle.x))) or else ((point.getY) < (rectangle.y)) then
            return False;
        else
            return True;
        end if;
   end isCollision;

   function isCollision (rectangle1 : Rectangle_Access; rectangle2 : Rectangle_Access) return Boolean is
   begin
        return RectangleCollisionUtil_Package.isCollision (rectangle1.x, rectangle1.y, (rectangle1.x) + (rectangle1.width), (rectangle1.y) + (rectangle1.height), rectangle2.x, rectangle2.y, (rectangle2.x) + (rectangle2.width), (rectangle2.y) + (rectangle2.height));
   end isCollision;

   function isCollision (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer) return Boolean is
   begin
        if ((((rect2X1) >= (rectX2)) or else ((rect2Y1) >= (rectY2))) or else ((rect2X2) <= (rectX1))) or else ((rect2Y2) <= (rectY1)) then
            return False;
        else
            return True;
        end if;
   end isCollision;

   procedure isCollision (rectangle : Rectangle_Access; point : GPoint_Access) is
      Java_Result : constant Boolean := isCollision (rectangle, point);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

   procedure isCollision (rectangle1 : Rectangle_Access; rectangle2 : Rectangle_Access) is
      Java_Result : constant Boolean := isCollision (rectangle1, rectangle2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

   procedure isCollision (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer) is
      Java_Result : constant Boolean := isCollision (rectX1, rectY1, rectX2, rectY2, rect2X1, rect2Y1, rect2X2, rect2Y2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

end org.allbinary.collision.RectangleCollisionUtil_Package;


