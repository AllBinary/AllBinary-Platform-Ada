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

limited with org.allbinary.logic.system.os.OperatingSystems_Package;
package org.allbinary.logic.system.os.OperatingSystems_Package_References is
   type OperatingSystems_Access is access all org.allbinary.logic.system.os.OperatingSystems_Package.OperatingSystems'Class;
   type OperatingSystems_Access_Array is array (Natural range <>) of OperatingSystems_Access;
   type OperatingSystems_Access_Array_Access is access all OperatingSystems_Access_Array;
   type OperatingSystems_Access_Array_Access_Array is array (Natural range <>) of OperatingSystems_Access_Array_Access;
   type OperatingSystems_Access_Array_Access_Array_Access is access all OperatingSystems_Access_Array_Access_Array;
end org.allbinary.logic.system.os.OperatingSystems_Package_References;

with org.allbinary.logic.system.os.OperatingSystems_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.os.OperatingSystems_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OperatingSystems_Access is org.allbinary.logic.system.os.OperatingSystems_Package_References.OperatingSystems_Access;
   function "=" (Left, Right : OperatingSystems_Access) return Boolean renames org.allbinary.logic.system.os.OperatingSystems_Package_References."=";
   subtype OperatingSystems_Access_Array is org.allbinary.logic.system.os.OperatingSystems_Package_References.OperatingSystems_Access_Array;
   function "=" (Left, Right : OperatingSystems_Access_Array) return Boolean renames org.allbinary.logic.system.os.OperatingSystems_Package_References."=";
   subtype OperatingSystems_Access_Array_Access is org.allbinary.logic.system.os.OperatingSystems_Package_References.OperatingSystems_Access_Array_Access;
   function "=" (Left, Right : OperatingSystems_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.OperatingSystems_Package_References."=";
   subtype OperatingSystems_Access_Array_Access_Array is org.allbinary.logic.system.os.OperatingSystems_Package_References.OperatingSystems_Access_Array_Access_Array;
   function "=" (Left, Right : OperatingSystems_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.os.OperatingSystems_Package_References."=";
   subtype OperatingSystems_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.OperatingSystems_Package_References.OperatingSystems_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OperatingSystems_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.OperatingSystems_Package_References."=";

   type OperatingSystems is new Java_Object with record
      LINUX : Unbounded_String;
      WINDOWS : Unbounded_String;
      SOLARIS : Unbounded_String;
      WINDOWS2000 : Unbounded_String;
      WINDOWS_NT : Unbounded_String;
      WINDOWS_10 : Unbounded_String;
      WINDOWS_11 : Unbounded_String;
      WINDOWS_VISTA : Unbounded_String;
      WINDOWS_XP : Unbounded_String;
      ANDROID : Unbounded_String;
      HARMONY : Unbounded_String;
      unknownSpecificOSAllowed : Boolean;
   end record;
   instance : OperatingSystems_Access;

   procedure Initialize (This : in out OperatingSystems'Class);
   function Create return OperatingSystems_Access;
   function isUnknownSpecificOSAllowed (This : in out OperatingSystems) return Boolean;
   procedure setUnknownSpecificOSAllowed (This : in out OperatingSystems; aUnknownSpecificOSAllowed : Boolean);
   function getInstance return OperatingSystems_Access;

end org.allbinary.logic.system.os.OperatingSystems_Package;


