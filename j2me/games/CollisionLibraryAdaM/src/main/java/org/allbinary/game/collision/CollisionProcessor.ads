--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.collision.CollisionProcessor_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type CollisionProcessor is tagged;
   type CollisionProcessor_Access is access all CollisionProcessor'Class;
   type CollisionProcessor_Access_Array is array (Natural range <>) of CollisionProcessor_Access;
   type CollisionProcessor_Access_Array_Access is access all CollisionProcessor_Access_Array;

   type CollisionProcessor is new Java_Object with null record;

   procedure Initialize (This : in out CollisionProcessor'Class);
   function Create return CollisionProcessor_Access;
   function isCollision (This : in out CollisionProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isCollision (This : in out CollisionProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.collision.CollisionProcessor_Package;


