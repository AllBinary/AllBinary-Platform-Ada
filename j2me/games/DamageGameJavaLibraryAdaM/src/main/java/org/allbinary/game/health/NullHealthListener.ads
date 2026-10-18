-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.game.health.HealthListenerInterface_Package; use org.allbinary.game.health.HealthListenerInterface_Package;

package org.allbinary.game.health.NullHealthListener_Package is


   type NullHealthListener is tagged;
   type NullHealthListener_Access is access all NullHealthListener'Class;
   type NullHealthListener_Access_Array is array (Natural range <>) of NullHealthListener_Access;
   type NullHealthListener_Access_Array_Access is access all NullHealthListener_Access_Array;
   type NullHealthListener_Access_Array_Access_Array is array (Natural range <>) of NullHealthListener_Access_Array_Access;
   type NullHealthListener_Access_Array_Access_Array_Access is access all NullHealthListener_Access_Array_Access_Array;

   type NullHealthListener is new Java_Object and HealthListenerInterface with null record;
   NULL_HEALTH_LISTENER : NullHealthListener_Access;

   procedure Initialize (This : in out NullHealthListener'Class);
   function Create return NullHealthListener_Access;
   procedure onHealthChange (This : in out NullHealthListener);

end org.allbinary.game.health.NullHealthListener_Package;


