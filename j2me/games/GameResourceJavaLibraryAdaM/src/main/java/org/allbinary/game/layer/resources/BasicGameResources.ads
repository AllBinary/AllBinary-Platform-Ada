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
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.layer.resources.BasicGameResources_Package is

   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type BasicGameResources is tagged;
   type BasicGameResources_Access is access all BasicGameResources'Class;
   type BasicGameResources_Access_Array is array (Natural range <>) of BasicGameResources_Access;
   type BasicGameResources_Access_Array_Access is access all BasicGameResources_Access_Array;

   type BasicGameResources is new Java_Object with record
      logUtil : LogUtil_Access;
      RESOURCE : Unbounded_String;
      RESOURCE_DESTROY : Unbounded_String;
   end record;
   stringBuffer : StringMaker_Access;

   procedure Initialize (This : in out BasicGameResources'Class);
   function Create return BasicGameResources_Access;
   procedure init (This : in out BasicGameResources; ROOT : Unbounded_String; SIZE : Unbounded_String_Array_Access);
   procedure append (This : in out BasicGameResources; ROOT : Unbounded_String; sizeString : Unbounded_String);
   function getString (This : in out BasicGameResources) return Unbounded_String;
   procedure getString (This : in out BasicGameResources);

end org.allbinary.game.layer.resources.BasicGameResources_Package;


