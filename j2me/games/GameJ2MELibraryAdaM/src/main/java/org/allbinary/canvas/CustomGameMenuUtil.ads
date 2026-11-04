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

limited with org.allbinary.canvas.CustomGameMenuUtil_Package;
package org.allbinary.canvas.CustomGameMenuUtil_Package_References is
   type CustomGameMenuUtil_Access is access all org.allbinary.canvas.CustomGameMenuUtil_Package.CustomGameMenuUtil'Class;
   type CustomGameMenuUtil_Access_Array is array (Natural range <>) of CustomGameMenuUtil_Access;
   type CustomGameMenuUtil_Access_Array_Access is access all CustomGameMenuUtil_Access_Array;
   type CustomGameMenuUtil_Access_Array_Access_Array is array (Natural range <>) of CustomGameMenuUtil_Access_Array_Access;
   type CustomGameMenuUtil_Access_Array_Access_Array_Access is access all CustomGameMenuUtil_Access_Array_Access_Array;
end org.allbinary.canvas.CustomGameMenuUtil_Package_References;

with org.allbinary.canvas.CustomGameMenuUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;

package org.allbinary.canvas.CustomGameMenuUtil_Package is

   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package Reference_Types is
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   use type MyCanvas_Access;
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   use type MyCanvas_Access_Array;
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   use type MyCanvas_Access_Array_Access;
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   use type MyCanvas_Access_Array_Access_Array;
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   use type MyCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CustomGameMenuUtil_Access is org.allbinary.canvas.CustomGameMenuUtil_Package_References.CustomGameMenuUtil_Access;
   function "=" (Left, Right : CustomGameMenuUtil_Access) return Boolean renames org.allbinary.canvas.CustomGameMenuUtil_Package_References."=";
   subtype CustomGameMenuUtil_Access_Array is org.allbinary.canvas.CustomGameMenuUtil_Package_References.CustomGameMenuUtil_Access_Array;
   function "=" (Left, Right : CustomGameMenuUtil_Access_Array) return Boolean renames org.allbinary.canvas.CustomGameMenuUtil_Package_References."=";
   subtype CustomGameMenuUtil_Access_Array_Access is org.allbinary.canvas.CustomGameMenuUtil_Package_References.CustomGameMenuUtil_Access_Array_Access;
   function "=" (Left, Right : CustomGameMenuUtil_Access_Array_Access) return Boolean renames org.allbinary.canvas.CustomGameMenuUtil_Package_References."=";
   subtype CustomGameMenuUtil_Access_Array_Access_Array is org.allbinary.canvas.CustomGameMenuUtil_Package_References.CustomGameMenuUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CustomGameMenuUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.CustomGameMenuUtil_Package_References."=";
   subtype CustomGameMenuUtil_Access_Array_Access_Array_Access is org.allbinary.canvas.CustomGameMenuUtil_Package_References.CustomGameMenuUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomGameMenuUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.CustomGameMenuUtil_Package_References."=";

   type CustomGameMenuUtil is new Java_Object with null record;

   procedure Initialize (This : in out CustomGameMenuUtil'Class);
   function Create return CustomGameMenuUtil_Access;
   procedure add (canvas_Param : access MyCanvas_Package.MyCanvas'Class);

end org.allbinary.canvas.CustomGameMenuUtil_Package;


