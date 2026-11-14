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
limited with org.allbinary.image.ChoiceGroupImageUtil_Package;
package org.allbinary.image.ChoiceGroupImageUtil_Package_References is
   type ChoiceGroupImageUtil_Access is access all org.allbinary.image.ChoiceGroupImageUtil_Package.ChoiceGroupImageUtil'Class;
   type ChoiceGroupImageUtil_Access_Array is array (Natural range <>) of ChoiceGroupImageUtil_Access;
   type ChoiceGroupImageUtil_Access_Array_Access is access all ChoiceGroupImageUtil_Access_Array;
   type ChoiceGroupImageUtil_Access_Array_Access_Array is array (Natural range <>) of ChoiceGroupImageUtil_Access_Array_Access;
   type ChoiceGroupImageUtil_Access_Array_Access_Array_Access is access all ChoiceGroupImageUtil_Access_Array_Access_Array;
   type ChoiceGroupImageUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ChoiceGroupImageUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ChoiceGroupImageUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ChoiceGroupImageUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ChoiceGroupImageUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ChoiceGroupImageUtil_Access_Array_Access is (if Value /= null and then Value.all in ChoiceGroupImageUtil_Access_Array_Object'Class then ChoiceGroupImageUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ChoiceGroupImageUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ChoiceGroupImageUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ChoiceGroupImageUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ChoiceGroupImageUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ChoiceGroupImageUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ChoiceGroupImageUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ChoiceGroupImageUtil_Access_Array_Access_Array_Object'Class then ChoiceGroupImageUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.ChoiceGroupImageUtil_Package_References;

with org.allbinary.image.ChoiceGroupImageUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;

package org.allbinary.image.ChoiceGroupImageUtil_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Reference_Types is
   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   use type GL_Access;
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   use type GL_Access_Array;
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   use type GL_Access_Array_Access;
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   use type GL_Access_Array_Access_Array;
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   use type GL_Access_Array_Access_Array_Access;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ChoiceGroupImageUtil_Access is org.allbinary.image.ChoiceGroupImageUtil_Package_References.ChoiceGroupImageUtil_Access;
   function "=" (Left, Right : ChoiceGroupImageUtil_Access) return Boolean renames org.allbinary.image.ChoiceGroupImageUtil_Package_References."=";
   subtype ChoiceGroupImageUtil_Access_Array is org.allbinary.image.ChoiceGroupImageUtil_Package_References.ChoiceGroupImageUtil_Access_Array;
   function "=" (Left, Right : ChoiceGroupImageUtil_Access_Array) return Boolean renames org.allbinary.image.ChoiceGroupImageUtil_Package_References."=";
   subtype ChoiceGroupImageUtil_Access_Array_Access is org.allbinary.image.ChoiceGroupImageUtil_Package_References.ChoiceGroupImageUtil_Access_Array_Access;
   function "=" (Left, Right : ChoiceGroupImageUtil_Access_Array_Access) return Boolean renames org.allbinary.image.ChoiceGroupImageUtil_Package_References."=";
   function Java_Box (Value : ChoiceGroupImageUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.ChoiceGroupImageUtil_Package_References.Java_Box;
   function Java_Unbox_ChoiceGroupImageUtil_Access_Array (Value : access Java_Object'Class) return ChoiceGroupImageUtil_Access_Array_Access renames org.allbinary.image.ChoiceGroupImageUtil_Package_References.Java_Unbox_ChoiceGroupImageUtil_Access_Array;
   subtype ChoiceGroupImageUtil_Access_Array_Access_Array is org.allbinary.image.ChoiceGroupImageUtil_Package_References.ChoiceGroupImageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ChoiceGroupImageUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ChoiceGroupImageUtil_Package_References."=";
   subtype ChoiceGroupImageUtil_Access_Array_Access_Array_Access is org.allbinary.image.ChoiceGroupImageUtil_Package_References.ChoiceGroupImageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ChoiceGroupImageUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ChoiceGroupImageUtil_Package_References."=";
   function Java_Box (Value : ChoiceGroupImageUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.ChoiceGroupImageUtil_Package_References.Java_Box;
   function Java_Unbox_ChoiceGroupImageUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ChoiceGroupImageUtil_Access_Array_Access_Array_Access renames org.allbinary.image.ChoiceGroupImageUtil_Package_References.Java_Unbox_ChoiceGroupImageUtil_Access_Array_Access_Array;

   type ChoiceGroupImageUtil is new Java_Object with null record;
   instance : ChoiceGroupImageUtil_Access;

   procedure Initialize (This : in out ChoiceGroupImageUtil'Class);
   function Create return ChoiceGroupImageUtil_Access;
   function getInstance return ChoiceGroupImageUtil_Access;
   procedure init (This : in out ChoiceGroupImageUtil);
   procedure update (This : in out ChoiceGroupImageUtil; gl_Param : access GL_Package.GL'Class);
   procedure update (This : in out ChoiceGroupImageUtil; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.image.ChoiceGroupImageUtil_Package;


