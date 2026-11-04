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

limited with org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package;
package org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References is
   type GameFeatureFormUtil_Access is access all org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package.GameFeatureFormUtil'Class;
   type GameFeatureFormUtil_Access_Array is array (Natural range <>) of GameFeatureFormUtil_Access;
   type GameFeatureFormUtil_Access_Array_Access is access all GameFeatureFormUtil_Access_Array;
   type GameFeatureFormUtil_Access_Array_Access_Array is array (Natural range <>) of GameFeatureFormUtil_Access_Array_Access;
   type GameFeatureFormUtil_Access_Array_Access_Array_Access is access all GameFeatureFormUtil_Access_Array_Access_Array;
end org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References;

with org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References;
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
limited with org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package_References;
limited with org.allbinary.logic.MEUtil_Package;
with org.allbinary.logic.MEUtil_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package is

   package ChoiceGroup_Package renames Standard.javax.microedition.lcdui.ChoiceGroup_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package MEUtil_Package renames Standard.org.allbinary.logic.MEUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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
   subtype CommandForm_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access;
   use type CommandForm_Access;
   subtype CommandForm_Access_Array is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array;
   use type CommandForm_Access_Array;
   subtype CommandForm_Access_Array_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access;
   use type CommandForm_Access_Array_Access;
   subtype CommandForm_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access_Array;
   use type CommandForm_Access_Array_Access_Array;
   subtype CommandForm_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access_Array_Access;
   use type CommandForm_Access_Array_Access_Array_Access;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameFeatureFormUtil_Access is org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References.GameFeatureFormUtil_Access;
   function "=" (Left, Right : GameFeatureFormUtil_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References."=";
   subtype GameFeatureFormUtil_Access_Array is org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References.GameFeatureFormUtil_Access_Array;
   function "=" (Left, Right : GameFeatureFormUtil_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References."=";
   subtype GameFeatureFormUtil_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References.GameFeatureFormUtil_Access_Array_Access;
   function "=" (Left, Right : GameFeatureFormUtil_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References."=";
   subtype GameFeatureFormUtil_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References.GameFeatureFormUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureFormUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References."=";
   subtype GameFeatureFormUtil_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References.GameFeatureFormUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureFormUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package_References."=";

   type GameFeatureFormUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      meUtil : MEUtil_Access;
   end record;
   instance : GameFeatureFormUtil_Access;

   procedure Initialize (This : in out GameFeatureFormUtil'Class);
   function Create return GameFeatureFormUtil_Access;
   function getInstance return GameFeatureFormUtil_Access;
   function getChoiceGroup (This : in out GameFeatureFormUtil; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; name : Unbounded_String; option : Integer) return ChoiceGroup_Access;
   procedure getChoiceGroup (This : in out GameFeatureFormUtil; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; name : Unbounded_String; option : Integer);
   procedure addChoiceGroup (This : in out GameFeatureFormUtil; form_Param : access CommandForm_Package.CommandForm'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; option : Integer);
   procedure setDefault (This : in out GameFeatureFormUtil; form_Param : access CommandForm_Package.CommandForm'Class);

end org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package;


