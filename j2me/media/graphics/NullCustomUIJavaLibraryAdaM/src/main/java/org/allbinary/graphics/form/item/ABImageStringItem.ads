--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.item.ABImageStringItem_Package is


   type ABImageStringItem is tagged;
   type ABImageStringItem_Access is access all ABImageStringItem'Class;
   type ABImageStringItem_Access_Array is array (Natural range <>) of ABImageStringItem_Access;
   type ABImageStringItem_Access_Array_Access is access all ABImageStringItem_Access_Array;

   type ABImageStringItem is new Java_Object with null record;

   procedure Initialize (This : in out ABImageStringItem'Class);
   function Create return ABImageStringItem_Access;

end org.allbinary.graphics.form.item.ABImageStringItem_Package;


