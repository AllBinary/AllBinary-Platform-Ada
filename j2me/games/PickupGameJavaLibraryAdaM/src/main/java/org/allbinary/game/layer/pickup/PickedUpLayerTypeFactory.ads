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

limited with org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;
package org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References is
   type PickedUpLayerTypeFactory_Access is access all org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package.PickedUpLayerTypeFactory'Class;
   type PickedUpLayerTypeFactory_Access_Array is array (Natural range <>) of PickedUpLayerTypeFactory_Access;
   type PickedUpLayerTypeFactory_Access_Array_Access is access all PickedUpLayerTypeFactory_Access_Array;
   type PickedUpLayerTypeFactory_Access_Array_Access_Array is array (Natural range <>) of PickedUpLayerTypeFactory_Access_Array_Access;
   type PickedUpLayerTypeFactory_Access_Array_Access_Array_Access is access all PickedUpLayerTypeFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References;

with org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References;

package org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package is

   package Reference_Types is
   subtype PickedUpLayerType_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access;
   use type PickedUpLayerType_Access;
   subtype PickedUpLayerType_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array;
   use type PickedUpLayerType_Access_Array;
   subtype PickedUpLayerType_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access;
   use type PickedUpLayerType_Access_Array_Access;
   subtype PickedUpLayerType_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access_Array;
   use type PickedUpLayerType_Access_Array_Access_Array;
   subtype PickedUpLayerType_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access_Array_Access;
   use type PickedUpLayerType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PickedUpLayerTypeFactory_Access is org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References.PickedUpLayerTypeFactory_Access;
   function "=" (Left, Right : PickedUpLayerTypeFactory_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References."=";
   subtype PickedUpLayerTypeFactory_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References.PickedUpLayerTypeFactory_Access_Array;
   function "=" (Left, Right : PickedUpLayerTypeFactory_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References."=";
   subtype PickedUpLayerTypeFactory_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References.PickedUpLayerTypeFactory_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References."=";
   subtype PickedUpLayerTypeFactory_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References.PickedUpLayerTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PickedUpLayerTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References."=";
   subtype PickedUpLayerTypeFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References.PickedUpLayerTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package_References."=";

   type PickedUpLayerTypeFactory is new Java_Object with record
      NONE : PickedUpLayerType_Access;
      BEAM : PickedUpLayerType_Access;
      MINE : PickedUpLayerType_Access;
      PROJECTILE : PickedUpLayerType_Access;
      ENHANCEMENT : PickedUpLayerType_Access;
      MORPH : PickedUpLayerType_Access;
      PART : PickedUpLayerType_Access;
      HEAL : PickedUpLayerType_Access;
      LIFE : PickedUpLayerType_Access;
      POINTS : PickedUpLayerType_Access;
   end record;
   instance : PickedUpLayerTypeFactory_Access;

   procedure Initialize (This : in out PickedUpLayerTypeFactory'Class);
   function Create return PickedUpLayerTypeFactory_Access;
   function getInstance return PickedUpLayerTypeFactory_Access;

end org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;


