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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;

package org.allbinary.graphics.form.item.CustomCustomItem_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;

   type CustomCustomItem is tagged;
   type CustomCustomItem_Access is access all CustomCustomItem'Class;
   type CustomCustomItem_Access_Array is array (Natural range <>) of CustomCustomItem_Access;
   type CustomCustomItem_Access_Array_Access is access all CustomCustomItem_Access_Array;

   type CustomCustomItem is new ABCustomItem and UpdateMyFontInterface with record
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
   end record;

   procedure Initialize (This : in out CustomCustomItem'Class; label : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (label : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return CustomCustomItem_Access;
   procedure updateMeasurement (This : in out CustomCustomItem; graphics : Graphics_Access);

end org.allbinary.graphics.form.item.CustomCustomItem_Package;


