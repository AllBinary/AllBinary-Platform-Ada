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

limited with org.allbinary.debug.NoDebug_Package;
package org.allbinary.debug.NoDebug_Package_References is
   type NoDebug_Access is access all org.allbinary.debug.NoDebug_Package.NoDebug'Class;
   type NoDebug_Access_Array is array (Natural range <>) of NoDebug_Access;
   type NoDebug_Access_Array_Access is access all NoDebug_Access_Array;
   type NoDebug_Access_Array_Access_Array is array (Natural range <>) of NoDebug_Access_Array_Access;
   type NoDebug_Access_Array_Access_Array_Access is access all NoDebug_Access_Array_Access_Array;
end org.allbinary.debug.NoDebug_Package_References;

with org.allbinary.debug.NoDebug_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.debug.DebugInterface_Package; use org.allbinary.debug.DebugInterface_Package;

package org.allbinary.debug.NoDebug_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NoDebug_Access is org.allbinary.debug.NoDebug_Package_References.NoDebug_Access;
   function "=" (Left, Right : NoDebug_Access) return Boolean renames org.allbinary.debug.NoDebug_Package_References."=";
   subtype NoDebug_Access_Array is org.allbinary.debug.NoDebug_Package_References.NoDebug_Access_Array;
   function "=" (Left, Right : NoDebug_Access_Array) return Boolean renames org.allbinary.debug.NoDebug_Package_References."=";
   subtype NoDebug_Access_Array_Access is org.allbinary.debug.NoDebug_Package_References.NoDebug_Access_Array_Access;
   function "=" (Left, Right : NoDebug_Access_Array_Access) return Boolean renames org.allbinary.debug.NoDebug_Package_References."=";
   subtype NoDebug_Access_Array_Access_Array is org.allbinary.debug.NoDebug_Package_References.NoDebug_Access_Array_Access_Array;
   function "=" (Left, Right : NoDebug_Access_Array_Access_Array) return Boolean renames org.allbinary.debug.NoDebug_Package_References."=";
   subtype NoDebug_Access_Array_Access_Array_Access is org.allbinary.debug.NoDebug_Package_References.NoDebug_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoDebug_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.debug.NoDebug_Package_References."=";

   type NoDebug is new Java_Object and DebugInterface with null record;
   SINGLETON : DebugInterface_Access;

   procedure Initialize (This : in out NoDebug'Class);
   function Create return NoDebug_Access;
   function getInstance return DebugInterface_Access;
   procedure start (This : in out NoDebug);
   procedure stop (This : in out NoDebug);
   function getMaxTime (This : in out NoDebug) return Long_Long_Integer;
   function getStartTime (This : in out NoDebug) return Long_Long_Integer;
   function isRunning (This : in out NoDebug) return Boolean;

end org.allbinary.debug.NoDebug_Package;


