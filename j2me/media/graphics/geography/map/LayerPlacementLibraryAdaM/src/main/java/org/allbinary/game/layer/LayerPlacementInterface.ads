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
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.layer.LayerPlacementType_Package; use org.allbinary.game.layer.LayerPlacementType_Package;

package org.allbinary.game.layer.LayerPlacementInterface_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type LayerPlacementInterface is interface;
   type LayerPlacementInterface_Access is access all LayerPlacementInterface'Class;
   type LayerPlacementInterface_Access_Array is array (Natural range <>) of LayerPlacementInterface_Access;
   type LayerPlacementInterface_Access_Array_Access is access all LayerPlacementInterface_Access_Array;
   function getWidth (This : in out LayerPlacementInterface) return Integer is abstract;
   function getHeight (This : in out LayerPlacementInterface) return Integer is abstract;
   function getLayerType (This : in out LayerPlacementInterface) return LayerPlacementType_Access is abstract;
   function getInstance (This : in out LayerPlacementInterface) return ABHashtable_Access is abstract;

end org.allbinary.game.layer.LayerPlacementInterface_Package;


