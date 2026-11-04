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

limited with org.allbinary.graphics.paint.ProcessPaintable_Package;
package org.allbinary.graphics.paint.ProcessPaintable_Package_References is
   type ProcessPaintable_Access is access all org.allbinary.graphics.paint.ProcessPaintable_Package.ProcessPaintable'Class;
   type ProcessPaintable_Access_Array is array (Natural range <>) of ProcessPaintable_Access;
   type ProcessPaintable_Access_Array_Access is access all ProcessPaintable_Access_Array;
   type ProcessPaintable_Access_Array_Access_Array is array (Natural range <>) of ProcessPaintable_Access_Array_Access;
   type ProcessPaintable_Access_Array_Access_Array_Access is access all ProcessPaintable_Access_Array_Access_Array;
end org.allbinary.graphics.paint.ProcessPaintable_Package_References;

with org.allbinary.graphics.paint.ProcessPaintable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.graphics.paint.ProcessPaintable_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ProcessPaintable_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access;
   function "=" (Left, Right : ProcessPaintable_Access) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   subtype ProcessPaintable_Access_Array is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array;
   function "=" (Left, Right : ProcessPaintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   subtype ProcessPaintable_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access;
   function "=" (Left, Right : ProcessPaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   subtype ProcessPaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : ProcessPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   subtype ProcessPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProcessPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";

   type ProcessPaintable is new Paintable with null record;

   procedure Initialize (This : in out ProcessPaintable'Class);
   function Create return ProcessPaintable_Access;
   procedure process (This : in out ProcessPaintable);

end org.allbinary.graphics.paint.ProcessPaintable_Package;


