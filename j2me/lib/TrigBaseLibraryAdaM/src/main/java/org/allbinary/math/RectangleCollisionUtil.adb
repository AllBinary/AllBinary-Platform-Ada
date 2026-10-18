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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;

package body org.allbinary.math.RectangleCollisionUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   procedure Initialize_Fields (This : in out RectangleCollisionUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return RectangleCollisionUtil_Access is
   begin
        return RectangleCollisionUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out RectangleCollisionUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RectangleCollisionUtil_Access is
      This : constant RectangleCollisionUtil_Access := new RectangleCollisionUtil;
   begin
      RectangleCollisionUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isCollision (This : in out RectangleCollisionUtil; rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer) return Boolean is
   begin
        if ((((rect2X1) >= (rectX2)) or else ((rect2Y1) >= (rectY2))) or else ((rect2X2) <= (rectX1))) or else ((rect2Y2) <= (rectY1)) then
            return False;
        else
            return True;
        end if;
   end isCollision;

   function isInside (This : in out RectangleCollisionUtil; rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; x : Integer; y : Integer) return Boolean is
   begin
        if ((((x) >= (rectX2)) or else ((y) >= (rectY2))) or else ((x) <= (rectX1))) or else ((y) <= (rectY1)) then
            return False;
        else
            return True;
        end if;
   end isInside;

   procedure isCollision (This : in out RectangleCollisionUtil; rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer) is
      Java_Result : constant Boolean := RectangleCollisionUtil'Class (This).isCollision (rectX1 => rectX1, rectY1 => rectY1, rectX2 => rectX2, rectY2 => rectY2, rect2X1 => rect2X1, rect2Y1 => rect2Y1, rect2X2 => rect2X2, rect2Y2 => rect2Y2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

   procedure isInside (This : in out RectangleCollisionUtil; rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; x : Integer; y : Integer) is
      Java_Result : constant Boolean := RectangleCollisionUtil'Class (This).isInside (rectX1 => rectX1, rectY1 => rectY1, rectX2 => rectX2, rectY2 => rectY2, x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInside;

begin
   null;
   instance := RectangleCollisionUtil_Package.Create;

end org.allbinary.math.RectangleCollisionUtil_Package;


