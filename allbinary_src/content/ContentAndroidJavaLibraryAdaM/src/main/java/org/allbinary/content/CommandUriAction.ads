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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with android.content.Intent_Package; use android.content.Intent_Package;
with android.net.Uri_Package; use android.net.Uri_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.content.CommandUriAction_Package is

   package Intent_Package renames Standard.android.content.Intent_Package;
   package Uri_Package renames Standard.android.net.Uri_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type CommandUriAction is tagged;
   type CommandUriAction_Access is access all CommandUriAction'Class;
   type CommandUriAction_Access_Array is array (Natural range <>) of CommandUriAction_Access;
   type CommandUriAction_Access_Array_Access is access all CommandUriAction_Access_Array;

   type CommandUriAction is new Java_Object with record
      logUtil : LogUtil_Access;
      hashtable : ABHashtable_Access;
   end record;
   instance : CommandUriAction_Access;

   procedure Initialize (This : in out CommandUriAction'Class);
   function Create return CommandUriAction_Access;
   function getInstance return CommandUriAction_Access;
   procedure add (This : in out CommandUriAction; command : Command_Access; url : Unbounded_String);
   procedure process (This : in out CommandUriAction; command : Command_Access);
   function getIntent (This : in out CommandUriAction; command : Command_Access) return Intent_Access;
   procedure getIntent (This : in out CommandUriAction; command : Command_Access);

end org.allbinary.content.CommandUriAction_Package;


