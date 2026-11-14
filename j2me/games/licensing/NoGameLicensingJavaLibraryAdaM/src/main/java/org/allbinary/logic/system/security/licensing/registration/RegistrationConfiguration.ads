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
limited with org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package;
package org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References is
   type RegistrationConfiguration_Access is access all org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package.RegistrationConfiguration'Class;
   type RegistrationConfiguration_Access_Array is array (Natural range <>) of RegistrationConfiguration_Access;
   type RegistrationConfiguration_Access_Array_Access is access all RegistrationConfiguration_Access_Array;
   type RegistrationConfiguration_Access_Array_Access_Array is array (Natural range <>) of RegistrationConfiguration_Access_Array_Access;
   type RegistrationConfiguration_Access_Array_Access_Array_Access is access all RegistrationConfiguration_Access_Array_Access_Array;
   type RegistrationConfiguration_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RegistrationConfiguration_Access_Array_Access;
   end record;
   function Java_Box (Value : RegistrationConfiguration_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RegistrationConfiguration_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RegistrationConfiguration_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RegistrationConfiguration_Access_Array_Access is (if Value /= null and then Value.all in RegistrationConfiguration_Access_Array_Object'Class then RegistrationConfiguration_Access_Array_Object'Class (Value.all).Value else null);
   type RegistrationConfiguration_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RegistrationConfiguration_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RegistrationConfiguration_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RegistrationConfiguration_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RegistrationConfiguration_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RegistrationConfiguration_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RegistrationConfiguration_Access_Array_Access_Array_Object'Class then RegistrationConfiguration_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References;

with org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RegistrationConfiguration_Access is org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References.RegistrationConfiguration_Access;
   function "=" (Left, Right : RegistrationConfiguration_Access) return Boolean renames org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References."=";
   subtype RegistrationConfiguration_Access_Array is org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References.RegistrationConfiguration_Access_Array;
   function "=" (Left, Right : RegistrationConfiguration_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References."=";
   subtype RegistrationConfiguration_Access_Array_Access is org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References.RegistrationConfiguration_Access_Array_Access;
   function "=" (Left, Right : RegistrationConfiguration_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References."=";
   function Java_Box (Value : RegistrationConfiguration_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References.Java_Box;
   function Java_Unbox_RegistrationConfiguration_Access_Array (Value : access Java_Object'Class) return RegistrationConfiguration_Access_Array_Access renames org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References.Java_Unbox_RegistrationConfiguration_Access_Array;
   subtype RegistrationConfiguration_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References.RegistrationConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : RegistrationConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References."=";
   subtype RegistrationConfiguration_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References.RegistrationConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RegistrationConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References."=";
   function Java_Box (Value : RegistrationConfiguration_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References.Java_Box;
   function Java_Unbox_RegistrationConfiguration_Access_Array_Access_Array (Value : access Java_Object'Class) return RegistrationConfiguration_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package_References.Java_Unbox_RegistrationConfiguration_Access_Array_Access_Array;

   type RegistrationConfiguration is new Java_Object with record
      registrationCode : Unbounded_String;
      NAME : Unbounded_String;
   end record;
   SINGLETON : RegistrationConfiguration_Access;

   procedure Initialize (This : in out RegistrationConfiguration'Class);
   function Create return RegistrationConfiguration_Access;
   function getInstance return RegistrationConfiguration_Access;
   procedure read (This : in out RegistrationConfiguration);
   procedure write (This : in out RegistrationConfiguration);
   function toString (This : in out RegistrationConfiguration) return Unbounded_String;
   procedure setRegistrationCode (This : in out RegistrationConfiguration; registrationCode : Unbounded_String);
   function getRegistrationCode (This : in out RegistrationConfiguration) return Unbounded_String;

end org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package;


