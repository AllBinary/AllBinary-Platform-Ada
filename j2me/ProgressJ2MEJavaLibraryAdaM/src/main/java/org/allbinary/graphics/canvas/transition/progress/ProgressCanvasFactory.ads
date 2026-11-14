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

with AllBinary_Java;
limited with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
package org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References is
   type ProgressCanvasFactory_Access is access all org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package.ProgressCanvasFactory'Class;
   type ProgressCanvasFactory_Access_Array is array (Natural range <>) of ProgressCanvasFactory_Access;
   type ProgressCanvasFactory_Access_Array_Access is access all ProgressCanvasFactory_Access_Array;
   type ProgressCanvasFactory_Access_Array_Access_Array is array (Natural range <>) of ProgressCanvasFactory_Access_Array_Access;
   type ProgressCanvasFactory_Access_Array_Access_Array_Access is access all ProgressCanvasFactory_Access_Array_Access_Array;
   type ProgressCanvasFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProgressCanvasFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ProgressCanvasFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProgressCanvasFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProgressCanvasFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProgressCanvasFactory_Access_Array_Access is (if Value /= null and then Value.all in ProgressCanvasFactory_Access_Array_Object'Class then ProgressCanvasFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ProgressCanvasFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProgressCanvasFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ProgressCanvasFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProgressCanvasFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProgressCanvasFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProgressCanvasFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ProgressCanvasFactory_Access_Array_Access_Array_Object'Class then ProgressCanvasFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References;

with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References;

package org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package is

   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package Reference_Types is
   subtype PaintableInterface_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access;
   use type PaintableInterface_Access;
   subtype PaintableInterface_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array;
   use type PaintableInterface_Access_Array;
   subtype PaintableInterface_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access;
   use type PaintableInterface_Access_Array_Access;
   subtype PaintableInterface_Access_Array_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array;
   use type PaintableInterface_Access_Array_Access_Array;
   subtype PaintableInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array_Access;
   use type PaintableInterface_Access_Array_Access_Array_Access;
   subtype ProgressCanvas_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access;
   use type ProgressCanvas_Access;
   subtype ProgressCanvas_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array;
   use type ProgressCanvas_Access_Array;
   subtype ProgressCanvas_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access;
   use type ProgressCanvas_Access_Array_Access;
   subtype ProgressCanvas_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access_Array;
   use type ProgressCanvas_Access_Array_Access_Array;
   subtype ProgressCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access_Array_Access;
   use type ProgressCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ProgressCanvasFactory_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References.ProgressCanvasFactory_Access;
   function "=" (Left, Right : ProgressCanvasFactory_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References."=";
   subtype ProgressCanvasFactory_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References.ProgressCanvasFactory_Access_Array;
   function "=" (Left, Right : ProgressCanvasFactory_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References."=";
   subtype ProgressCanvasFactory_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References.ProgressCanvasFactory_Access_Array_Access;
   function "=" (Left, Right : ProgressCanvasFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References."=";
   function Java_Box (Value : ProgressCanvasFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References.Java_Box;
   function Java_Unbox_ProgressCanvasFactory_Access_Array (Value : access Java_Object'Class) return ProgressCanvasFactory_Access_Array_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References.Java_Unbox_ProgressCanvasFactory_Access_Array;
   subtype ProgressCanvasFactory_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References.ProgressCanvasFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressCanvasFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References."=";
   subtype ProgressCanvasFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References.ProgressCanvasFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressCanvasFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References."=";
   function Java_Box (Value : ProgressCanvasFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References.Java_Box;
   function Java_Unbox_ProgressCanvasFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ProgressCanvasFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package_References.Java_Unbox_ProgressCanvasFactory_Access_Array_Access_Array;

   type ProgressCanvasFactory is new Java_Object with null record;
   PROGRESS_FORM_SCREEN : Java_Object_Access;

   procedure Initialize (This : in out ProgressCanvasFactory'Class);
   function Create return ProgressCanvasFactory_Access;
   function getInstance return ProgressCanvas_Access;
   function getLazyInstance return PaintableInterface_Access;

end org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;


