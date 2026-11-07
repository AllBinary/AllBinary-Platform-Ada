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

limited with org.allbinary.game.input.KeyFactoryInitializer_Package;
package org.allbinary.game.input.KeyFactoryInitializer_Package_References is
   type KeyFactoryInitializer_Access is access all org.allbinary.game.input.KeyFactoryInitializer_Package.KeyFactoryInitializer'Class;
   type KeyFactoryInitializer_Access_Array is array (Natural range <>) of KeyFactoryInitializer_Access;
   type KeyFactoryInitializer_Access_Array_Access is access all KeyFactoryInitializer_Access_Array;
   type KeyFactoryInitializer_Access_Array_Access_Array is array (Natural range <>) of KeyFactoryInitializer_Access_Array_Access;
   type KeyFactoryInitializer_Access_Array_Access_Array_Access is access all KeyFactoryInitializer_Access_Array_Access_Array;
end org.allbinary.game.input.KeyFactoryInitializer_Package_References;

with org.allbinary.game.input.KeyFactoryInitializer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.init.Init_Package; use org.allbinary.init.Init_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.input.KeyFactoryInitializer_Package is

   package Init_Package renames Standard.org.allbinary.init.Init_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype KeyFactoryInitializer_Access is org.allbinary.game.input.KeyFactoryInitializer_Package_References.KeyFactoryInitializer_Access;
   function "=" (Left, Right : KeyFactoryInitializer_Access) return Boolean renames org.allbinary.game.input.KeyFactoryInitializer_Package_References."=";
   subtype KeyFactoryInitializer_Access_Array is org.allbinary.game.input.KeyFactoryInitializer_Package_References.KeyFactoryInitializer_Access_Array;
   function "=" (Left, Right : KeyFactoryInitializer_Access_Array) return Boolean renames org.allbinary.game.input.KeyFactoryInitializer_Package_References."=";
   subtype KeyFactoryInitializer_Access_Array_Access is org.allbinary.game.input.KeyFactoryInitializer_Package_References.KeyFactoryInitializer_Access_Array_Access;
   function "=" (Left, Right : KeyFactoryInitializer_Access_Array_Access) return Boolean renames org.allbinary.game.input.KeyFactoryInitializer_Package_References."=";
   subtype KeyFactoryInitializer_Access_Array_Access_Array is org.allbinary.game.input.KeyFactoryInitializer_Package_References.KeyFactoryInitializer_Access_Array_Access_Array;
   function "=" (Left, Right : KeyFactoryInitializer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.KeyFactoryInitializer_Package_References."=";
   subtype KeyFactoryInitializer_Access_Array_Access_Array_Access is org.allbinary.game.input.KeyFactoryInitializer_Package_References.KeyFactoryInitializer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyFactoryInitializer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.KeyFactoryInitializer_Package_References."=";

   type KeyFactoryInitializer is new Init_Package.Init with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out KeyFactoryInitializer'Class);
   function Create return KeyFactoryInitializer_Access;
   procedure init (This : in out KeyFactoryInitializer);

end org.allbinary.game.input.KeyFactoryInitializer_Package;


