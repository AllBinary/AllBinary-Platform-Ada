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
with org.allbinary.init.Init_Package; use org.allbinary.init.Init_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;

package org.allbinary.game.input.KeyFactoryInitializer_Package is

   package Init_Package renames org.allbinary.init.Init_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;

   type KeyFactoryInitializer is tagged;
   type KeyFactoryInitializer_Access is access all KeyFactoryInitializer'Class;
   type KeyFactoryInitializer_Access_Array is array (Natural range <>) of KeyFactoryInitializer_Access;
   type KeyFactoryInitializer_Access_Array_Access is access all KeyFactoryInitializer_Access_Array;

   type KeyFactoryInitializer is new Init with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out KeyFactoryInitializer'Class);
   function Create return KeyFactoryInitializer_Access;
   procedure init (This : in out KeyFactoryInitializer);

end org.allbinary.game.input.KeyFactoryInitializer_Package;


