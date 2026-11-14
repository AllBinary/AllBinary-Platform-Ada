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
limited with org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
package org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References is
   type OSGIServiceVisitorInterface_Access is access all org.allbinary.osgi.OSGIServiceVisitorInterface_Package.OSGIServiceVisitorInterface'Class;
   type OSGIServiceVisitorInterface_Access_Array is array (Natural range <>) of OSGIServiceVisitorInterface_Access;
   type OSGIServiceVisitorInterface_Access_Array_Access is access all OSGIServiceVisitorInterface_Access_Array;
   type OSGIServiceVisitorInterface_Access_Array_Access_Array is array (Natural range <>) of OSGIServiceVisitorInterface_Access_Array_Access;
   type OSGIServiceVisitorInterface_Access_Array_Access_Array_Access is access all OSGIServiceVisitorInterface_Access_Array_Access_Array;
   type OSGIServiceVisitorInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OSGIServiceVisitorInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : OSGIServiceVisitorInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OSGIServiceVisitorInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OSGIServiceVisitorInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OSGIServiceVisitorInterface_Access_Array_Access is (if Value /= null and then Value.all in OSGIServiceVisitorInterface_Access_Array_Object'Class then OSGIServiceVisitorInterface_Access_Array_Object'Class (Value.all).Value else null);
   type OSGIServiceVisitorInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OSGIServiceVisitorInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OSGIServiceVisitorInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OSGIServiceVisitorInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OSGIServiceVisitorInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OSGIServiceVisitorInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OSGIServiceVisitorInterface_Access_Array_Access_Array_Object'Class then OSGIServiceVisitorInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References;

with org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.visitor.VisitorInterface_Package; use org.allbinary.logic.util.visitor.VisitorInterface_Package;
limited with org.allbinary.osgi.OSGIServiceInterface_Package;
with org.allbinary.osgi.OSGIServiceInterface_Package_References;

package org.allbinary.osgi.OSGIServiceVisitorInterface_Package is

   package VisitorInterface_Package renames Standard.org.allbinary.logic.util.visitor.VisitorInterface_Package;
   package Reference_Types is
   subtype OSGIServiceInterface_Access is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access;
   use type OSGIServiceInterface_Access;
   subtype OSGIServiceInterface_Access_Array is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array;
   use type OSGIServiceInterface_Access_Array;
   subtype OSGIServiceInterface_Access_Array_Access is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array_Access;
   use type OSGIServiceInterface_Access_Array_Access;
   subtype OSGIServiceInterface_Access_Array_Access_Array is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array_Access_Array;
   use type OSGIServiceInterface_Access_Array_Access_Array;
   subtype OSGIServiceInterface_Access_Array_Access_Array_Access is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array_Access_Array_Access;
   use type OSGIServiceInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type OSGIServiceVisitorInterface is interface and VisitorInterface;
   subtype OSGIServiceVisitorInterface_Access is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access;
   function "=" (Left, Right : OSGIServiceVisitorInterface_Access) return Boolean renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References."=";
   subtype OSGIServiceVisitorInterface_Access_Array is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access_Array;
   function "=" (Left, Right : OSGIServiceVisitorInterface_Access_Array) return Boolean renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References."=";
   subtype OSGIServiceVisitorInterface_Access_Array_Access is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access_Array_Access;
   function "=" (Left, Right : OSGIServiceVisitorInterface_Access_Array_Access) return Boolean renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References."=";
   function Java_Box (Value : OSGIServiceVisitorInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.Java_Box;
   function Java_Unbox_OSGIServiceVisitorInterface_Access_Array (Value : access Java_Object'Class) return OSGIServiceVisitorInterface_Access_Array_Access renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.Java_Unbox_OSGIServiceVisitorInterface_Access_Array;
   subtype OSGIServiceVisitorInterface_Access_Array_Access_Array is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : OSGIServiceVisitorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References."=";
   subtype OSGIServiceVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OSGIServiceVisitorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References."=";
   function Java_Box (Value : OSGIServiceVisitorInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.Java_Box;
   function Java_Unbox_OSGIServiceVisitorInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return OSGIServiceVisitorInterface_Access_Array_Access_Array_Access renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.Java_Unbox_OSGIServiceVisitorInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_OSGIServiceVisitorInterface (Value : OSGIServiceVisitorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function visit (This : in out OSGIServiceVisitorInterface; osgiServiceInterface_Param : access OSGIServiceInterface_Package.OSGIServiceInterface'Class) return Boolean is abstract;
   procedure visit (This : in out OSGIServiceVisitorInterface; osgiServiceInterface_Param : access OSGIServiceInterface_Package.OSGIServiceInterface'Class) is abstract;

end org.allbinary.osgi.OSGIServiceVisitorInterface_Package;


