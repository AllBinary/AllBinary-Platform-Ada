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

limited with org.allbinary.game.layer.pickup.PickupCompositeInterface_Package;
package org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References is
   type PickupCompositeInterface_Access is access all org.allbinary.game.layer.pickup.PickupCompositeInterface_Package.PickupCompositeInterface'Class;
   type PickupCompositeInterface_Access_Array is array (Natural range <>) of PickupCompositeInterface_Access;
   type PickupCompositeInterface_Access_Array_Access is access all PickupCompositeInterface_Access_Array;
   type PickupCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of PickupCompositeInterface_Access_Array_Access;
   type PickupCompositeInterface_Access_Array_Access_Array_Access is access all PickupCompositeInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References;

with org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.pickup.PickupBehavior_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package_References;

package org.allbinary.game.layer.pickup.PickupCompositeInterface_Package is

   package Reference_Types is
   subtype PickupBehavior_Access is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access;
   use type PickupBehavior_Access;
   subtype PickupBehavior_Access_Array is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array;
   use type PickupBehavior_Access_Array;
   subtype PickupBehavior_Access_Array_Access is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array_Access;
   use type PickupBehavior_Access_Array_Access;
   subtype PickupBehavior_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array_Access_Array;
   use type PickupBehavior_Access_Array_Access_Array;
   subtype PickupBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array_Access_Array_Access;
   use type PickupBehavior_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PickupCompositeInterface is interface;
   subtype PickupCompositeInterface_Access is org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References.PickupCompositeInterface_Access;
   function "=" (Left, Right : PickupCompositeInterface_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References."=";
   subtype PickupCompositeInterface_Access_Array is org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References.PickupCompositeInterface_Access_Array;
   function "=" (Left, Right : PickupCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References."=";
   subtype PickupCompositeInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References.PickupCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : PickupCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References."=";
   subtype PickupCompositeInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References.PickupCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PickupCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References."=";
   subtype PickupCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References.PickupCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickupCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupCompositeInterface_Package_References."=";
   function Java_Object_Access_From_PickupCompositeInterface (Value : PickupCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getPickupBehavior (This : in out PickupCompositeInterface) return PickupBehavior_Access is abstract;
   procedure setPickupBehavior (This : in out PickupCompositeInterface; pickupBehavior_Param : access PickupBehavior_Package.PickupBehavior'Class) is abstract;

end org.allbinary.game.layer.pickup.PickupCompositeInterface_Package;


