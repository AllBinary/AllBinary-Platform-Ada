--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.collision.CollisionThreedProcessor_Package;
package org.allbinary.game.collision.CollisionThreedProcessor_Package_References is
   type CollisionThreedProcessor_Access is access all org.allbinary.game.collision.CollisionThreedProcessor_Package.CollisionThreedProcessor'Class;
   type CollisionThreedProcessor_Access_Array is array (Natural range <>) of CollisionThreedProcessor_Access;
   type CollisionThreedProcessor_Access_Array_Access is access all CollisionThreedProcessor_Access_Array;
   type CollisionThreedProcessor_Access_Array_Access_Array is array (Natural range <>) of CollisionThreedProcessor_Access_Array_Access;
   type CollisionThreedProcessor_Access_Array_Access_Array_Access is access all CollisionThreedProcessor_Access_Array_Access_Array;
   type CollisionThreedProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollisionThreedProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : CollisionThreedProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollisionThreedProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollisionThreedProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollisionThreedProcessor_Access_Array_Access is (if Value /= null and then Value.all in CollisionThreedProcessor_Access_Array_Object'Class then CollisionThreedProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type CollisionThreedProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollisionThreedProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollisionThreedProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollisionThreedProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollisionThreedProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollisionThreedProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollisionThreedProcessor_Access_Array_Access_Array_Object'Class then CollisionThreedProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.collision.CollisionThreedProcessor_Package_References;

with org.allbinary.game.collision.CollisionThreedProcessor_Package_References;
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

package org.allbinary.game.collision.CollisionThreedProcessor_Package is

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


   subtype CollisionThreedProcessor_Access is org.allbinary.game.collision.CollisionThreedProcessor_Package_References.CollisionThreedProcessor_Access;
   function "=" (Left, Right : CollisionThreedProcessor_Access) return Boolean renames org.allbinary.game.collision.CollisionThreedProcessor_Package_References."=";
   subtype CollisionThreedProcessor_Access_Array is org.allbinary.game.collision.CollisionThreedProcessor_Package_References.CollisionThreedProcessor_Access_Array;
   function "=" (Left, Right : CollisionThreedProcessor_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionThreedProcessor_Package_References."=";
   subtype CollisionThreedProcessor_Access_Array_Access is org.allbinary.game.collision.CollisionThreedProcessor_Package_References.CollisionThreedProcessor_Access_Array_Access;
   function "=" (Left, Right : CollisionThreedProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionThreedProcessor_Package_References."=";
   function Java_Box (Value : CollisionThreedProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollisionThreedProcessor_Package_References.Java_Box;
   function Java_Unbox_CollisionThreedProcessor_Access_Array (Value : access Java_Object'Class) return CollisionThreedProcessor_Access_Array_Access renames org.allbinary.game.collision.CollisionThreedProcessor_Package_References.Java_Unbox_CollisionThreedProcessor_Access_Array;
   subtype CollisionThreedProcessor_Access_Array_Access_Array is org.allbinary.game.collision.CollisionThreedProcessor_Package_References.CollisionThreedProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : CollisionThreedProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionThreedProcessor_Package_References."=";
   subtype CollisionThreedProcessor_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionThreedProcessor_Package_References.CollisionThreedProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollisionThreedProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionThreedProcessor_Package_References."=";
   function Java_Box (Value : CollisionThreedProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollisionThreedProcessor_Package_References.Java_Box;
   function Java_Unbox_CollisionThreedProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return CollisionThreedProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.collision.CollisionThreedProcessor_Package_References.Java_Unbox_CollisionThreedProcessor_Access_Array_Access_Array;

   type CollisionThreedProcessor is new CollisionProcessor with null record;

   procedure Initialize (This : in out CollisionThreedProcessor'Class);
   function Create return CollisionThreedProcessor_Access;
   function isCollision (This : in out CollisionThreedProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isCollision (This : in out CollisionThreedProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.collision.CollisionThreedProcessor_Package;


