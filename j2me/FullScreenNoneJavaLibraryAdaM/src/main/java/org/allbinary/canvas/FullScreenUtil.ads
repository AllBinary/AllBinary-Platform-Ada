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

limited with org.allbinary.canvas.FullScreenUtil_Package;
package org.allbinary.canvas.FullScreenUtil_Package_References is
   type FullScreenUtil_Access is access all org.allbinary.canvas.FullScreenUtil_Package.FullScreenUtil'Class;
   type FullScreenUtil_Access_Array is array (Natural range <>) of FullScreenUtil_Access;
   type FullScreenUtil_Access_Array_Access is access all FullScreenUtil_Access_Array;
   type FullScreenUtil_Access_Array_Access_Array is array (Natural range <>) of FullScreenUtil_Access_Array_Access;
   type FullScreenUtil_Access_Array_Access_Array_Access is access all FullScreenUtil_Access_Array_Access_Array;
end org.allbinary.canvas.FullScreenUtil_Package_References;

with org.allbinary.canvas.FullScreenUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;

package org.allbinary.canvas.FullScreenUtil_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Reference_Types is
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   use type CommandListener_Access;
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   use type CommandListener_Access_Array;
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   use type CommandListener_Access_Array_Access;
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   use type CommandListener_Access_Array_Access_Array;
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   use type CommandListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FullScreenUtil_Access is org.allbinary.canvas.FullScreenUtil_Package_References.FullScreenUtil_Access;
   function "=" (Left, Right : FullScreenUtil_Access) return Boolean renames org.allbinary.canvas.FullScreenUtil_Package_References."=";
   subtype FullScreenUtil_Access_Array is org.allbinary.canvas.FullScreenUtil_Package_References.FullScreenUtil_Access_Array;
   function "=" (Left, Right : FullScreenUtil_Access_Array) return Boolean renames org.allbinary.canvas.FullScreenUtil_Package_References."=";
   subtype FullScreenUtil_Access_Array_Access is org.allbinary.canvas.FullScreenUtil_Package_References.FullScreenUtil_Access_Array_Access;
   function "=" (Left, Right : FullScreenUtil_Access_Array_Access) return Boolean renames org.allbinary.canvas.FullScreenUtil_Package_References."=";
   subtype FullScreenUtil_Access_Array_Access_Array is org.allbinary.canvas.FullScreenUtil_Package_References.FullScreenUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FullScreenUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.FullScreenUtil_Package_References."=";
   subtype FullScreenUtil_Access_Array_Access_Array_Access is org.allbinary.canvas.FullScreenUtil_Package_References.FullScreenUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FullScreenUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.FullScreenUtil_Package_References."=";

   type FullScreenUtil is new Java_Object with null record;
   instance : FullScreenUtil_Access;

   procedure Initialize (This : in out FullScreenUtil'Class);
   function Create return FullScreenUtil_Access;
   function getInstance return FullScreenUtil_Access;
   procedure initOnRun (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure init (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class);
   function isScreenChange (This : in out FullScreenUtil; isFullScreen : Boolean) return Boolean;
   procedure isScreenChange (This : in out FullScreenUtil; isFullScreen : Boolean);
   function isScreenChangeCanvas (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class) return Boolean;
   procedure isScreenChangeCanvas (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class);

end org.allbinary.canvas.FullScreenUtil_Package;


