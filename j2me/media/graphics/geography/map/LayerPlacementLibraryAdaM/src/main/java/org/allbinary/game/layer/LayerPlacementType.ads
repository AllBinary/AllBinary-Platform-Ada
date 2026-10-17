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

package org.allbinary.game.layer.LayerPlacementType_Package is


   type LayerPlacementType is tagged;
   type LayerPlacementType_Access is access all LayerPlacementType'Class;
   type LayerPlacementType_Access_Array is array (Natural range <>) of LayerPlacementType_Access;
   type LayerPlacementType_Access_Array_Access is access all LayerPlacementType_Access_Array;

   type LayerPlacementType is new Java_Object with record
      type_Id : Integer;
   end record;

   procedure Initialize (This : in out LayerPlacementType'Class; type_Id : Integer);
   function Create (type_Id : Integer) return LayerPlacementType_Access;
   function getType (This : in out LayerPlacementType) return Integer;
   procedure setType (This : in out LayerPlacementType; type_Id : Integer);

end org.allbinary.game.layer.LayerPlacementType_Package;


