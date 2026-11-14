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

with AllBinary_Java;
limited with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
package org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References is
   type DisplayInBrowserContraintsInterface_Access is access all org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package.DisplayInBrowserContraintsInterface'Class;
   type DisplayInBrowserContraintsInterface_Access_Array is array (Natural range <>) of DisplayInBrowserContraintsInterface_Access;
   type DisplayInBrowserContraintsInterface_Access_Array_Access is access all DisplayInBrowserContraintsInterface_Access_Array;
   type DisplayInBrowserContraintsInterface_Access_Array_Access_Array is array (Natural range <>) of DisplayInBrowserContraintsInterface_Access_Array_Access;
   type DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access is access all DisplayInBrowserContraintsInterface_Access_Array_Access_Array;
   type DisplayInBrowserContraintsInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DisplayInBrowserContraintsInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : DisplayInBrowserContraintsInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DisplayInBrowserContraintsInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DisplayInBrowserContraintsInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DisplayInBrowserContraintsInterface_Access_Array_Access is (if Value /= null and then Value.all in DisplayInBrowserContraintsInterface_Access_Array_Object'Class then DisplayInBrowserContraintsInterface_Access_Array_Object'Class (Value.all).Value else null);
   type DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DisplayInBrowserContraintsInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Object'Class then DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References;

with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type DisplayInBrowserContraintsInterface is interface;
   subtype DisplayInBrowserContraintsInterface_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   subtype DisplayInBrowserContraintsInterface_Access_Array is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   function Java_Box (Value : DisplayInBrowserContraintsInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.Java_Box;
   function Java_Unbox_DisplayInBrowserContraintsInterface_Access_Array (Value : access Java_Object'Class) return DisplayInBrowserContraintsInterface_Access_Array_Access renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.Java_Unbox_DisplayInBrowserContraintsInterface_Access_Array;
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   function Java_Box (Value : DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.Java_Box;
   function Java_Unbox_DisplayInBrowserContraintsInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.Java_Unbox_DisplayInBrowserContraintsInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_DisplayInBrowserContraintsInterface (Value : DisplayInBrowserContraintsInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function isMountable (This : in out DisplayInBrowserContraintsInterface) return Boolean is abstract;
   function isFrameable (This : in out DisplayInBrowserContraintsInterface) return Boolean is abstract;
   function isQuickFrameable (This : in out DisplayInBrowserContraintsInterface) return Boolean is abstract;
   procedure setMountable (This : in out DisplayInBrowserContraintsInterface; canBeMounted : Boolean) is abstract;
   procedure setFrameable (This : in out DisplayInBrowserContraintsInterface; canBeFramed : Boolean) is abstract;
   procedure setQuickFrameable (This : in out DisplayInBrowserContraintsInterface; canBeQuickFramed : Boolean) is abstract;
   procedure setMountedLink (This : in out DisplayInBrowserContraintsInterface; mountedLink : Unbounded_String) is abstract;
   function getMountedLink (This : in out DisplayInBrowserContraintsInterface) return Unbounded_String is abstract;

end org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;


