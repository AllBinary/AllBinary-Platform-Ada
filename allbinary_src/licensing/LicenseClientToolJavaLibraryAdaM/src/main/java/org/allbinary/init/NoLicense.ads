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

limited with org.allbinary.init.NoLicense_Package;
package org.allbinary.init.NoLicense_Package_References is
   type NoLicense_Access is access all org.allbinary.init.NoLicense_Package.NoLicense'Class;
   type NoLicense_Access_Array is array (Natural range <>) of NoLicense_Access;
   type NoLicense_Access_Array_Access is access all NoLicense_Access_Array;
   type NoLicense_Access_Array_Access_Array is array (Natural range <>) of NoLicense_Access_Array_Access;
   type NoLicense_Access_Array_Access_Array_Access is access all NoLicense_Access_Array_Access_Array;
end org.allbinary.init.NoLicense_Package_References;

with org.allbinary.init.NoLicense_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.init.ClassLoader_Package;
with org.allbinary.init.ClassLoader_Package_References;

package org.allbinary.init.NoLicense_Package is

   package Reference_Types is
   subtype ClassLoader_Access is org.allbinary.init.ClassLoader_Package_References.ClassLoader_Access;
   use type ClassLoader_Access;
   subtype ClassLoader_Access_Array is org.allbinary.init.ClassLoader_Package_References.ClassLoader_Access_Array;
   use type ClassLoader_Access_Array;
   subtype ClassLoader_Access_Array_Access is org.allbinary.init.ClassLoader_Package_References.ClassLoader_Access_Array_Access;
   use type ClassLoader_Access_Array_Access;
   subtype ClassLoader_Access_Array_Access_Array is org.allbinary.init.ClassLoader_Package_References.ClassLoader_Access_Array_Access_Array;
   use type ClassLoader_Access_Array_Access_Array;
   subtype ClassLoader_Access_Array_Access_Array_Access is org.allbinary.init.ClassLoader_Package_References.ClassLoader_Access_Array_Access_Array_Access;
   use type ClassLoader_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoLicense_Access is org.allbinary.init.NoLicense_Package_References.NoLicense_Access;
   function "=" (Left, Right : NoLicense_Access) return Boolean renames org.allbinary.init.NoLicense_Package_References."=";
   subtype NoLicense_Access_Array is org.allbinary.init.NoLicense_Package_References.NoLicense_Access_Array;
   function "=" (Left, Right : NoLicense_Access_Array) return Boolean renames org.allbinary.init.NoLicense_Package_References."=";
   subtype NoLicense_Access_Array_Access is org.allbinary.init.NoLicense_Package_References.NoLicense_Access_Array_Access;
   function "=" (Left, Right : NoLicense_Access_Array_Access) return Boolean renames org.allbinary.init.NoLicense_Package_References."=";
   subtype NoLicense_Access_Array_Access_Array is org.allbinary.init.NoLicense_Package_References.NoLicense_Access_Array_Access_Array;
   function "=" (Left, Right : NoLicense_Access_Array_Access_Array) return Boolean renames org.allbinary.init.NoLicense_Package_References."=";
   subtype NoLicense_Access_Array_Access_Array_Access is org.allbinary.init.NoLicense_Package_References.NoLicense_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoLicense_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.init.NoLicense_Package_References."=";

   type NoLicense is new Java_Object with null record;

   procedure Initialize (This : in out NoLicense'Class);
   function Create return NoLicense_Access;
   procedure init (classLoader_Param : access ClassLoader_Package.ClassLoader'Class; pathString : Unbounded_String);

end org.allbinary.init.NoLicense_Package;


