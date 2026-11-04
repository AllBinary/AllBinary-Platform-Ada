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

limited with org.allbinary.game.displayable.canvas.MyFormUtil_Package;
package org.allbinary.game.displayable.canvas.MyFormUtil_Package_References is
   type MyFormUtil_Access is access all org.allbinary.game.displayable.canvas.MyFormUtil_Package.MyFormUtil'Class;
   type MyFormUtil_Access_Array is array (Natural range <>) of MyFormUtil_Access;
   type MyFormUtil_Access_Array_Access is access all MyFormUtil_Access_Array;
   type MyFormUtil_Access_Array_Access_Array is array (Natural range <>) of MyFormUtil_Access_Array_Access;
   type MyFormUtil_Access_Array_Access_Array_Access is access all MyFormUtil_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.MyFormUtil_Package_References;

with org.allbinary.game.displayable.canvas.MyFormUtil_Package_References;
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
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.game.displayable.canvas.MyFormUtil_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MyFormUtil_Access is org.allbinary.game.displayable.canvas.MyFormUtil_Package_References.MyFormUtil_Access;
   function "=" (Left, Right : MyFormUtil_Access) return Boolean renames org.allbinary.game.displayable.canvas.MyFormUtil_Package_References."=";
   subtype MyFormUtil_Access_Array is org.allbinary.game.displayable.canvas.MyFormUtil_Package_References.MyFormUtil_Access_Array;
   function "=" (Left, Right : MyFormUtil_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.MyFormUtil_Package_References."=";
   subtype MyFormUtil_Access_Array_Access is org.allbinary.game.displayable.canvas.MyFormUtil_Package_References.MyFormUtil_Access_Array_Access;
   function "=" (Left, Right : MyFormUtil_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.MyFormUtil_Package_References."=";
   subtype MyFormUtil_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.MyFormUtil_Package_References.MyFormUtil_Access_Array_Access_Array;
   function "=" (Left, Right : MyFormUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.MyFormUtil_Package_References."=";
   subtype MyFormUtil_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.MyFormUtil_Package_References.MyFormUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyFormUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.MyFormUtil_Package_References."=";

   type MyFormUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      popupMenuRectangle : Rectangle_Access;
   end record;
   instance : MyFormUtil_Access;

   procedure Initialize (This : in out MyFormUtil'Class);
   function Create return MyFormUtil_Access;
   function getInstance return MyFormUtil_Access;
   procedure updateMeasurement (This : in out MyFormUtil; graphics_Param : access Graphics_Package.Graphics'Class);
   function getPopupMenuRectangle (This : in out MyFormUtil) return Rectangle_Access;

end org.allbinary.game.displayable.canvas.MyFormUtil_Package;


