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

limited with org.allbinary.input.TouchJ2ME_Package;
package org.allbinary.input.TouchJ2ME_Package_References is
   type TouchJ2ME_Access is access all org.allbinary.input.TouchJ2ME_Package.TouchJ2ME'Class;
   type TouchJ2ME_Access_Array is array (Natural range <>) of TouchJ2ME_Access;
   type TouchJ2ME_Access_Array_Access is access all TouchJ2ME_Access_Array;
   type TouchJ2ME_Access_Array_Access_Array is array (Natural range <>) of TouchJ2ME_Access_Array_Access;
   type TouchJ2ME_Access_Array_Access_Array_Access is access all TouchJ2ME_Access_Array_Access_Array;
end org.allbinary.input.TouchJ2ME_Package_References;

with org.allbinary.input.TouchJ2ME_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.TouchJ2ME_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchJ2ME_Access is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access;
   function "=" (Left, Right : TouchJ2ME_Access) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   subtype TouchJ2ME_Access_Array is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array;
   function "=" (Left, Right : TouchJ2ME_Access_Array) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   subtype TouchJ2ME_Access_Array_Access is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array_Access;
   function "=" (Left, Right : TouchJ2ME_Access_Array_Access) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   subtype TouchJ2ME_Access_Array_Access_Array is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array_Access_Array;
   function "=" (Left, Right : TouchJ2ME_Access_Array_Access_Array) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   subtype TouchJ2ME_Access_Array_Access_Array_Access is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchJ2ME_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";

   type TouchJ2ME is new Java_Object with null record;

   procedure Initialize (This : in out TouchJ2ME'Class);
   function Create return TouchJ2ME_Access;
   procedure pointerDragged (This : in out TouchJ2ME; x : Integer; y : Integer);
   procedure pointerPressed (This : in out TouchJ2ME; x : Integer; y : Integer);
   procedure pointerReleased (This : in out TouchJ2ME; x : Integer; y : Integer);

end org.allbinary.input.TouchJ2ME_Package;


