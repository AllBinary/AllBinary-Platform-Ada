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
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.configuration.GameOptionsFormFactory_Package is

   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package CommandForm_Package renames org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type GameOptionsFormFactory is tagged;
   type GameOptionsFormFactory_Access is access all GameOptionsFormFactory'Class;
   type GameOptionsFormFactory_Access_Array is array (Natural range <>) of GameOptionsFormFactory_Access;
   type GameOptionsFormFactory_Access_Array_Access is access all GameOptionsFormFactory_Access_Array;

   type GameOptionsFormFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : GameOptionsFormFactory_Access;

   procedure Initialize (This : in out GameOptionsFormFactory'Class);
   function Create return GameOptionsFormFactory_Access;
   function getInstance return GameOptionsFormFactory_Access;
   procedure getInstance;
   function init (This : in out GameOptionsFormFactory; commandListener : CommandListener_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return CommandForm_Access;
   procedure init (This : in out GameOptionsFormFactory; commandListener : CommandListener_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);

end org.allbinary.game.configuration.GameOptionsFormFactory_Package;


