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
with javax.microedition.lcdui.ChoiceGroup_Package; use javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.logic.MEUtil_Package; use org.allbinary.logic.MEUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.configuration.LoadGameForm_Package is

   package ChoiceGroup_Package renames Standard.javax.microedition.lcdui.ChoiceGroup_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package MEUtil_Package renames Standard.org.allbinary.logic.MEUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type LoadGameForm is tagged;
   type LoadGameForm_Access is access all LoadGameForm'Class;
   type LoadGameForm_Access_Array is array (Natural range <>) of LoadGameForm_Access;
   type LoadGameForm_Access_Array_Access is access all LoadGameForm_Access_Array;
   type LoadGameForm_Access_Array_Access_Array is array (Natural range <>) of LoadGameForm_Access_Array_Access;
   type LoadGameForm_Access_Array_Access_Array_Access is access all LoadGameForm_Access_Array_Access_Array;

   type LoadGameForm is new CommandForm with record
      meUtil : MEUtil_Access;
      areChoices : Boolean;
   end record;

   procedure Initialize (This : in out LoadGameForm'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return LoadGameForm_Access;
   procedure initCommands (This : in out LoadGameForm; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure update (This : in out LoadGameForm);
   procedure add (This : in out LoadGameForm; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer);
   function getChoiceGroup (This : in out LoadGameForm; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer) return ChoiceGroup_Access;
   procedure getChoiceGroup (This : in out LoadGameForm; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer);
   function getSelectedId (This : in out LoadGameForm) return Integer;
   function getSelectedText (This : in out LoadGameForm) return Integer;

end org.allbinary.game.configuration.LoadGameForm_Package;


