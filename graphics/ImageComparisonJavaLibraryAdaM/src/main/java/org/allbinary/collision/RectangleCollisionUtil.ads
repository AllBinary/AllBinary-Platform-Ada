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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.collision.Rectangle_Package; use org.allbinary.collision.Rectangle_Package;

package org.allbinary.collision.RectangleCollisionUtil_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;

   type RectangleCollisionUtil is tagged;
   type RectangleCollisionUtil_Access is access all RectangleCollisionUtil'Class;
   type RectangleCollisionUtil_Access_Array is array (Natural range <>) of RectangleCollisionUtil_Access;
   type RectangleCollisionUtil_Access_Array_Access is access all RectangleCollisionUtil_Access_Array;

   type RectangleCollisionUtil is new Java_Object with null record;

   procedure Initialize (This : in out RectangleCollisionUtil'Class);
   function Create return RectangleCollisionUtil_Access;
   function isCollision (rectangle : Rectangle_Access; point : GPoint_Access) return Boolean;
   procedure isCollision (rectangle : Rectangle_Access; point : GPoint_Access);
   function isCollision (rectangle1 : Rectangle_Access; rectangle2 : Rectangle_Access) return Boolean;
   procedure isCollision (rectangle1 : Rectangle_Access; rectangle2 : Rectangle_Access);
   function isCollision (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer) return Boolean;
   procedure isCollision (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer);

end org.allbinary.collision.RectangleCollisionUtil_Package;


