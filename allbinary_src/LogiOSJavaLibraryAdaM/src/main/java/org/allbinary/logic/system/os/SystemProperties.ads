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

limited with org.allbinary.logic.system.os.SystemProperties_Package;
package org.allbinary.logic.system.os.SystemProperties_Package_References is
   type SystemProperties_Access is access all org.allbinary.logic.system.os.SystemProperties_Package.SystemProperties'Class;
   type SystemProperties_Access_Array is array (Natural range <>) of SystemProperties_Access;
   type SystemProperties_Access_Array_Access is access all SystemProperties_Access_Array;
   type SystemProperties_Access_Array_Access_Array is array (Natural range <>) of SystemProperties_Access_Array_Access;
   type SystemProperties_Access_Array_Access_Array_Access is access all SystemProperties_Access_Array_Access_Array;
end org.allbinary.logic.system.os.SystemProperties_Package_References;

with org.allbinary.logic.system.os.SystemProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.os.SystemProperties_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SystemProperties_Access is org.allbinary.logic.system.os.SystemProperties_Package_References.SystemProperties_Access;
   function "=" (Left, Right : SystemProperties_Access) return Boolean renames org.allbinary.logic.system.os.SystemProperties_Package_References."=";
   subtype SystemProperties_Access_Array is org.allbinary.logic.system.os.SystemProperties_Package_References.SystemProperties_Access_Array;
   function "=" (Left, Right : SystemProperties_Access_Array) return Boolean renames org.allbinary.logic.system.os.SystemProperties_Package_References."=";
   subtype SystemProperties_Access_Array_Access is org.allbinary.logic.system.os.SystemProperties_Package_References.SystemProperties_Access_Array_Access;
   function "=" (Left, Right : SystemProperties_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.SystemProperties_Package_References."=";
   subtype SystemProperties_Access_Array_Access_Array is org.allbinary.logic.system.os.SystemProperties_Package_References.SystemProperties_Access_Array_Access_Array;
   function "=" (Left, Right : SystemProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.os.SystemProperties_Package_References."=";
   subtype SystemProperties_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.SystemProperties_Package_References.SystemProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SystemProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.SystemProperties_Package_References."=";

   type SystemProperties is new Java_Object with record
      OS_NAME : Unbounded_String;
      OS_ARCH : Unbounded_String;
      OS_VERSION : Unbounded_String;
   end record;
   instance : SystemProperties_Access;

   procedure Initialize (This : in out SystemProperties'Class);
   function Create return SystemProperties_Access;
   function getInstance return SystemProperties_Access;
   function getName (This : in out SystemProperties) return Unbounded_String;
   function getArch (This : in out SystemProperties) return Unbounded_String;
   function getVersion (This : in out SystemProperties) return Unbounded_String;
   function getUserHomePath (This : in out SystemProperties) return Unbounded_String;

end org.allbinary.logic.system.os.SystemProperties_Package;


