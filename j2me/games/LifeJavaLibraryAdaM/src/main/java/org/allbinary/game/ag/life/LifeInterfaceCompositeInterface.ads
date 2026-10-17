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
with org.allbinary.game.ag.life.Life_Package; use org.allbinary.game.ag.life.Life_Package;

package org.allbinary.game.ag.life.LifeInterfaceCompositeInterface_Package is


   type LifeInterfaceCompositeInterface is interface;
   type LifeInterfaceCompositeInterface_Access is access all LifeInterfaceCompositeInterface'Class;
   type LifeInterfaceCompositeInterface_Access_Array is array (Natural range <>) of LifeInterfaceCompositeInterface_Access;
   type LifeInterfaceCompositeInterface_Access_Array_Access is access all LifeInterfaceCompositeInterface_Access_Array;
   function getLifeInterface (This : in out LifeInterfaceCompositeInterface) return Life_Access is abstract;

end org.allbinary.game.ag.life.LifeInterfaceCompositeInterface_Package;


