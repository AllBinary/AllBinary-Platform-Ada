-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
limited with org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package;
package org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References is
   type KeySpecFactory_Access is access all org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package.KeySpecFactory'Class;
   type KeySpecFactory_Access_Array is array (Natural range <>) of KeySpecFactory_Access;
   type KeySpecFactory_Access_Array_Access is access all KeySpecFactory_Access_Array;
   type KeySpecFactory_Access_Array_Access_Array is array (Natural range <>) of KeySpecFactory_Access_Array_Access;
   type KeySpecFactory_Access_Array_Access_Array_Access is access all KeySpecFactory_Access_Array_Access_Array;
   type KeySpecFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeySpecFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : KeySpecFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeySpecFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeySpecFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeySpecFactory_Access_Array_Access is (if Value /= null and then Value.all in KeySpecFactory_Access_Array_Object'Class then KeySpecFactory_Access_Array_Object'Class (Value.all).Value else null);
   type KeySpecFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeySpecFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : KeySpecFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeySpecFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeySpecFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeySpecFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in KeySpecFactory_Access_Array_Access_Array_Object'Class then KeySpecFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References;

with org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.security.spec.KeySpec_Package; use java.security.spec.KeySpec_Package;

package org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package is

   package KeySpec_Package renames Standard.java.security.spec.KeySpec_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype KeySpecFactory_Access is org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References.KeySpecFactory_Access;
   function "=" (Left, Right : KeySpecFactory_Access) return Boolean renames org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References."=";
   subtype KeySpecFactory_Access_Array is org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References.KeySpecFactory_Access_Array;
   function "=" (Left, Right : KeySpecFactory_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References."=";
   subtype KeySpecFactory_Access_Array_Access is org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References.KeySpecFactory_Access_Array_Access;
   function "=" (Left, Right : KeySpecFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References."=";
   function Java_Box (Value : KeySpecFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References.Java_Box;
   function Java_Unbox_KeySpecFactory_Access_Array (Value : access Java_Object'Class) return KeySpecFactory_Access_Array_Access renames org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References.Java_Unbox_KeySpecFactory_Access_Array;
   subtype KeySpecFactory_Access_Array_Access_Array is org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References.KeySpecFactory_Access_Array_Access_Array;
   function "=" (Left, Right : KeySpecFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References."=";
   subtype KeySpecFactory_Access_Array_Access_Array_Access is org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References.KeySpecFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeySpecFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References."=";
   function Java_Box (Value : KeySpecFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References.Java_Box;
   function Java_Unbox_KeySpecFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return KeySpecFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package_References.Java_Unbox_KeySpecFactory_Access_Array_Access_Array;

   type KeySpecFactory is new Java_Object with null record;
   DES : Unbounded_String;
   DESEDE : Unbounded_String;

   procedure Initialize (This : in out KeySpecFactory'Class);
   function Create return KeySpecFactory_Access;
   function getInstance (algorithm : Unbounded_String; keyData : Short_Short_Integer_Array_Access) return KeySpec_Access;
   procedure getInstance (algorithm : Unbounded_String; keyData : Short_Short_Integer_Array_Access);

end org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package;


