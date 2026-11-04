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

limited with org.allbinary.game.layer.PaintableLayerComposite_Package;
package org.allbinary.game.layer.PaintableLayerComposite_Package_References is
   type PaintableLayerComposite_Access is access all org.allbinary.game.layer.PaintableLayerComposite_Package.PaintableLayerComposite'Class;
   type PaintableLayerComposite_Access_Array is array (Natural range <>) of PaintableLayerComposite_Access;
   type PaintableLayerComposite_Access_Array_Access is access all PaintableLayerComposite_Access_Array;
   type PaintableLayerComposite_Access_Array_Access_Array is array (Natural range <>) of PaintableLayerComposite_Access_Array_Access;
   type PaintableLayerComposite_Access_Array_Access_Array_Access is access all PaintableLayerComposite_Access_Array_Access_Array;
end org.allbinary.game.layer.PaintableLayerComposite_Package_References;

with org.allbinary.game.layer.PaintableLayerComposite_Package_References;
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
limited with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.Layer_Package_References;

package org.allbinary.game.layer.PaintableLayerComposite_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
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
   subtype Layer_Access is org.allbinary.layer.Layer_Package_References.Layer_Access;
   use type Layer_Access;
   subtype Layer_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array;
   use type Layer_Access_Array;
   subtype Layer_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access;
   use type Layer_Access_Array_Access;
   subtype Layer_Access_Array_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array;
   use type Layer_Access_Array_Access_Array;
   subtype Layer_Access_Array_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array_Access;
   use type Layer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaintableLayerComposite_Access is org.allbinary.game.layer.PaintableLayerComposite_Package_References.PaintableLayerComposite_Access;
   function "=" (Left, Right : PaintableLayerComposite_Access) return Boolean renames org.allbinary.game.layer.PaintableLayerComposite_Package_References."=";
   subtype PaintableLayerComposite_Access_Array is org.allbinary.game.layer.PaintableLayerComposite_Package_References.PaintableLayerComposite_Access_Array;
   function "=" (Left, Right : PaintableLayerComposite_Access_Array) return Boolean renames org.allbinary.game.layer.PaintableLayerComposite_Package_References."=";
   subtype PaintableLayerComposite_Access_Array_Access is org.allbinary.game.layer.PaintableLayerComposite_Package_References.PaintableLayerComposite_Access_Array_Access;
   function "=" (Left, Right : PaintableLayerComposite_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PaintableLayerComposite_Package_References."=";
   subtype PaintableLayerComposite_Access_Array_Access_Array is org.allbinary.game.layer.PaintableLayerComposite_Package_References.PaintableLayerComposite_Access_Array_Access_Array;
   function "=" (Left, Right : PaintableLayerComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PaintableLayerComposite_Package_References."=";
   subtype PaintableLayerComposite_Access_Array_Access_Array_Access is org.allbinary.game.layer.PaintableLayerComposite_Package_References.PaintableLayerComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaintableLayerComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PaintableLayerComposite_Package_References."=";

   type PaintableLayerComposite is new Paintable with record
      paintableArray : Layer_Access_Array_Access;
   end record;

   procedure Initialize (This : in out PaintableLayerComposite'Class; paintableArray : Layer_Access_Array_Access);
   function Create (paintableArray : Layer_Access_Array_Access) return PaintableLayerComposite_Access;
   procedure paint (This : in out PaintableLayerComposite; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out PaintableLayerComposite; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.PaintableLayerComposite_Package;


