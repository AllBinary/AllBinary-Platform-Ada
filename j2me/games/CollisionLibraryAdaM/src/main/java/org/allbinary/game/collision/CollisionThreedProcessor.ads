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
with org.allbinary.game.collision.CollisionProcessor_Package; use org.allbinary.game.collision.CollisionProcessor_Package;

package org.allbinary.game.collision.CollisionThreedProcessor_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type CollisionThreedProcessor is tagged;
   type CollisionThreedProcessor_Access is access all CollisionThreedProcessor'Class;
   type CollisionThreedProcessor_Access_Array is array (Natural range <>) of CollisionThreedProcessor_Access;
   type CollisionThreedProcessor_Access_Array_Access is access all CollisionThreedProcessor_Access_Array;
   type CollisionThreedProcessor_Access_Array_Access_Array is array (Natural range <>) of CollisionThreedProcessor_Access_Array_Access;
   type CollisionThreedProcessor_Access_Array_Access_Array_Access is access all CollisionThreedProcessor_Access_Array_Access_Array;

   type CollisionThreedProcessor is new CollisionProcessor with null record;

   procedure Initialize (This : in out CollisionThreedProcessor'Class);
   function Create return CollisionThreedProcessor_Access;
   function isCollision (This : in out CollisionThreedProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isCollision (This : in out CollisionThreedProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.collision.CollisionThreedProcessor_Package;


