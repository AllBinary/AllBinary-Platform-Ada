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

package org.allbinary.game.collision.Collision2DProcessor_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type Collision2DProcessor is tagged;
   type Collision2DProcessor_Access is access all Collision2DProcessor'Class;
   type Collision2DProcessor_Access_Array is array (Natural range <>) of Collision2DProcessor_Access;
   type Collision2DProcessor_Access_Array_Access is access all Collision2DProcessor_Access_Array;

   type Collision2DProcessor is new CollisionProcessor with null record;

   procedure Initialize (This : in out Collision2DProcessor'Class);
   function Create return Collision2DProcessor_Access;
   function isCollision (This : in out Collision2DProcessor; myLayer : AllBinaryLayer_Access; myLayer2 : AllBinaryLayer_Access) return Boolean;
   procedure isCollision (This : in out Collision2DProcessor; myLayer : AllBinaryLayer_Access; myLayer2 : AllBinaryLayer_Access);

end org.allbinary.game.collision.Collision2DProcessor_Package;


