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

with AllBinary_Java;
limited with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
package org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References is
   type CollidableInterfaceCompositeInterface_Access is access all org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class;
   type CollidableInterfaceCompositeInterface_Access_Array is array (Natural range <>) of CollidableInterfaceCompositeInterface_Access;
   type CollidableInterfaceCompositeInterface_Access_Array_Access is access all CollidableInterfaceCompositeInterface_Access_Array;
   type CollidableInterfaceCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of CollidableInterfaceCompositeInterface_Access_Array_Access;
   type CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access is access all CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   type CollidableInterfaceCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableInterfaceCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableInterfaceCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableInterfaceCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableInterfaceCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableInterfaceCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in CollidableInterfaceCompositeInterface_Access_Array_Object'Class then CollidableInterfaceCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableInterfaceCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class then CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References;

with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package_References;

package org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package is

   package Reference_Types is
   subtype CollidableBaseBehavior_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access;
   use type CollidableBaseBehavior_Access;
   subtype CollidableBaseBehavior_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array;
   use type CollidableBaseBehavior_Access_Array;
   subtype CollidableBaseBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access;
   use type CollidableBaseBehavior_Access_Array_Access;
   subtype CollidableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array;
   use type CollidableBaseBehavior_Access_Array_Access_Array;
   subtype CollidableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array_Access;
   use type CollidableBaseBehavior_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type CollidableInterfaceCompositeInterface is interface;
   subtype CollidableInterfaceCompositeInterface_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   subtype CollidableInterfaceCompositeInterface_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : CollidableInterfaceCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_CollidableInterfaceCompositeInterface_Access_Array (Value : access Java_Object'Class) return CollidableInterfaceCompositeInterface_Access_Array_Access renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.Java_Unbox_CollidableInterfaceCompositeInterface_Access_Array;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_CollidableInterfaceCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.Java_Unbox_CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_CollidableInterfaceCompositeInterface (Value : CollidableInterfaceCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getCollidableInferface (This : in out CollidableInterfaceCompositeInterface) return CollidableBaseBehavior_Access is abstract;

end org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;


