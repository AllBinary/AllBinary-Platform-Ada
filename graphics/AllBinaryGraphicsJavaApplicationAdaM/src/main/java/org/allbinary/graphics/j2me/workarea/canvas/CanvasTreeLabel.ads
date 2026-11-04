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

limited with org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package;
package org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References is
   type CanvasTreeLabel_Access is access all org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package.CanvasTreeLabel'Class;
   type CanvasTreeLabel_Access_Array is array (Natural range <>) of CanvasTreeLabel_Access;
   type CanvasTreeLabel_Access_Array_Access is access all CanvasTreeLabel_Access_Array;
   type CanvasTreeLabel_Access_Array_Access_Array is array (Natural range <>) of CanvasTreeLabel_Access_Array_Access;
   type CanvasTreeLabel_Access_Array_Access_Array_Access is access all CanvasTreeLabel_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References;

with org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CanvasTreeLabel_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References.CanvasTreeLabel_Access;
   function "=" (Left, Right : CanvasTreeLabel_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References."=";
   subtype CanvasTreeLabel_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References.CanvasTreeLabel_Access_Array;
   function "=" (Left, Right : CanvasTreeLabel_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References."=";
   subtype CanvasTreeLabel_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References.CanvasTreeLabel_Access_Array_Access;
   function "=" (Left, Right : CanvasTreeLabel_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References."=";
   subtype CanvasTreeLabel_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References.CanvasTreeLabel_Access_Array_Access_Array;
   function "=" (Left, Right : CanvasTreeLabel_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References."=";
   subtype CanvasTreeLabel_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References.CanvasTreeLabel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CanvasTreeLabel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package_References."=";

   type CanvasTreeLabel is new Java_Object with record
      label : Unbounded_String;
   end record;

   procedure Initialize (This : in out CanvasTreeLabel'Class; str : Unbounded_String);
   function Create (str : Unbounded_String) return CanvasTreeLabel_Access;
   function toString (This : in out CanvasTreeLabel) return Unbounded_String;

end org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package;


