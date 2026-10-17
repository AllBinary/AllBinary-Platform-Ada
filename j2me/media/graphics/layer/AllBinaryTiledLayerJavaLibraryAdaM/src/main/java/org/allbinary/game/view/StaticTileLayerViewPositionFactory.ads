-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionFactoryInterface_Package; use org.allbinary.view.ViewPositionFactoryInterface_Package;

package org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package is

   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package ViewPositionFactoryInterface_Package renames Standard.org.allbinary.view.ViewPositionFactoryInterface_Package;

   type StaticTileLayerViewPositionFactory is tagged;
   type StaticTileLayerViewPositionFactory_Access is access all StaticTileLayerViewPositionFactory'Class;
   type StaticTileLayerViewPositionFactory_Access_Array is array (Natural range <>) of StaticTileLayerViewPositionFactory_Access;
   type StaticTileLayerViewPositionFactory_Access_Array_Access is access all StaticTileLayerViewPositionFactory_Access_Array;

   type StaticTileLayerViewPositionFactory is new ViewPositionFactoryInterface with null record;

   procedure Initialize (This : in out StaticTileLayerViewPositionFactory'Class);
   function Create return StaticTileLayerViewPositionFactory_Access;
   function getInstance (This : in out StaticTileLayerViewPositionFactory) return ViewPositionBase_Access;
   procedure getInstance (This : in out StaticTileLayerViewPositionFactory);

end org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package;


