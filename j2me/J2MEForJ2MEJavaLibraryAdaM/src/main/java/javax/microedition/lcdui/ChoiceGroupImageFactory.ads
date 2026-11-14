-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with javax.microedition.lcdui.ChoiceGroupImageFactory_Package;
package javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References is
   type ChoiceGroupImageFactory_Access is access all javax.microedition.lcdui.ChoiceGroupImageFactory_Package.ChoiceGroupImageFactory'Class;
   type ChoiceGroupImageFactory_Access_Array is array (Natural range <>) of ChoiceGroupImageFactory_Access;
   type ChoiceGroupImageFactory_Access_Array_Access is access all ChoiceGroupImageFactory_Access_Array;
   type ChoiceGroupImageFactory_Access_Array_Access_Array is array (Natural range <>) of ChoiceGroupImageFactory_Access_Array_Access;
   type ChoiceGroupImageFactory_Access_Array_Access_Array_Access is access all ChoiceGroupImageFactory_Access_Array_Access_Array;
   type ChoiceGroupImageFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ChoiceGroupImageFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ChoiceGroupImageFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ChoiceGroupImageFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ChoiceGroupImageFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ChoiceGroupImageFactory_Access_Array_Access is (if Value /= null and then Value.all in ChoiceGroupImageFactory_Access_Array_Object'Class then ChoiceGroupImageFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ChoiceGroupImageFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ChoiceGroupImageFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ChoiceGroupImageFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ChoiceGroupImageFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ChoiceGroupImageFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ChoiceGroupImageFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ChoiceGroupImageFactory_Access_Array_Access_Array_Object'Class then ChoiceGroupImageFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References;

with javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.MIDPUtil_Package;
with org.allbinary.MIDPUtil_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;

package javax.microedition.lcdui.ChoiceGroupImageFactory_Package is

   package MIDPUtil_Package renames Standard.org.allbinary.MIDPUtil_Package;
   package Reference_Types is
   subtype MIDPUtil_Access is org.allbinary.MIDPUtil_Package_References.MIDPUtil_Access;
   use type MIDPUtil_Access;
   subtype MIDPUtil_Access_Array is org.allbinary.MIDPUtil_Package_References.MIDPUtil_Access_Array;
   use type MIDPUtil_Access_Array;
   subtype MIDPUtil_Access_Array_Access is org.allbinary.MIDPUtil_Package_References.MIDPUtil_Access_Array_Access;
   use type MIDPUtil_Access_Array_Access;
   subtype MIDPUtil_Access_Array_Access_Array is org.allbinary.MIDPUtil_Package_References.MIDPUtil_Access_Array_Access_Array;
   use type MIDPUtil_Access_Array_Access_Array;
   subtype MIDPUtil_Access_Array_Access_Array_Access is org.allbinary.MIDPUtil_Package_References.MIDPUtil_Access_Array_Access_Array_Access;
   use type MIDPUtil_Access_Array_Access_Array_Access;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ChoiceGroupImageFactory_Access is javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References.ChoiceGroupImageFactory_Access;
   function "=" (Left, Right : ChoiceGroupImageFactory_Access) return Boolean renames javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References."=";
   subtype ChoiceGroupImageFactory_Access_Array is javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References.ChoiceGroupImageFactory_Access_Array;
   function "=" (Left, Right : ChoiceGroupImageFactory_Access_Array) return Boolean renames javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References."=";
   subtype ChoiceGroupImageFactory_Access_Array_Access is javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References.ChoiceGroupImageFactory_Access_Array_Access;
   function "=" (Left, Right : ChoiceGroupImageFactory_Access_Array_Access) return Boolean renames javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References."=";
   function Java_Box (Value : ChoiceGroupImageFactory_Access_Array_Access) return Java_Object_Access renames javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References.Java_Box;
   function Java_Unbox_ChoiceGroupImageFactory_Access_Array (Value : access Java_Object'Class) return ChoiceGroupImageFactory_Access_Array_Access renames javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References.Java_Unbox_ChoiceGroupImageFactory_Access_Array;
   subtype ChoiceGroupImageFactory_Access_Array_Access_Array is javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References.ChoiceGroupImageFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ChoiceGroupImageFactory_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References."=";
   subtype ChoiceGroupImageFactory_Access_Array_Access_Array_Access is javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References.ChoiceGroupImageFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ChoiceGroupImageFactory_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References."=";
   function Java_Box (Value : ChoiceGroupImageFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References.Java_Box;
   function Java_Unbox_ChoiceGroupImageFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ChoiceGroupImageFactory_Access_Array_Access_Array_Access renames javax.microedition.lcdui.ChoiceGroupImageFactory_Package_References.Java_Unbox_ChoiceGroupImageFactory_Access_Array_Access_Array;

   type ChoiceGroupImageFactory is new Java_Object with record
      multiOff : Short_Short_Integer_Array_Access;
      multiOn : Short_Short_Integer_Array_Access;
      radioOff : Short_Short_Integer_Array_Access;
      radioOn : Short_Short_Integer_Array_Access;
      midpUtil : MIDPUtil_Access;
      imgMultiOffO : Image_Access;
      imgMultiOnO : Image_Access;
      imgRadioOffO : Image_Access;
      imgRadioOnO : Image_Access;
      imgMultiOff : Image_Access;
      imgMultiOn : Image_Access;
      imgRadioOff : Image_Access;
      imgRadioOn : Image_Access;
      imageArray : Image_Access_Array_Access;
   end record;
   instance : ChoiceGroupImageFactory_Access;

   procedure Initialize (This : in out ChoiceGroupImageFactory'Class);
   function Create return ChoiceGroupImageFactory_Access;
   function getInstance return ChoiceGroupImageFactory_Access;
   function getImageArray (This : in out ChoiceGroupImageFactory) return Image_Access_Array_Access;
   procedure init (This : in out ChoiceGroupImageFactory; imageArray : Image_Access_Array_Access);

end javax.microedition.lcdui.ChoiceGroupImageFactory_Package;


