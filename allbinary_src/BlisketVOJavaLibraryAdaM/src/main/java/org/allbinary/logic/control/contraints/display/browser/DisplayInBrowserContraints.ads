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
limited with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package;
package org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References is
   type DisplayInBrowserContraints_Access is access all org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package.DisplayInBrowserContraints'Class;
   type DisplayInBrowserContraints_Access_Array is array (Natural range <>) of DisplayInBrowserContraints_Access;
   type DisplayInBrowserContraints_Access_Array_Access is access all DisplayInBrowserContraints_Access_Array;
   type DisplayInBrowserContraints_Access_Array_Access_Array is array (Natural range <>) of DisplayInBrowserContraints_Access_Array_Access;
   type DisplayInBrowserContraints_Access_Array_Access_Array_Access is access all DisplayInBrowserContraints_Access_Array_Access_Array;
   type DisplayInBrowserContraints_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DisplayInBrowserContraints_Access_Array_Access;
   end record;
   function Java_Box (Value : DisplayInBrowserContraints_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DisplayInBrowserContraints_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DisplayInBrowserContraints_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DisplayInBrowserContraints_Access_Array_Access is (if Value /= null and then Value.all in DisplayInBrowserContraints_Access_Array_Object'Class then DisplayInBrowserContraints_Access_Array_Object'Class (Value.all).Value else null);
   type DisplayInBrowserContraints_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DisplayInBrowserContraints_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DisplayInBrowserContraints_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DisplayInBrowserContraints_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DisplayInBrowserContraints_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DisplayInBrowserContraints_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DisplayInBrowserContraints_Access_Array_Access_Array_Object'Class then DisplayInBrowserContraints_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References;

with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package; use org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;

package org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package is

   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DisplayInBrowserContraints_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References.DisplayInBrowserContraints_Access;
   function "=" (Left, Right : DisplayInBrowserContraints_Access) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References."=";
   subtype DisplayInBrowserContraints_Access_Array is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References.DisplayInBrowserContraints_Access_Array;
   function "=" (Left, Right : DisplayInBrowserContraints_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References."=";
   subtype DisplayInBrowserContraints_Access_Array_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References.DisplayInBrowserContraints_Access_Array_Access;
   function "=" (Left, Right : DisplayInBrowserContraints_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References."=";
   function Java_Box (Value : DisplayInBrowserContraints_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References.Java_Box;
   function Java_Unbox_DisplayInBrowserContraints_Access_Array (Value : access Java_Object'Class) return DisplayInBrowserContraints_Access_Array_Access renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References.Java_Unbox_DisplayInBrowserContraints_Access_Array;
   subtype DisplayInBrowserContraints_Access_Array_Access_Array is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References.DisplayInBrowserContraints_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInBrowserContraints_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References."=";
   subtype DisplayInBrowserContraints_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References.DisplayInBrowserContraints_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInBrowserContraints_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References."=";
   function Java_Box (Value : DisplayInBrowserContraints_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References.Java_Box;
   function Java_Unbox_DisplayInBrowserContraints_Access_Array_Access_Array (Value : access Java_Object'Class) return DisplayInBrowserContraints_Access_Array_Access_Array_Access renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package_References.Java_Unbox_DisplayInBrowserContraints_Access_Array_Access_Array;

   type DisplayInBrowserContraints is new Java_Object and DisplayInBrowserContraintsInterface with record
      frameable : Boolean;
      mountable : Boolean;
      quickFrameable : Boolean;
      mountedLink : Unbounded_String;
   end record;

   procedure Initialize (This : in out DisplayInBrowserContraints'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return DisplayInBrowserContraints_Access;
   function isMountable (This : in out DisplayInBrowserContraints) return Boolean;
   procedure setMountable (This : in out DisplayInBrowserContraints; mountable : Boolean);
   function isFrameable (This : in out DisplayInBrowserContraints) return Boolean;
   procedure setFrameable (This : in out DisplayInBrowserContraints; frameable : Boolean);
   function isQuickFrameable (This : in out DisplayInBrowserContraints) return Boolean;
   procedure setQuickFrameable (This : in out DisplayInBrowserContraints; quickFrameable : Boolean);
   function getMountedLink (This : in out DisplayInBrowserContraints) return Unbounded_String;
   procedure setMountedLink (This : in out DisplayInBrowserContraints; mountedLink : Unbounded_String);

end org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package;


