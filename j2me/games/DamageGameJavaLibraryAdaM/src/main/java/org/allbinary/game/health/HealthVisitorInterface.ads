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
with org.allbinary.game.health.HealthInterface_Package; use org.allbinary.game.health.HealthInterface_Package;

package org.allbinary.game.health.HealthVisitorInterface_Package is


   type HealthVisitorInterface is interface;
   type HealthVisitorInterface_Access is access all HealthVisitorInterface'Class;
   type HealthVisitorInterface_Access_Array is array (Natural range <>) of HealthVisitorInterface_Access;
   type HealthVisitorInterface_Access_Array_Access is access all HealthVisitorInterface_Access_Array;
   type HealthVisitorInterface_Access_Array_Access_Array is array (Natural range <>) of HealthVisitorInterface_Access_Array_Access;
   type HealthVisitorInterface_Access_Array_Access_Array_Access is access all HealthVisitorInterface_Access_Array_Access_Array;
   procedure visit (This : in out HealthVisitorInterface; healthInterface_Param : access HealthInterface_Package.HealthInterface'Class) is abstract;

end org.allbinary.game.health.HealthVisitorInterface_Package;


