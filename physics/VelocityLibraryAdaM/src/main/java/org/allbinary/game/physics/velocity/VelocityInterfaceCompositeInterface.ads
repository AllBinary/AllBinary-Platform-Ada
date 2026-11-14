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
limited with org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
package org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References is
   type VelocityInterfaceCompositeInterface_Access is access all org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package.VelocityInterfaceCompositeInterface'Class;
   type VelocityInterfaceCompositeInterface_Access_Array is array (Natural range <>) of VelocityInterfaceCompositeInterface_Access;
   type VelocityInterfaceCompositeInterface_Access_Array_Access is access all VelocityInterfaceCompositeInterface_Access_Array;
   type VelocityInterfaceCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of VelocityInterfaceCompositeInterface_Access_Array_Access;
   type VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Access is access all VelocityInterfaceCompositeInterface_Access_Array_Access_Array;
   type VelocityInterfaceCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VelocityInterfaceCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : VelocityInterfaceCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VelocityInterfaceCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VelocityInterfaceCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VelocityInterfaceCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in VelocityInterfaceCompositeInterface_Access_Array_Object'Class then VelocityInterfaceCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VelocityInterfaceCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class then VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References;

with org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References;

package org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package is

   package Reference_Types is
   subtype BasicVelocityProperties_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access;
   use type BasicVelocityProperties_Access;
   subtype BasicVelocityProperties_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array;
   use type BasicVelocityProperties_Access_Array;
   subtype BasicVelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access;
   use type BasicVelocityProperties_Access_Array_Access;
   subtype BasicVelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array;
   use type BasicVelocityProperties_Access_Array_Access_Array;
   subtype BasicVelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array_Access;
   use type BasicVelocityProperties_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type VelocityInterfaceCompositeInterface is interface;
   subtype VelocityInterfaceCompositeInterface_Access is org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References.VelocityInterfaceCompositeInterface_Access;
   function "=" (Left, Right : VelocityInterfaceCompositeInterface_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References."=";
   subtype VelocityInterfaceCompositeInterface_Access_Array is org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References.VelocityInterfaceCompositeInterface_Access_Array;
   function "=" (Left, Right : VelocityInterfaceCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References."=";
   subtype VelocityInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References.VelocityInterfaceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : VelocityInterfaceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : VelocityInterfaceCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_VelocityInterfaceCompositeInterface_Access_Array (Value : access Java_Object'Class) return VelocityInterfaceCompositeInterface_Access_Array_Access renames org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References.Java_Unbox_VelocityInterfaceCompositeInterface_Access_Array;
   subtype VelocityInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References.VelocityInterfaceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VelocityInterfaceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References."=";
   subtype VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References.VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_VelocityInterfaceCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return VelocityInterfaceCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package_References.Java_Unbox_VelocityInterfaceCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_VelocityInterfaceCompositeInterface (Value : VelocityInterfaceCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getVelocityProperties (This : in out VelocityInterfaceCompositeInterface) return BasicVelocityProperties_Access is abstract;

end org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;


