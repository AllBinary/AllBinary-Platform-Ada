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

limited with org.allbinary.game.tracking.Tracking_Package;
package org.allbinary.game.tracking.Tracking_Package_References is
   type Tracking_Access is access all org.allbinary.game.tracking.Tracking_Package.Tracking'Class;
   type Tracking_Access_Array is array (Natural range <>) of Tracking_Access;
   type Tracking_Access_Array_Access is access all Tracking_Access_Array;
   type Tracking_Access_Array_Access_Array is array (Natural range <>) of Tracking_Access_Array_Access;
   type Tracking_Access_Array_Access_Array_Access is access all Tracking_Access_Array_Access_Array;
end org.allbinary.game.tracking.Tracking_Package_References;

with org.allbinary.game.tracking.Tracking_Package_References;
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

package org.allbinary.game.tracking.Tracking_Package is

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


   subtype Tracking_Access is org.allbinary.game.tracking.Tracking_Package_References.Tracking_Access;
   function "=" (Left, Right : Tracking_Access) return Boolean renames org.allbinary.game.tracking.Tracking_Package_References."=";
   subtype Tracking_Access_Array is org.allbinary.game.tracking.Tracking_Package_References.Tracking_Access_Array;
   function "=" (Left, Right : Tracking_Access_Array) return Boolean renames org.allbinary.game.tracking.Tracking_Package_References."=";
   subtype Tracking_Access_Array_Access is org.allbinary.game.tracking.Tracking_Package_References.Tracking_Access_Array_Access;
   function "=" (Left, Right : Tracking_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.Tracking_Package_References."=";
   subtype Tracking_Access_Array_Access_Array is org.allbinary.game.tracking.Tracking_Package_References.Tracking_Access_Array_Access_Array;
   function "=" (Left, Right : Tracking_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tracking.Tracking_Package_References."=";
   subtype Tracking_Access_Array_Access_Array_Access is org.allbinary.game.tracking.Tracking_Package_References.Tracking_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Tracking_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.Tracking_Package_References."=";

   type Tracking is new Java_Object with null record;

   procedure Initialize (This : in out Tracking'Class);
   function Create return Tracking_Access;
   procedure paint (This : in out Tracking; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.tracking.Tracking_Package;


