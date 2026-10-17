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

package org.allbinary.game.ag.life.LifeVisitorInterface_Package is


   type LifeVisitorInterface is interface;
   type LifeVisitorInterface_Access is access all LifeVisitorInterface'Class;
   type LifeVisitorInterface_Access_Array is array (Natural range <>) of LifeVisitorInterface_Access;
   type LifeVisitorInterface_Access_Array_Access is access all LifeVisitorInterface_Access_Array;
   procedure visit (This : in out LifeVisitorInterface; lifeInterface : Life_Access) is abstract;

end org.allbinary.game.ag.life.LifeVisitorInterface_Package;


