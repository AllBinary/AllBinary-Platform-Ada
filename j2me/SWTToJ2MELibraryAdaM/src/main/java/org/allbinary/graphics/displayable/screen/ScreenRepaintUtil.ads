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

limited with org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package;
package org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References is
   type ScreenRepaintUtil_Access is access all org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package.ScreenRepaintUtil'Class;
   type ScreenRepaintUtil_Access_Array is array (Natural range <>) of ScreenRepaintUtil_Access;
   type ScreenRepaintUtil_Access_Array_Access is access all ScreenRepaintUtil_Access_Array;
   type ScreenRepaintUtil_Access_Array_Access_Array is array (Natural range <>) of ScreenRepaintUtil_Access_Array_Access;
   type ScreenRepaintUtil_Access_Array_Access_Array_Access is access all ScreenRepaintUtil_Access_Array_Access_Array;
end org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References;

with org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;

package org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package is

   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package Reference_Types is
   subtype Displayable_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access;
   use type Displayable_Access;
   subtype Displayable_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array;
   use type Displayable_Access_Array;
   subtype Displayable_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access;
   use type Displayable_Access_Array_Access;
   subtype Displayable_Access_Array_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array;
   use type Displayable_Access_Array_Access_Array;
   subtype Displayable_Access_Array_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array_Access;
   use type Displayable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScreenRepaintUtil_Access is org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References.ScreenRepaintUtil_Access;
   function "=" (Left, Right : ScreenRepaintUtil_Access) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References."=";
   subtype ScreenRepaintUtil_Access_Array is org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References.ScreenRepaintUtil_Access_Array;
   function "=" (Left, Right : ScreenRepaintUtil_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References."=";
   subtype ScreenRepaintUtil_Access_Array_Access is org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References.ScreenRepaintUtil_Access_Array_Access;
   function "=" (Left, Right : ScreenRepaintUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References."=";
   subtype ScreenRepaintUtil_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References.ScreenRepaintUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenRepaintUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References."=";
   subtype ScreenRepaintUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References.ScreenRepaintUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenRepaintUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package_References."=";

   type ScreenRepaintUtil is new Java_Object with null record;

   procedure Initialize (This : in out ScreenRepaintUtil'Class);
   function Create return ScreenRepaintUtil_Access;
   procedure repaint (displayable_Param : access Displayable_Package.Displayable'Class);

end org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package;


