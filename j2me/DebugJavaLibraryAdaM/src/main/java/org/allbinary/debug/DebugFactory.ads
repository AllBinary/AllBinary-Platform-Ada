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

limited with org.allbinary.debug.DebugFactory_Package;
package org.allbinary.debug.DebugFactory_Package_References is
   type DebugFactory_Access is access all org.allbinary.debug.DebugFactory_Package.DebugFactory'Class;
   type DebugFactory_Access_Array is array (Natural range <>) of DebugFactory_Access;
   type DebugFactory_Access_Array_Access is access all DebugFactory_Access_Array;
   type DebugFactory_Access_Array_Access_Array is array (Natural range <>) of DebugFactory_Access_Array_Access;
   type DebugFactory_Access_Array_Access_Array_Access is access all DebugFactory_Access_Array_Access_Array;
end org.allbinary.debug.DebugFactory_Package_References;

with org.allbinary.debug.DebugFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.debug.DebugInterface_Package;
with org.allbinary.debug.DebugInterface_Package_References;

package org.allbinary.debug.DebugFactory_Package is

   package Reference_Types is
   subtype DebugInterface_Access is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access;
   use type DebugInterface_Access;
   subtype DebugInterface_Access_Array is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access_Array;
   use type DebugInterface_Access_Array;
   subtype DebugInterface_Access_Array_Access is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access_Array_Access;
   use type DebugInterface_Access_Array_Access;
   subtype DebugInterface_Access_Array_Access_Array is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access_Array_Access_Array;
   use type DebugInterface_Access_Array_Access_Array;
   subtype DebugInterface_Access_Array_Access_Array_Access is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access_Array_Access_Array_Access;
   use type DebugInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DebugFactory_Access is org.allbinary.debug.DebugFactory_Package_References.DebugFactory_Access;
   function "=" (Left, Right : DebugFactory_Access) return Boolean renames org.allbinary.debug.DebugFactory_Package_References."=";
   subtype DebugFactory_Access_Array is org.allbinary.debug.DebugFactory_Package_References.DebugFactory_Access_Array;
   function "=" (Left, Right : DebugFactory_Access_Array) return Boolean renames org.allbinary.debug.DebugFactory_Package_References."=";
   subtype DebugFactory_Access_Array_Access is org.allbinary.debug.DebugFactory_Package_References.DebugFactory_Access_Array_Access;
   function "=" (Left, Right : DebugFactory_Access_Array_Access) return Boolean renames org.allbinary.debug.DebugFactory_Package_References."=";
   subtype DebugFactory_Access_Array_Access_Array is org.allbinary.debug.DebugFactory_Package_References.DebugFactory_Access_Array_Access_Array;
   function "=" (Left, Right : DebugFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.debug.DebugFactory_Package_References."=";
   subtype DebugFactory_Access_Array_Access_Array_Access is org.allbinary.debug.DebugFactory_Package_References.DebugFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DebugFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.debug.DebugFactory_Package_References."=";

   type DebugFactory is new Java_Object with null record;

   procedure Initialize (This : in out DebugFactory'Class);
   function Create return DebugFactory_Access;
   function getInstance return DebugInterface_Access;

end org.allbinary.debug.DebugFactory_Package;


