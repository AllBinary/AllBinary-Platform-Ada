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
limited with org.allbinary.midlet.MidletIcon_Package;
package org.allbinary.midlet.MidletIcon_Package_References is
   type MidletIcon_Access is access all org.allbinary.midlet.MidletIcon_Package.MidletIcon'Class;
   type MidletIcon_Access_Array is array (Natural range <>) of MidletIcon_Access;
   type MidletIcon_Access_Array_Access is access all MidletIcon_Access_Array;
   type MidletIcon_Access_Array_Access_Array is array (Natural range <>) of MidletIcon_Access_Array_Access;
   type MidletIcon_Access_Array_Access_Array_Access is access all MidletIcon_Access_Array_Access_Array;
   type MidletIcon_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MidletIcon_Access_Array_Access;
   end record;
   function Java_Box (Value : MidletIcon_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MidletIcon_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MidletIcon_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MidletIcon_Access_Array_Access is (if Value /= null and then Value.all in MidletIcon_Access_Array_Object'Class then MidletIcon_Access_Array_Object'Class (Value.all).Value else null);
   type MidletIcon_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MidletIcon_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MidletIcon_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MidletIcon_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MidletIcon_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MidletIcon_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MidletIcon_Access_Array_Access_Array_Object'Class then MidletIcon_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.midlet.MidletIcon_Package_References;

with org.allbinary.midlet.MidletIcon_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.midlet.MidletIcon_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MidletIcon_Access is org.allbinary.midlet.MidletIcon_Package_References.MidletIcon_Access;
   function "=" (Left, Right : MidletIcon_Access) return Boolean renames org.allbinary.midlet.MidletIcon_Package_References."=";
   subtype MidletIcon_Access_Array is org.allbinary.midlet.MidletIcon_Package_References.MidletIcon_Access_Array;
   function "=" (Left, Right : MidletIcon_Access_Array) return Boolean renames org.allbinary.midlet.MidletIcon_Package_References."=";
   subtype MidletIcon_Access_Array_Access is org.allbinary.midlet.MidletIcon_Package_References.MidletIcon_Access_Array_Access;
   function "=" (Left, Right : MidletIcon_Access_Array_Access) return Boolean renames org.allbinary.midlet.MidletIcon_Package_References."=";
   function Java_Box (Value : MidletIcon_Access_Array_Access) return Java_Object_Access renames org.allbinary.midlet.MidletIcon_Package_References.Java_Box;
   function Java_Unbox_MidletIcon_Access_Array (Value : access Java_Object'Class) return MidletIcon_Access_Array_Access renames org.allbinary.midlet.MidletIcon_Package_References.Java_Unbox_MidletIcon_Access_Array;
   subtype MidletIcon_Access_Array_Access_Array is org.allbinary.midlet.MidletIcon_Package_References.MidletIcon_Access_Array_Access_Array;
   function "=" (Left, Right : MidletIcon_Access_Array_Access_Array) return Boolean renames org.allbinary.midlet.MidletIcon_Package_References."=";
   subtype MidletIcon_Access_Array_Access_Array_Access is org.allbinary.midlet.MidletIcon_Package_References.MidletIcon_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MidletIcon_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.midlet.MidletIcon_Package_References."=";
   function Java_Box (Value : MidletIcon_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.midlet.MidletIcon_Package_References.Java_Box;
   function Java_Unbox_MidletIcon_Access_Array_Access_Array (Value : access Java_Object'Class) return MidletIcon_Access_Array_Access_Array_Access renames org.allbinary.midlet.MidletIcon_Package_References.Java_Unbox_MidletIcon_Access_Array_Access_Array;

   type MidletIcon is new Java_Object with null record;
   RESOURCE : Unbounded_String;

   procedure Initialize (This : in out MidletIcon'Class);
   function Create return MidletIcon_Access;

end org.allbinary.midlet.MidletIcon_Package;


