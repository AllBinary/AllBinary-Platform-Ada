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

limited with org.allbinary.input.KeyUtil_Package;
package org.allbinary.input.KeyUtil_Package_References is
   type KeyUtil_Access is access all org.allbinary.input.KeyUtil_Package.KeyUtil'Class;
   type KeyUtil_Access_Array is array (Natural range <>) of KeyUtil_Access;
   type KeyUtil_Access_Array_Access is access all KeyUtil_Access_Array;
   type KeyUtil_Access_Array_Access_Array is array (Natural range <>) of KeyUtil_Access_Array_Access;
   type KeyUtil_Access_Array_Access_Array_Access is access all KeyUtil_Access_Array_Access_Array;
end org.allbinary.input.KeyUtil_Package_References;

with org.allbinary.input.KeyUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.event.KeyEvent_Package; use java.awt.event.KeyEvent_Package;

package org.allbinary.input.KeyUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype KeyUtil_Access is org.allbinary.input.KeyUtil_Package_References.KeyUtil_Access;
   function "=" (Left, Right : KeyUtil_Access) return Boolean renames org.allbinary.input.KeyUtil_Package_References."=";
   subtype KeyUtil_Access_Array is org.allbinary.input.KeyUtil_Package_References.KeyUtil_Access_Array;
   function "=" (Left, Right : KeyUtil_Access_Array) return Boolean renames org.allbinary.input.KeyUtil_Package_References."=";
   subtype KeyUtil_Access_Array_Access is org.allbinary.input.KeyUtil_Package_References.KeyUtil_Access_Array_Access;
   function "=" (Left, Right : KeyUtil_Access_Array_Access) return Boolean renames org.allbinary.input.KeyUtil_Package_References."=";
   subtype KeyUtil_Access_Array_Access_Array is org.allbinary.input.KeyUtil_Package_References.KeyUtil_Access_Array_Access_Array;
   function "=" (Left, Right : KeyUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.input.KeyUtil_Package_References."=";
   subtype KeyUtil_Access_Array_Access_Array_Access is org.allbinary.input.KeyUtil_Package_References.KeyUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.KeyUtil_Package_References."=";

   type KeyUtil is new Java_Object with null record;

   procedure Initialize (This : in out KeyUtil'Class);
   function Create return KeyUtil_Access;
   function isNormallyDisplayed (keyCode : Integer) return Boolean;
   procedure isNormallyDisplayed (keyCode : Integer);

end org.allbinary.input.KeyUtil_Package;


