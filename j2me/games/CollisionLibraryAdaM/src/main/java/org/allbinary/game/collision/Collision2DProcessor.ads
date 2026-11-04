--  Generated Code Do Not Modify

limited with org.allbinary.game.collision.Collision2DProcessor_Package;
package org.allbinary.game.collision.Collision2DProcessor_Package_References is
   type Collision2DProcessor_Access is access all org.allbinary.game.collision.Collision2DProcessor_Package.Collision2DProcessor'Class;
   type Collision2DProcessor_Access_Array is array (Natural range <>) of Collision2DProcessor_Access;
   type Collision2DProcessor_Access_Array_Access is access all Collision2DProcessor_Access_Array;
   type Collision2DProcessor_Access_Array_Access_Array is array (Natural range <>) of Collision2DProcessor_Access_Array_Access;
   type Collision2DProcessor_Access_Array_Access_Array_Access is access all Collision2DProcessor_Access_Array_Access_Array;
end org.allbinary.game.collision.Collision2DProcessor_Package_References;

with org.allbinary.game.collision.Collision2DProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.game.collision.CollisionProcessor_Package; use org.allbinary.game.collision.CollisionProcessor_Package;

package org.allbinary.game.collision.Collision2DProcessor_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Collision2DProcessor_Access is org.allbinary.game.collision.Collision2DProcessor_Package_References.Collision2DProcessor_Access;
   function "=" (Left, Right : Collision2DProcessor_Access) return Boolean renames org.allbinary.game.collision.Collision2DProcessor_Package_References."=";
   subtype Collision2DProcessor_Access_Array is org.allbinary.game.collision.Collision2DProcessor_Package_References.Collision2DProcessor_Access_Array;
   function "=" (Left, Right : Collision2DProcessor_Access_Array) return Boolean renames org.allbinary.game.collision.Collision2DProcessor_Package_References."=";
   subtype Collision2DProcessor_Access_Array_Access is org.allbinary.game.collision.Collision2DProcessor_Package_References.Collision2DProcessor_Access_Array_Access;
   function "=" (Left, Right : Collision2DProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.collision.Collision2DProcessor_Package_References."=";
   subtype Collision2DProcessor_Access_Array_Access_Array is org.allbinary.game.collision.Collision2DProcessor_Package_References.Collision2DProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : Collision2DProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.Collision2DProcessor_Package_References."=";
   subtype Collision2DProcessor_Access_Array_Access_Array_Access is org.allbinary.game.collision.Collision2DProcessor_Package_References.Collision2DProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Collision2DProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.Collision2DProcessor_Package_References."=";

   type Collision2DProcessor is new CollisionProcessor with null record;

   procedure Initialize (This : in out Collision2DProcessor'Class);
   function Create return Collision2DProcessor_Access;
   function isCollision (This : in out Collision2DProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isCollision (This : in out Collision2DProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.collision.Collision2DProcessor_Package;


