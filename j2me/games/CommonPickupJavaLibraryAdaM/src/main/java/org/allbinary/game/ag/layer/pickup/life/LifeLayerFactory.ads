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

package org.allbinary.game.ag.layer.pickup.life.LifeLayerFactory_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

   type LifeLayerFactory is tagged;
   type LifeLayerFactory_Access is access all LifeLayerFactory'Class;
   type LifeLayerFactory_Access_Array is array (Natural range <>) of LifeLayerFactory_Access;
   type LifeLayerFactory_Access_Array_Access is access all LifeLayerFactory_Access_Array;

   type LifeLayerFactory is new AllBinaryLayerFactoryInterface with null record;

   procedure Initialize (This : in out LifeLayerFactory'Class);
   function Create return LifeLayerFactory_Access;
   function getInstance (This : in out LifeLayerFactory) return AllBinaryLayer_Access;
   procedure getInstance (This : in out LifeLayerFactory);

end org.allbinary.game.ag.layer.pickup.life.LifeLayerFactory_Package;


