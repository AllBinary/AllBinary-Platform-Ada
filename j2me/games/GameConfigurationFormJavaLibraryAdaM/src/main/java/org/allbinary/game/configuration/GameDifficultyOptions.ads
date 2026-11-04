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

limited with org.allbinary.game.configuration.GameDifficultyOptions_Package;
package org.allbinary.game.configuration.GameDifficultyOptions_Package_References is
   type GameDifficultyOptions_Access is access all org.allbinary.game.configuration.GameDifficultyOptions_Package.GameDifficultyOptions'Class;
   type GameDifficultyOptions_Access_Array is array (Natural range <>) of GameDifficultyOptions_Access;
   type GameDifficultyOptions_Access_Array_Access is access all GameDifficultyOptions_Access_Array;
   type GameDifficultyOptions_Access_Array_Access_Array is array (Natural range <>) of GameDifficultyOptions_Access_Array_Access;
   type GameDifficultyOptions_Access_Array_Access_Array_Access is access all GameDifficultyOptions_Access_Array_Access_Array;
end org.allbinary.game.configuration.GameDifficultyOptions_Package_References;

with org.allbinary.game.configuration.GameDifficultyOptions_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceGroup_Package_References;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;
limited with org.allbinary.logic.MEUtil_Package;
with org.allbinary.logic.MEUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.configuration.GameDifficultyOptions_Package is

   package ChoiceGroup_Package renames Standard.javax.microedition.lcdui.ChoiceGroup_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package MEUtil_Package renames Standard.org.allbinary.logic.MEUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype ChoiceGroup_Access is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access;
   use type ChoiceGroup_Access;
   subtype ChoiceGroup_Access_Array is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access_Array;
   use type ChoiceGroup_Access_Array;
   subtype ChoiceGroup_Access_Array_Access is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access_Array_Access;
   use type ChoiceGroup_Access_Array_Access;
   subtype ChoiceGroup_Access_Array_Access_Array is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access_Array_Access_Array;
   use type ChoiceGroup_Access_Array_Access_Array;
   subtype ChoiceGroup_Access_Array_Access_Array_Access is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access_Array_Access_Array_Access;
   use type ChoiceGroup_Access_Array_Access_Array_Access;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype MEUtil_Access is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access;
   use type MEUtil_Access;
   subtype MEUtil_Access_Array is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access_Array;
   use type MEUtil_Access_Array;
   subtype MEUtil_Access_Array_Access is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access_Array_Access;
   use type MEUtil_Access_Array_Access;
   subtype MEUtil_Access_Array_Access_Array is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access_Array_Access_Array;
   use type MEUtil_Access_Array_Access_Array;
   subtype MEUtil_Access_Array_Access_Array_Access is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access_Array_Access_Array_Access;
   use type MEUtil_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameDifficultyOptions_Access is org.allbinary.game.configuration.GameDifficultyOptions_Package_References.GameDifficultyOptions_Access;
   function "=" (Left, Right : GameDifficultyOptions_Access) return Boolean renames org.allbinary.game.configuration.GameDifficultyOptions_Package_References."=";
   subtype GameDifficultyOptions_Access_Array is org.allbinary.game.configuration.GameDifficultyOptions_Package_References.GameDifficultyOptions_Access_Array;
   function "=" (Left, Right : GameDifficultyOptions_Access_Array) return Boolean renames org.allbinary.game.configuration.GameDifficultyOptions_Package_References."=";
   subtype GameDifficultyOptions_Access_Array_Access is org.allbinary.game.configuration.GameDifficultyOptions_Package_References.GameDifficultyOptions_Access_Array_Access;
   function "=" (Left, Right : GameDifficultyOptions_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameDifficultyOptions_Package_References."=";
   subtype GameDifficultyOptions_Access_Array_Access_Array is org.allbinary.game.configuration.GameDifficultyOptions_Package_References.GameDifficultyOptions_Access_Array_Access_Array;
   function "=" (Left, Right : GameDifficultyOptions_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameDifficultyOptions_Package_References."=";
   subtype GameDifficultyOptions_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameDifficultyOptions_Package_References.GameDifficultyOptions_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameDifficultyOptions_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameDifficultyOptions_Package_References."=";

   type GameDifficultyOptions is new CommandForm with record
      meUtil : MEUtil_Access;
      list : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out GameDifficultyOptions'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; list_Param : access BasicArrayList_Package.BasicArrayList'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; list_Param : access BasicArrayList_Package.BasicArrayList'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return GameDifficultyOptions_Access;
   procedure open (This : in out GameDifficultyOptions);
   procedure close (This : in out GameDifficultyOptions);
   procedure save (This : in out GameDifficultyOptions);
   procedure initCommands (This : in out GameDifficultyOptions; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure update (This : in out GameDifficultyOptions);
   procedure add (This : in out GameDifficultyOptions; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer);
   function getChoiceGroup (This : in out GameDifficultyOptions; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer) return ChoiceGroup_Access;
   procedure getChoiceGroup (This : in out GameDifficultyOptions; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer);
   procedure setSelectedId (This : in out GameDifficultyOptions; id : Integer);
   function getSelectedId (This : in out GameDifficultyOptions) return Integer;
   function getSelectedText (This : in out GameDifficultyOptions) return Integer;

end org.allbinary.game.configuration.GameDifficultyOptions_Package;


