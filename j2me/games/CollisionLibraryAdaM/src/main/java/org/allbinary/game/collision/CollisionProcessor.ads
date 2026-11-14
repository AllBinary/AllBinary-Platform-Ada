--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.collision.CollisionProcessor_Package;
package org.allbinary.game.collision.CollisionProcessor_Package_References is
   type CollisionProcessor_Access is access all org.allbinary.game.collision.CollisionProcessor_Package.CollisionProcessor'Class;
   type CollisionProcessor_Access_Array is array (Natural range <>) of CollisionProcessor_Access;
   type CollisionProcessor_Access_Array_Access is access all CollisionProcessor_Access_Array;
   type CollisionProcessor_Access_Array_Access_Array is array (Natural range <>) of CollisionProcessor_Access_Array_Access;
   type CollisionProcessor_Access_Array_Access_Array_Access is access all CollisionProcessor_Access_Array_Access_Array;
   type CollisionProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollisionProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : CollisionProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollisionProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollisionProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollisionProcessor_Access_Array_Access is (if Value /= null and then Value.all in CollisionProcessor_Access_Array_Object'Class then CollisionProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type CollisionProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollisionProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollisionProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollisionProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollisionProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollisionProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollisionProcessor_Access_Array_Access_Array_Object'Class then CollisionProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.collision.CollisionProcessor_Package_References;

with org.allbinary.game.collision.CollisionProcessor_Package_References;
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

package org.allbinary.game.collision.CollisionProcessor_Package is

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


   subtype CollisionProcessor_Access is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access;
   function "=" (Left, Right : CollisionProcessor_Access) return Boolean renames org.allbinary.game.collision.CollisionProcessor_Package_References."=";
   subtype CollisionProcessor_Access_Array is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access_Array;
   function "=" (Left, Right : CollisionProcessor_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionProcessor_Package_References."=";
   subtype CollisionProcessor_Access_Array_Access is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access_Array_Access;
   function "=" (Left, Right : CollisionProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionProcessor_Package_References."=";
   function Java_Box (Value : CollisionProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollisionProcessor_Package_References.Java_Box;
   function Java_Unbox_CollisionProcessor_Access_Array (Value : access Java_Object'Class) return CollisionProcessor_Access_Array_Access renames org.allbinary.game.collision.CollisionProcessor_Package_References.Java_Unbox_CollisionProcessor_Access_Array;
   subtype CollisionProcessor_Access_Array_Access_Array is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : CollisionProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionProcessor_Package_References."=";
   subtype CollisionProcessor_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollisionProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionProcessor_Package_References."=";
   function Java_Box (Value : CollisionProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollisionProcessor_Package_References.Java_Box;
   function Java_Unbox_CollisionProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return CollisionProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.collision.CollisionProcessor_Package_References.Java_Unbox_CollisionProcessor_Access_Array_Access_Array;

   type CollisionProcessor is new Java_Object with null record;

   procedure Initialize (This : in out CollisionProcessor'Class);
   function Create return CollisionProcessor_Access;
   function isCollision (This : in out CollisionProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isCollision (This : in out CollisionProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.collision.CollisionProcessor_Package;


