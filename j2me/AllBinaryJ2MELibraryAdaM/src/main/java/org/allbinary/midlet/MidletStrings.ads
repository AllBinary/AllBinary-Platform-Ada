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
limited with org.allbinary.midlet.MidletStrings_Package;
package org.allbinary.midlet.MidletStrings_Package_References is
   type MidletStrings_Access is access all org.allbinary.midlet.MidletStrings_Package.MidletStrings'Class;
   type MidletStrings_Access_Array is array (Natural range <>) of MidletStrings_Access;
   type MidletStrings_Access_Array_Access is access all MidletStrings_Access_Array;
   type MidletStrings_Access_Array_Access_Array is array (Natural range <>) of MidletStrings_Access_Array_Access;
   type MidletStrings_Access_Array_Access_Array_Access is access all MidletStrings_Access_Array_Access_Array;
   type MidletStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MidletStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : MidletStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MidletStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MidletStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MidletStrings_Access_Array_Access is (if Value /= null and then Value.all in MidletStrings_Access_Array_Object'Class then MidletStrings_Access_Array_Object'Class (Value.all).Value else null);
   type MidletStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MidletStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MidletStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MidletStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MidletStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MidletStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MidletStrings_Access_Array_Access_Array_Object'Class then MidletStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.midlet.MidletStrings_Package_References;

with org.allbinary.midlet.MidletStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.midlet.MidletStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MidletStrings_Access is org.allbinary.midlet.MidletStrings_Package_References.MidletStrings_Access;
   function "=" (Left, Right : MidletStrings_Access) return Boolean renames org.allbinary.midlet.MidletStrings_Package_References."=";
   subtype MidletStrings_Access_Array is org.allbinary.midlet.MidletStrings_Package_References.MidletStrings_Access_Array;
   function "=" (Left, Right : MidletStrings_Access_Array) return Boolean renames org.allbinary.midlet.MidletStrings_Package_References."=";
   subtype MidletStrings_Access_Array_Access is org.allbinary.midlet.MidletStrings_Package_References.MidletStrings_Access_Array_Access;
   function "=" (Left, Right : MidletStrings_Access_Array_Access) return Boolean renames org.allbinary.midlet.MidletStrings_Package_References."=";
   function Java_Box (Value : MidletStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.midlet.MidletStrings_Package_References.Java_Box;
   function Java_Unbox_MidletStrings_Access_Array (Value : access Java_Object'Class) return MidletStrings_Access_Array_Access renames org.allbinary.midlet.MidletStrings_Package_References.Java_Unbox_MidletStrings_Access_Array;
   subtype MidletStrings_Access_Array_Access_Array is org.allbinary.midlet.MidletStrings_Package_References.MidletStrings_Access_Array_Access_Array;
   function "=" (Left, Right : MidletStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.midlet.MidletStrings_Package_References."=";
   subtype MidletStrings_Access_Array_Access_Array_Access is org.allbinary.midlet.MidletStrings_Package_References.MidletStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MidletStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.midlet.MidletStrings_Package_References."=";
   function Java_Box (Value : MidletStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.midlet.MidletStrings_Package_References.Java_Box;
   function Java_Unbox_MidletStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return MidletStrings_Access_Array_Access_Array_Access renames org.allbinary.midlet.MidletStrings_Package_References.Java_Unbox_MidletStrings_Access_Array_Access_Array;

   type MidletStrings is new Java_Object with record
      COMMAND_ACTION : Unbounded_String;
   end record;
   instance : MidletStrings_Access;

   procedure Initialize (This : in out MidletStrings'Class);
   function Create return MidletStrings_Access;
   function getInstance return MidletStrings_Access;

end org.allbinary.midlet.MidletStrings_Package;


