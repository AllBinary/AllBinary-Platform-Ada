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

limited with org.allbinary.graphics.paint.PaintableInterface_Package;
package org.allbinary.graphics.paint.PaintableInterface_Package_References is
   type PaintableInterface_Access is access all org.allbinary.graphics.paint.PaintableInterface_Package.PaintableInterface'Class;
   type PaintableInterface_Access_Array is array (Natural range <>) of PaintableInterface_Access;
   type PaintableInterface_Access_Array_Access is access all PaintableInterface_Access_Array;
   type PaintableInterface_Access_Array_Access_Array is array (Natural range <>) of PaintableInterface_Access_Array_Access;
   type PaintableInterface_Access_Array_Access_Array_Access is access all PaintableInterface_Access_Array_Access_Array;
end org.allbinary.graphics.paint.PaintableInterface_Package_References;

with org.allbinary.graphics.paint.PaintableInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;

package org.allbinary.graphics.paint.PaintableInterface_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PaintableInterface is interface;
   subtype PaintableInterface_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access;
   function "=" (Left, Right : PaintableInterface_Access) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array;
   function "=" (Left, Right : PaintableInterface_Access_Array) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access;
   function "=" (Left, Right : PaintableInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaintableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaintableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   function Java_Object_Access_From_PaintableInterface (Value : PaintableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure paint (This : in out PaintableInterface; graphics_Param : access Graphics_Package.Graphics'Class) is abstract;
   procedure paintThreed (This : in out PaintableInterface; graphics_Param : access Graphics_Package.Graphics'Class) is abstract;

end org.allbinary.graphics.paint.PaintableInterface_Package;


