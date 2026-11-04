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

limited with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
package org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References is
   type PickedUpLayerType_Access is access all org.allbinary.game.layer.pickup.PickedUpLayerType_Package.PickedUpLayerType'Class;
   type PickedUpLayerType_Access_Array is array (Natural range <>) of PickedUpLayerType_Access;
   type PickedUpLayerType_Access_Array_Access is access all PickedUpLayerType_Access_Array;
   type PickedUpLayerType_Access_Array_Access_Array is array (Natural range <>) of PickedUpLayerType_Access_Array_Access;
   type PickedUpLayerType_Access_Array_Access_Array_Access is access all PickedUpLayerType_Access_Array_Access_Array;
end org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References;

with org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.layer.pickup.PickedUpLayerType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PickedUpLayerType_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access;
   function "=" (Left, Right : PickedUpLayerType_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References."=";
   subtype PickedUpLayerType_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array;
   function "=" (Left, Right : PickedUpLayerType_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References."=";
   subtype PickedUpLayerType_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerType_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References."=";
   subtype PickedUpLayerType_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access_Array;
   function "=" (Left, Right : PickedUpLayerType_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References."=";
   subtype PickedUpLayerType_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References."=";

   type PickedUpLayerType is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out PickedUpLayerType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return PickedUpLayerType_Access;
   function toString (This : in out PickedUpLayerType) return Unbounded_String;

end org.allbinary.game.layer.pickup.PickedUpLayerType_Package;


