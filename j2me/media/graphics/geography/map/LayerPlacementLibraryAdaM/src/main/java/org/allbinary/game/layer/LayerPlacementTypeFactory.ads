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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.layer.LayerPlacementType_Package; use org.allbinary.game.layer.LayerPlacementType_Package;

package org.allbinary.game.layer.LayerPlacementTypeFactory_Package is

   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;

   type LayerPlacementTypeFactory is tagged;
   type LayerPlacementTypeFactory_Access is access all LayerPlacementTypeFactory'Class;
   type LayerPlacementTypeFactory_Access_Array is array (Natural range <>) of LayerPlacementTypeFactory_Access;
   type LayerPlacementTypeFactory_Access_Array_Access is access all LayerPlacementTypeFactory_Access_Array;

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


