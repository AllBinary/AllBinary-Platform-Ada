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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.view.ViewPositionFactoryInterface_Package; use org.allbinary.view.ViewPositionFactoryInterface_Package;
with org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package; use org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package;

package org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
   package ViewPositionFactoryInterface_Package renames Standard.org.allbinary.view.ViewPositionFactoryInterface_Package;

   type MineLayerFactory is tagged;
   type MineLayerFactory_Access is access all MineLayerFactory'Class;
   type MineLayerFactory_Access_Array is array (Natural range <>) of MineLayerFactory_Access;
   type MineLayerFactory_Access_Array_Access is access all MineLayerFactory_Access_Array;

   type MineLayerFactory is new AllBinaryLayerFactoryInterface with record
      viewPositionFactoryInterface : ViewPositionFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out MineLayerFactory'Class; viewPositionFactoryInterface_Param : access ViewPositionFactoryInterface_Package.ViewPositionFactoryInterface'Class);
   function Create (viewPositionFactoryInterface_Param : access ViewPositionFactoryInterface_Package.ViewPositionFactoryInterface'Class) return MineLayerFactory_Access;
   function getInstance (This : in out MineLayerFactory) return AllBinaryLayer_Access;

end org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package;


