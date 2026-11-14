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
limited with org.allbinary.osgi.OSGIServiceInterface_Package;
package org.allbinary.osgi.OSGIServiceInterface_Package_References is
   type OSGIServiceInterface_Access is access all org.allbinary.osgi.OSGIServiceInterface_Package.OSGIServiceInterface'Class;
   type OSGIServiceInterface_Access_Array is array (Natural range <>) of OSGIServiceInterface_Access;
   type OSGIServiceInterface_Access_Array_Access is access all OSGIServiceInterface_Access_Array;
   type OSGIServiceInterface_Access_Array_Access_Array is array (Natural range <>) of OSGIServiceInterface_Access_Array_Access;
   type OSGIServiceInterface_Access_Array_Access_Array_Access is access all OSGIServiceInterface_Access_Array_Access_Array;
   type OSGIServiceInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OSGIServiceInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : OSGIServiceInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OSGIServiceInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OSGIServiceInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OSGIServiceInterface_Access_Array_Access is (if Value /= null and then Value.all in OSGIServiceInterface_Access_Array_Object'Class then OSGIServiceInterface_Access_Array_Object'Class (Value.all).Value else null);
   type OSGIServiceInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OSGIServiceInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OSGIServiceInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OSGIServiceInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OSGIServiceInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OSGIServiceInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OSGIServiceInterface_Access_Array_Access_Array_Object'Class then OSGIServiceInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.osgi.OSGIServiceInterface_Package_References;

with org.allbinary.osgi.OSGIServiceInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.osgi.OSGIServiceInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type OSGIServiceInterface is interface;
   subtype OSGIServiceInterface_Access is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access;
   function "=" (Left, Right : OSGIServiceInterface_Access) return Boolean renames org.allbinary.osgi.OSGIServiceInterface_Package_References."=";
   subtype OSGIServiceInterface_Access_Array is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array;
   function "=" (Left, Right : OSGIServiceInterface_Access_Array) return Boolean renames org.allbinary.osgi.OSGIServiceInterface_Package_References."=";
   subtype OSGIServiceInterface_Access_Array_Access is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array_Access;
   function "=" (Left, Right : OSGIServiceInterface_Access_Array_Access) return Boolean renames org.allbinary.osgi.OSGIServiceInterface_Package_References."=";
   function Java_Box (Value : OSGIServiceInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.osgi.OSGIServiceInterface_Package_References.Java_Box;
   function Java_Unbox_OSGIServiceInterface_Access_Array (Value : access Java_Object'Class) return OSGIServiceInterface_Access_Array_Access renames org.allbinary.osgi.OSGIServiceInterface_Package_References.Java_Unbox_OSGIServiceInterface_Access_Array;
   subtype OSGIServiceInterface_Access_Array_Access_Array is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array_Access_Array;
   function "=" (Left, Right : OSGIServiceInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.osgi.OSGIServiceInterface_Package_References."=";
   subtype OSGIServiceInterface_Access_Array_Access_Array_Access is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OSGIServiceInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.osgi.OSGIServiceInterface_Package_References."=";
   function Java_Box (Value : OSGIServiceInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.osgi.OSGIServiceInterface_Package_References.Java_Box;
   function Java_Unbox_OSGIServiceInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return OSGIServiceInterface_Access_Array_Access_Array_Access renames org.allbinary.osgi.OSGIServiceInterface_Package_References.Java_Unbox_OSGIServiceInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_OSGIServiceInterface (Value : OSGIServiceInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.osgi.OSGIServiceInterface_Package;


