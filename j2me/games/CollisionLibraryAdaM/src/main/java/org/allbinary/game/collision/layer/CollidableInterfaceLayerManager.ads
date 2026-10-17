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
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManagerNoDebug_Package; use org.allbinary.layer.LayerManagerNoDebug_Package;

package org.allbinary.game.collision.layer.CollidableInterfaceLayerManager_Package is

   package LayerManager_Package renames org.allbinary.layer.LayerManager_Package;
   package LayerManagerNoDebug_Package renames org.allbinary.layer.LayerManagerNoDebug_Package;

   type CollidableInterfaceLayerManager is tagged;
   type CollidableInterfaceLayerManager_Access is access all CollidableInterfaceLayerManager'Class;
   type CollidableInterfaceLayerManager_Access_Array is array (Natural range <>) of CollidableInterfaceLayerManager_Access;
   type CollidableInterfaceLayerManager_Access_Array_Access is access all CollidableInterfaceLayerManager_Access_Array;

   type CollidableInterfaceLayerManager is new LayerManager with null record;

   procedure Initialize (This : in out CollidableInterfaceLayerManager'Class);
   function Create return CollidableInterfaceLayerManager_Access;

end org.allbinary.game.collision.layer.CollidableInterfaceLayerManager_Package;


