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

limited with org.allbinary.game.displayable.canvas.FormUtil_Package;
package org.allbinary.game.displayable.canvas.FormUtil_Package_References is
   type FormUtil_Access is access all org.allbinary.game.displayable.canvas.FormUtil_Package.FormUtil'Class;
   type FormUtil_Access_Array is array (Natural range <>) of FormUtil_Access;
   type FormUtil_Access_Array_Access is access all FormUtil_Access_Array;
   type FormUtil_Access_Array_Access_Array is array (Natural range <>) of FormUtil_Access_Array_Access;
   type FormUtil_Access_Array_Access_Array_Access is access all FormUtil_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.FormUtil_Package_References;

with org.allbinary.game.displayable.canvas.FormUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;

package org.allbinary.game.displayable.canvas.FormUtil_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FormUtil_Access is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access;
   function "=" (Left, Right : FormUtil_Access) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   subtype FormUtil_Access_Array is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access_Array;
   function "=" (Left, Right : FormUtil_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   subtype FormUtil_Access_Array_Access is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access_Array_Access;
   function "=" (Left, Right : FormUtil_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   subtype FormUtil_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FormUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   subtype FormUtil_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FormUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";

   type FormUtil is new Java_Object with null record;
   instance : FormUtil_Access;

   procedure Initialize (This : in out FormUtil'Class);
   function Create return FormUtil_Access;
   function getInstance return FormUtil_Access;
   function createFormRectangle (This : in out FormUtil) return Rectangle_Access;

end org.allbinary.game.displayable.canvas.FormUtil_Package;


