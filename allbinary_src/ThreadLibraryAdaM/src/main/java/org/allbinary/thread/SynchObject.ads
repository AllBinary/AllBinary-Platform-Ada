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

limited with org.allbinary.thread.SynchObject_Package;
package org.allbinary.thread.SynchObject_Package_References is
   type SynchObject_Access is access all org.allbinary.thread.SynchObject_Package.SynchObject'Class;
   type SynchObject_Access_Array is array (Natural range <>) of SynchObject_Access;
   type SynchObject_Access_Array_Access is access all SynchObject_Access_Array;
   type SynchObject_Access_Array_Access_Array is array (Natural range <>) of SynchObject_Access_Array_Access;
   type SynchObject_Access_Array_Access_Array_Access is access all SynchObject_Access_Array_Access_Array;
end org.allbinary.thread.SynchObject_Package_References;

with org.allbinary.thread.SynchObject_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.thread.SynchObject_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SynchObject_Access is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access;
   function "=" (Left, Right : SynchObject_Access) return Boolean renames org.allbinary.thread.SynchObject_Package_References."=";
   subtype SynchObject_Access_Array is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access_Array;
   function "=" (Left, Right : SynchObject_Access_Array) return Boolean renames org.allbinary.thread.SynchObject_Package_References."=";
   subtype SynchObject_Access_Array_Access is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access_Array_Access;
   function "=" (Left, Right : SynchObject_Access_Array_Access) return Boolean renames org.allbinary.thread.SynchObject_Package_References."=";
   subtype SynchObject_Access_Array_Access_Array is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access_Array_Access_Array;
   function "=" (Left, Right : SynchObject_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.SynchObject_Package_References."=";
   subtype SynchObject_Access_Array_Access_Array_Access is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SynchObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.SynchObject_Package_References."=";

   type SynchObject is new Java_Object with null record;

   procedure Initialize (This : in out SynchObject'Class);
   function Create return SynchObject_Access;

end org.allbinary.thread.SynchObject_Package;


