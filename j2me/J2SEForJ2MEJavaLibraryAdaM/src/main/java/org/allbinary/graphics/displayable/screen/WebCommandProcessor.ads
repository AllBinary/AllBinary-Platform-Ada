--
-- AllBinary Open License Version 1
-- Copyright (c) 2022 AllBinary
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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.Desktop_Package; use java.awt.Desktop_Package;
--  with java.net.URI_Package; use java.net.URI_Package;
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package; use org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package;

package org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type WebCommandProcessor is tagged;
   type WebCommandProcessor_Access is access all WebCommandProcessor'Class;
   type WebCommandProcessor_Access_Array is array (Natural range <>) of WebCommandProcessor_Access;
   type WebCommandProcessor_Access_Array_Access is access all WebCommandProcessor_Access_Array;

   type WebCommandProcessor is new Java_Object with record
      logUtil : LogUtil_Access;
      aboutCommandProcessor : AboutCommandProcessor_Access;
      list : BasicArrayList_Access;
   end record;
   instance : WebCommandProcessor_Access;

   procedure Initialize (This : in out WebCommandProcessor'Class);
   function Create return WebCommandProcessor_Access;
   function getInstance return WebCommandProcessor_Access;
   procedure process (This : in out WebCommandProcessor; midletCommandListener_Param : access CommandListener_Package.CommandListener'Class; command_Param : access Command_Package.Command'Class; canvas_Param : access Canvas_Package.Canvas'Class);

end org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package;


