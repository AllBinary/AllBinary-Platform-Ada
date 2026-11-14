-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.osgi.framework.NullServiceReferenceFactory_Package;
package org.osgi.framework.NullServiceReferenceFactory_Package_References is
   type NullServiceReferenceFactory_Access is access all org.osgi.framework.NullServiceReferenceFactory_Package.NullServiceReferenceFactory'Class;
   type NullServiceReferenceFactory_Access_Array is array (Natural range <>) of NullServiceReferenceFactory_Access;
   type NullServiceReferenceFactory_Access_Array_Access is access all NullServiceReferenceFactory_Access_Array;
   type NullServiceReferenceFactory_Access_Array_Access_Array is array (Natural range <>) of NullServiceReferenceFactory_Access_Array_Access;
   type NullServiceReferenceFactory_Access_Array_Access_Array_Access is access all NullServiceReferenceFactory_Access_Array_Access_Array;
   type NullServiceReferenceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullServiceReferenceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : NullServiceReferenceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullServiceReferenceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullServiceReferenceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullServiceReferenceFactory_Access_Array_Access is (if Value /= null and then Value.all in NullServiceReferenceFactory_Access_Array_Object'Class then NullServiceReferenceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type NullServiceReferenceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullServiceReferenceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullServiceReferenceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullServiceReferenceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullServiceReferenceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullServiceReferenceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullServiceReferenceFactory_Access_Array_Access_Array_Object'Class then NullServiceReferenceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.osgi.framework.NullServiceReferenceFactory_Package_References;

with org.osgi.framework.NullServiceReferenceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.osgi.framework.NullServiceReference_Package;
with org.osgi.framework.NullServiceReference_Package_References;

package org.osgi.framework.NullServiceReferenceFactory_Package is

   package Reference_Types is
   subtype NullServiceReference_Access is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access;
   use type NullServiceReference_Access;
   subtype NullServiceReference_Access_Array is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access_Array;
   use type NullServiceReference_Access_Array;
   subtype NullServiceReference_Access_Array_Access is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access_Array_Access;
   use type NullServiceReference_Access_Array_Access;
   subtype NullServiceReference_Access_Array_Access_Array is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access_Array_Access_Array;
   use type NullServiceReference_Access_Array_Access_Array;
   subtype NullServiceReference_Access_Array_Access_Array_Access is org.osgi.framework.NullServiceReference_Package_References.NullServiceReference_Access_Array_Access_Array_Access;
   use type NullServiceReference_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullServiceReferenceFactory_Access is org.osgi.framework.NullServiceReferenceFactory_Package_References.NullServiceReferenceFactory_Access;
   function "=" (Left, Right : NullServiceReferenceFactory_Access) return Boolean renames org.osgi.framework.NullServiceReferenceFactory_Package_References."=";
   subtype NullServiceReferenceFactory_Access_Array is org.osgi.framework.NullServiceReferenceFactory_Package_References.NullServiceReferenceFactory_Access_Array;
   function "=" (Left, Right : NullServiceReferenceFactory_Access_Array) return Boolean renames org.osgi.framework.NullServiceReferenceFactory_Package_References."=";
   subtype NullServiceReferenceFactory_Access_Array_Access is org.osgi.framework.NullServiceReferenceFactory_Package_References.NullServiceReferenceFactory_Access_Array_Access;
   function "=" (Left, Right : NullServiceReferenceFactory_Access_Array_Access) return Boolean renames org.osgi.framework.NullServiceReferenceFactory_Package_References."=";
   function Java_Box (Value : NullServiceReferenceFactory_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.NullServiceReferenceFactory_Package_References.Java_Box;
   function Java_Unbox_NullServiceReferenceFactory_Access_Array (Value : access Java_Object'Class) return NullServiceReferenceFactory_Access_Array_Access renames org.osgi.framework.NullServiceReferenceFactory_Package_References.Java_Unbox_NullServiceReferenceFactory_Access_Array;
   subtype NullServiceReferenceFactory_Access_Array_Access_Array is org.osgi.framework.NullServiceReferenceFactory_Package_References.NullServiceReferenceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NullServiceReferenceFactory_Access_Array_Access_Array) return Boolean renames org.osgi.framework.NullServiceReferenceFactory_Package_References."=";
   subtype NullServiceReferenceFactory_Access_Array_Access_Array_Access is org.osgi.framework.NullServiceReferenceFactory_Package_References.NullServiceReferenceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullServiceReferenceFactory_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.NullServiceReferenceFactory_Package_References."=";
   function Java_Box (Value : NullServiceReferenceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.NullServiceReferenceFactory_Package_References.Java_Box;
   function Java_Unbox_NullServiceReferenceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return NullServiceReferenceFactory_Access_Array_Access_Array_Access renames org.osgi.framework.NullServiceReferenceFactory_Package_References.Java_Unbox_NullServiceReferenceFactory_Access_Array_Access_Array;

   type NullServiceReferenceFactory is new Java_Object with record
      NULL_SERVICE_REFERENCE : NullServiceReference_Access;
   end record;
   instance : NullServiceReferenceFactory_Access;

   procedure Initialize (This : in out NullServiceReferenceFactory'Class);
   function Create return NullServiceReferenceFactory_Access;
   function getInstance return NullServiceReferenceFactory_Access;

end org.osgi.framework.NullServiceReferenceFactory_Package;


