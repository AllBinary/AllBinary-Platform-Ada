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

limited with org.allbinary.collision.RectangleCollisionUtil_Package;
package org.allbinary.collision.RectangleCollisionUtil_Package_References is
   type RectangleCollisionUtil_Access is access all org.allbinary.collision.RectangleCollisionUtil_Package.RectangleCollisionUtil'Class;
   type RectangleCollisionUtil_Access_Array is array (Natural range <>) of RectangleCollisionUtil_Access;
   type RectangleCollisionUtil_Access_Array_Access is access all RectangleCollisionUtil_Access_Array;
   type RectangleCollisionUtil_Access_Array_Access_Array is array (Natural range <>) of RectangleCollisionUtil_Access_Array_Access;
   type RectangleCollisionUtil_Access_Array_Access_Array_Access is access all RectangleCollisionUtil_Access_Array_Access_Array;
end org.allbinary.collision.RectangleCollisionUtil_Package_References;

with org.allbinary.collision.RectangleCollisionUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.collision.Rectangle_Package;
with org.allbinary.collision.Rectangle_Package_References;

package org.allbinary.collision.RectangleCollisionUtil_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.collision.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.collision.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.collision.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.collision.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.collision.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RectangleCollisionUtil_Access is org.allbinary.collision.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access) return Boolean renames org.allbinary.collision.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array is org.allbinary.collision.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array) return Boolean renames org.allbinary.collision.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access is org.allbinary.collision.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access) return Boolean renames org.allbinary.collision.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access_Array is org.allbinary.collision.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.collision.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access_Array_Access is org.allbinary.collision.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.collision.RectangleCollisionUtil_Package_References."=";

   type RectangleCollisionUtil is new Java_Object with null record;

   procedure Initialize (This : in out RectangleCollisionUtil'Class);
   function Create return RectangleCollisionUtil_Access;
   function isCollision (rectangle_Param : access Rectangle_Package.Rectangle'Class; point_Param : access GPoint_Package.GPoint'Class) return Boolean;
   procedure isCollision (rectangle_Param : access Rectangle_Package.Rectangle'Class; point_Param : access GPoint_Package.GPoint'Class);
   function isCollision (rectangle1_Param : access Rectangle_Package.Rectangle'Class; rectangle2_Param : access Rectangle_Package.Rectangle'Class) return Boolean;
   procedure isCollision (rectangle1_Param : access Rectangle_Package.Rectangle'Class; rectangle2_Param : access Rectangle_Package.Rectangle'Class);
   function isCollision (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer) return Boolean;
   procedure isCollision (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer);

end org.allbinary.collision.RectangleCollisionUtil_Package;


