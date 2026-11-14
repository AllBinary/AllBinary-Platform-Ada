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
limited with org.allbinary.logic.system.security.licensing.TestClientInformation_Package;
package org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References is
   type TestClientInformation_Access is access all org.allbinary.logic.system.security.licensing.TestClientInformation_Package.TestClientInformation'Class;
   type TestClientInformation_Access_Array is array (Natural range <>) of TestClientInformation_Access;
   type TestClientInformation_Access_Array_Access is access all TestClientInformation_Access_Array;
   type TestClientInformation_Access_Array_Access_Array is array (Natural range <>) of TestClientInformation_Access_Array_Access;
   type TestClientInformation_Access_Array_Access_Array_Access is access all TestClientInformation_Access_Array_Access_Array;
   type TestClientInformation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TestClientInformation_Access_Array_Access;
   end record;
   function Java_Box (Value : TestClientInformation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TestClientInformation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TestClientInformation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TestClientInformation_Access_Array_Access is (if Value /= null and then Value.all in TestClientInformation_Access_Array_Object'Class then TestClientInformation_Access_Array_Object'Class (Value.all).Value else null);
   type TestClientInformation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TestClientInformation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TestClientInformation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TestClientInformation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TestClientInformation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TestClientInformation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TestClientInformation_Access_Array_Access_Array_Object'Class then TestClientInformation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References;

with org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.security.licensing.AbeClientInformation_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformation_Package;

package org.allbinary.logic.system.security.licensing.TestClientInformation_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TestClientInformation_Access is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access;
   function "=" (Left, Right : TestClientInformation_Access) return Boolean renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References."=";
   subtype TestClientInformation_Access_Array is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access_Array;
   function "=" (Left, Right : TestClientInformation_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References."=";
   subtype TestClientInformation_Access_Array_Access is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access_Array_Access;
   function "=" (Left, Right : TestClientInformation_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References."=";
   function Java_Box (Value : TestClientInformation_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.Java_Box;
   function Java_Unbox_TestClientInformation_Access_Array (Value : access Java_Object'Class) return TestClientInformation_Access_Array_Access renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.Java_Unbox_TestClientInformation_Access_Array;
   subtype TestClientInformation_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access_Array_Access_Array;
   function "=" (Left, Right : TestClientInformation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References."=";
   subtype TestClientInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestClientInformation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References."=";
   function Java_Box (Value : TestClientInformation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.Java_Box;
   function Java_Unbox_TestClientInformation_Access_Array_Access_Array (Value : access Java_Object'Class) return TestClientInformation_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.Java_Unbox_TestClientInformation_Access_Array_Access_Array;

   type TestClientInformation is new AbeClientInformation with null record;

   procedure Initialize (This : in out TestClientInformation'Class);
   function Create return TestClientInformation_Access;

end org.allbinary.logic.system.security.licensing.TestClientInformation_Package;


