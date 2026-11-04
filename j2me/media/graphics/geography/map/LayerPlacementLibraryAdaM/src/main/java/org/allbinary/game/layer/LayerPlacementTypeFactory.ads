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

limited with org.allbinary.game.layer.LayerPlacementTypeFactory_Package;
package org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References is
   type LayerPlacementTypeFactory_Access is access all org.allbinary.game.layer.LayerPlacementTypeFactory_Package.LayerPlacementTypeFactory'Class;
   type LayerPlacementTypeFactory_Access_Array is array (Natural range <>) of LayerPlacementTypeFactory_Access;
   type LayerPlacementTypeFactory_Access_Array_Access is access all LayerPlacementTypeFactory_Access_Array;
   type LayerPlacementTypeFactory_Access_Array_Access_Array is array (Natural range <>) of LayerPlacementTypeFactory_Access_Array_Access;
   type LayerPlacementTypeFactory_Access_Array_Access_Array_Access is access all LayerPlacementTypeFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References;

with org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.LayerPlacementType_Package;
with org.allbinary.game.layer.LayerPlacementType_Package_References;

package org.allbinary.game.layer.LayerPlacementTypeFactory_Package is

   package Reference_Types is
   subtype LayerPlacementType_Access is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access;
   use type LayerPlacementType_Access;
   subtype LayerPlacementType_Access_Array is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access_Array;
   use type LayerPlacementType_Access_Array;
   subtype LayerPlacementType_Access_Array_Access is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access_Array_Access;
   use type LayerPlacementType_Access_Array_Access;
   subtype LayerPlacementType_Access_Array_Access_Array is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access_Array_Access_Array;
   use type LayerPlacementType_Access_Array_Access_Array;
   subtype LayerPlacementType_Access_Array_Access_Array_Access is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access_Array_Access_Array_Access;
   use type LayerPlacementType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerPlacementTypeFactory_Access is org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References.LayerPlacementTypeFactory_Access;
   function "=" (Left, Right : LayerPlacementTypeFactory_Access) return Boolean renames org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References."=";
   subtype LayerPlacementTypeFactory_Access_Array is org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References.LayerPlacementTypeFactory_Access_Array;
   function "=" (Left, Right : LayerPlacementTypeFactory_Access_Array) return Boolean renames org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References."=";
   subtype LayerPlacementTypeFactory_Access_Array_Access is org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References.LayerPlacementTypeFactory_Access_Array_Access;
   function "=" (Left, Right : LayerPlacementTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References."=";
   subtype LayerPlacementTypeFactory_Access_Array_Access_Array is org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References.LayerPlacementTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LayerPlacementTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References."=";
   subtype LayerPlacementTypeFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References.LayerPlacementTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerPlacementTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LayerPlacementTypeFactory_Package_References."=";

   type LayerPlacementTypeFactory is new Java_Object with record
      MAP : LayerPlacementType_Access;
      LEFT : LayerPlacementType_Access;
      DOWN : LayerPlacementType_Access;
      UP : LayerPlacementType_Access;
      RIGHT : LayerPlacementType_Access;
   end record;
   instance : LayerPlacementTypeFactory_Access;

   procedure Initialize (This : in out LayerPlacementTypeFactory'Class);
   function Create return LayerPlacementTypeFactory_Access;
   function getInstance return LayerPlacementTypeFactory_Access;

end org.allbinary.game.layer.LayerPlacementTypeFactory_Package;


