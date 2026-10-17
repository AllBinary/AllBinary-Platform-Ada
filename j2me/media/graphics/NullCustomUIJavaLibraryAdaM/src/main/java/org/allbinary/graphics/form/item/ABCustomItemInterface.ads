--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;

package org.allbinary.graphics.form.item.ABCustomItemInterface_Package is


   type ABCustomItemInterface is interface;
   type ABCustomItemInterface_Access is access all ABCustomItemInterface'Class;
   type ABCustomItemInterface_Access_Array is array (Natural range <>) of ABCustomItemInterface_Access;
   type ABCustomItemInterface_Access_Array_Access is access all ABCustomItemInterface_Access_Array;
   function getMinimumWidth (This : in out ABCustomItemInterface) return Integer is abstract;
   function getMinimumHeight (This : in out ABCustomItemInterface) return Integer is abstract;
   function getLabel (This : in out ABCustomItemInterface) return Unbounded_String is abstract;
   procedure paintXY (This : in out ABCustomItemInterface; graphics : Graphics_Access; x : Integer; y : Integer) is abstract;
   procedure paintUnselected (This : in out ABCustomItemInterface; graphics : Graphics_Access; x : Integer; y : Integer) is abstract;

end org.allbinary.graphics.form.item.ABCustomItemInterface_Package;


