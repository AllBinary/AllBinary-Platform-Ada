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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.motion.button.TouchScreenTypesFactory_Package; use org.allbinary.input.motion.button.TouchScreenTypesFactory_Package;
with org.allbinary.input.motion.button.TouchScreenType_Package; use org.allbinary.input.motion.button.TouchScreenType_Package;

package org.allbinary.input.motion.button.TouchScreenFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type TouchScreenFactory is tagged;
   type TouchScreenFactory_Access is access all TouchScreenFactory'Class;
   type TouchScreenFactory_Access_Array is array (Natural range <>) of TouchScreenFactory_Access;
   type TouchScreenFactory_Access_Array_Access is access all TouchScreenFactory_Access_Array;

   type TouchScreenFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      touch : Boolean;
      multiTouch : Boolean;
      multiTouchDistinct : Boolean;
      touchScreenType : TouchScreenType_Access;
   end record;
   SINGLETON : TouchScreenFactory_Access;

   procedure Initialize (This : in out TouchScreenFactory'Class);
   function Create return TouchScreenFactory_Access;
   function getInstance return TouchScreenFactory_Access;
   procedure setMultiTouch (This : in out TouchScreenFactory; multiTouch : Boolean);
   function isMultiTouch (This : in out TouchScreenFactory) return Boolean;
   procedure setTouch (This : in out TouchScreenFactory; touch : Boolean);
   function isTouch (This : in out TouchScreenFactory) return Boolean;
   procedure setMultiTouchDistinct (This : in out TouchScreenFactory; multiTouchDistinct : Boolean);
   function isMultiTouchDistinct (This : in out TouchScreenFactory) return Boolean;
   procedure setTouchScreenType (This : in out TouchScreenFactory; touchScreenType_Param : access TouchScreenType_Package.TouchScreenType'Class);
   function getTouchScreenType (This : in out TouchScreenFactory) return TouchScreenType_Access;
   function toString (This : in out TouchScreenFactory) return Unbounded_String;

end org.allbinary.input.motion.button.TouchScreenFactory_Package;


