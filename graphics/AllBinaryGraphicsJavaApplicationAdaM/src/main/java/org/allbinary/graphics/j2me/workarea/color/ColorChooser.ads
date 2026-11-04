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

limited with org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package;
package org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References is
   type ColorChooser_Access is access all org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package.ColorChooser'Class;
   type ColorChooser_Access_Array is array (Natural range <>) of ColorChooser_Access;
   type ColorChooser_Access_Array_Access is access all ColorChooser_Access_Array;
   type ColorChooser_Access_Array_Access_Array is array (Natural range <>) of ColorChooser_Access_Array_Access;
   type ColorChooser_Access_Array_Access_Array_Access is access all ColorChooser_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References;

with org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.j2me.workarea.color.JPanel_Package; use org.allbinary.graphics.j2me.workarea.color.JPanel_Package;

package org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ColorChooser_Access is org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References.ColorChooser_Access;
   function "=" (Left, Right : ColorChooser_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References."=";
   subtype ColorChooser_Access_Array is org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References.ColorChooser_Access_Array;
   function "=" (Left, Right : ColorChooser_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References."=";
   subtype ColorChooser_Access_Array_Access is org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References.ColorChooser_Access_Array_Access;
   function "=" (Left, Right : ColorChooser_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References."=";
   subtype ColorChooser_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References.ColorChooser_Access_Array_Access_Array;
   function "=" (Left, Right : ColorChooser_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References."=";
   subtype ColorChooser_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References.ColorChooser_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorChooser_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package_References."=";

   type ColorChooser is new JPanel with record
      jColorChooser1 : JColorChooser_Access;
   end record;

   procedure Initialize (This : in out ColorChooser'Class);
   function Create return ColorChooser_Access;
   procedure initComponents (This : in out ColorChooser);

end org.allbinary.graphics.j2me.workarea.color.ColorChooser_Package;


