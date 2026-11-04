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

limited with org.allbinary.graphics.paint.PaintableComposite_Package;
package org.allbinary.graphics.paint.PaintableComposite_Package_References is
   type PaintableComposite_Access is access all org.allbinary.graphics.paint.PaintableComposite_Package.PaintableComposite'Class;
   type PaintableComposite_Access_Array is array (Natural range <>) of PaintableComposite_Access;
   type PaintableComposite_Access_Array_Access is access all PaintableComposite_Access_Array;
   type PaintableComposite_Access_Array_Access_Array is array (Natural range <>) of PaintableComposite_Access_Array_Access;
   type PaintableComposite_Access_Array_Access_Array_Access is access all PaintableComposite_Access_Array_Access_Array;
end org.allbinary.graphics.paint.PaintableComposite_Package_References;

with org.allbinary.graphics.paint.PaintableComposite_Package_References;
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
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
limited with org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package_References;

package org.allbinary.graphics.paint.PaintableComposite_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype PaintableComposite_Access is org.allbinary.graphics.paint.PaintableComposite_Package_References.PaintableComposite_Access;
   function "=" (Left, Right : PaintableComposite_Access) return Boolean renames org.allbinary.graphics.paint.PaintableComposite_Package_References."=";
   subtype PaintableComposite_Access_Array is org.allbinary.graphics.paint.PaintableComposite_Package_References.PaintableComposite_Access_Array;
   function "=" (Left, Right : PaintableComposite_Access_Array) return Boolean renames org.allbinary.graphics.paint.PaintableComposite_Package_References."=";
   subtype PaintableComposite_Access_Array_Access is org.allbinary.graphics.paint.PaintableComposite_Package_References.PaintableComposite_Access_Array_Access;
   function "=" (Left, Right : PaintableComposite_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.PaintableComposite_Package_References."=";
   subtype PaintableComposite_Access_Array_Access_Array is org.allbinary.graphics.paint.PaintableComposite_Package_References.PaintableComposite_Access_Array_Access_Array;
   function "=" (Left, Right : PaintableComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.PaintableComposite_Package_References."=";
   subtype PaintableComposite_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.PaintableComposite_Package_References.PaintableComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaintableComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.PaintableComposite_Package_References."=";

   type PaintableComposite is new Paintable with record
      paintableArray : PaintableInterface_Access_Array_Access;
   end record;

   procedure Initialize (This : in out PaintableComposite'Class; paintableArray : PaintableInterface_Access_Array_Access);
   function Create (paintableArray : PaintableInterface_Access_Array_Access) return PaintableComposite_Access;
   procedure paint (This : in out PaintableComposite; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out PaintableComposite; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.graphics.paint.PaintableComposite_Package;


