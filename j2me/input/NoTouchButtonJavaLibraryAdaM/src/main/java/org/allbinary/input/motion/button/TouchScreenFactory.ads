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

limited with org.allbinary.input.motion.button.TouchScreenFactory_Package;
package org.allbinary.input.motion.button.TouchScreenFactory_Package_References is
   type TouchScreenFactory_Access is access all org.allbinary.input.motion.button.TouchScreenFactory_Package.TouchScreenFactory'Class;
   type TouchScreenFactory_Access_Array is array (Natural range <>) of TouchScreenFactory_Access;
   type TouchScreenFactory_Access_Array_Access is access all TouchScreenFactory_Access_Array;
   type TouchScreenFactory_Access_Array_Access_Array is array (Natural range <>) of TouchScreenFactory_Access_Array_Access;
   type TouchScreenFactory_Access_Array_Access_Array_Access is access all TouchScreenFactory_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchScreenFactory_Package_References;

with org.allbinary.input.motion.button.TouchScreenFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.button.TouchScreenType_Package;
with org.allbinary.input.motion.button.TouchScreenType_Package_References;

package org.allbinary.input.motion.button.TouchScreenFactory_Package is

   package Reference_Types is
   subtype TouchScreenType_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access;
   use type TouchScreenType_Access;
   subtype TouchScreenType_Access_Array is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array;
   use type TouchScreenType_Access_Array;
   subtype TouchScreenType_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access;
   use type TouchScreenType_Access_Array_Access;
   subtype TouchScreenType_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access_Array;
   use type TouchScreenType_Access_Array_Access_Array;
   subtype TouchScreenType_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access_Array_Access;
   use type TouchScreenType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchScreenFactory_Access is org.allbinary.input.motion.button.TouchScreenFactory_Package_References.TouchScreenFactory_Access;
   function "=" (Left, Right : TouchScreenFactory_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References."=";
   subtype TouchScreenFactory_Access_Array is org.allbinary.input.motion.button.TouchScreenFactory_Package_References.TouchScreenFactory_Access_Array;
   function "=" (Left, Right : TouchScreenFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References."=";
   subtype TouchScreenFactory_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenFactory_Package_References.TouchScreenFactory_Access_Array_Access;
   function "=" (Left, Right : TouchScreenFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References."=";
   subtype TouchScreenFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchScreenFactory_Package_References.TouchScreenFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchScreenFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References."=";
   subtype TouchScreenFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenFactory_Package_References.TouchScreenFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchScreenFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References."=";

   type TouchScreenFactory is new Java_Object with record
      multiTouch : Boolean;
      touch : Boolean;
      touchScreenType : TouchScreenType_Access;
   end record;
   SINGLETON : TouchScreenFactory_Access;

   procedure Initialize (This : in out TouchScreenFactory'Class);
   function Create return TouchScreenFactory_Access;
   function getInstance return TouchScreenFactory_Access;
   function isMultiTouch (This : in out TouchScreenFactory) return Boolean;
   procedure setTouch (This : in out TouchScreenFactory; touch : Boolean);
   function isTouch (This : in out TouchScreenFactory) return Boolean;
   function getTouchScreenType (This : in out TouchScreenFactory) return TouchScreenType_Access;

end org.allbinary.input.motion.button.TouchScreenFactory_Package;


