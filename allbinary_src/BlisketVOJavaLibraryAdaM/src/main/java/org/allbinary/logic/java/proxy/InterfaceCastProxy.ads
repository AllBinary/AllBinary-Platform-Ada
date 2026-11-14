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
limited with org.allbinary.logic.java.proxy.InterfaceCastProxy_Package;
package org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References is
   type InterfaceCastProxy_Access is access all org.allbinary.logic.java.proxy.InterfaceCastProxy_Package.InterfaceCastProxy'Class;
   type InterfaceCastProxy_Access_Array is array (Natural range <>) of InterfaceCastProxy_Access;
   type InterfaceCastProxy_Access_Array_Access is access all InterfaceCastProxy_Access_Array;
   type InterfaceCastProxy_Access_Array_Access_Array is array (Natural range <>) of InterfaceCastProxy_Access_Array_Access;
   type InterfaceCastProxy_Access_Array_Access_Array_Access is access all InterfaceCastProxy_Access_Array_Access_Array;
   type InterfaceCastProxy_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InterfaceCastProxy_Access_Array_Access;
   end record;
   function Java_Box (Value : InterfaceCastProxy_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InterfaceCastProxy_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InterfaceCastProxy_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InterfaceCastProxy_Access_Array_Access is (if Value /= null and then Value.all in InterfaceCastProxy_Access_Array_Object'Class then InterfaceCastProxy_Access_Array_Object'Class (Value.all).Value else null);
   type InterfaceCastProxy_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InterfaceCastProxy_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InterfaceCastProxy_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InterfaceCastProxy_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InterfaceCastProxy_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InterfaceCastProxy_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InterfaceCastProxy_Access_Array_Access_Array_Object'Class then InterfaceCastProxy_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References;

with org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
--  with java.lang.reflect.Proxy_Package; use java.lang.reflect.Proxy_Package;
--  with java.lang.reflect.InvocationHandler_Package; use java.lang.reflect.InvocationHandler_Package;

package org.allbinary.logic.java.proxy.InterfaceCastProxy_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InterfaceCastProxy_Access is org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References.InterfaceCastProxy_Access;
   function "=" (Left, Right : InterfaceCastProxy_Access) return Boolean renames org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References."=";
   subtype InterfaceCastProxy_Access_Array is org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References.InterfaceCastProxy_Access_Array;
   function "=" (Left, Right : InterfaceCastProxy_Access_Array) return Boolean renames org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References."=";
   subtype InterfaceCastProxy_Access_Array_Access is org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References.InterfaceCastProxy_Access_Array_Access;
   function "=" (Left, Right : InterfaceCastProxy_Access_Array_Access) return Boolean renames org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References."=";
   function Java_Box (Value : InterfaceCastProxy_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References.Java_Box;
   function Java_Unbox_InterfaceCastProxy_Access_Array (Value : access Java_Object'Class) return InterfaceCastProxy_Access_Array_Access renames org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References.Java_Unbox_InterfaceCastProxy_Access_Array;
   subtype InterfaceCastProxy_Access_Array_Access_Array is org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References.InterfaceCastProxy_Access_Array_Access_Array;
   function "=" (Left, Right : InterfaceCastProxy_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References."=";
   subtype InterfaceCastProxy_Access_Array_Access_Array_Access is org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References.InterfaceCastProxy_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InterfaceCastProxy_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References."=";
   function Java_Box (Value : InterfaceCastProxy_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References.Java_Box;
   function Java_Unbox_InterfaceCastProxy_Access_Array_Access_Array (Value : access Java_Object'Class) return InterfaceCastProxy_Access_Array_Access_Array_Access renames org.allbinary.logic.java.proxy.InterfaceCastProxy_Package_References.Java_Unbox_InterfaceCastProxy_Access_Array_Access_Array;

   type InterfaceCastProxy is new Java_Object with record
      anyType : Java_Object_Access;
   end record;

   procedure Initialize (This : in out InterfaceCastProxy'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return InterfaceCastProxy_Access;
   function newInstance (anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure newInstance (anyType_Param : access Java_Object'Class);
   function invoke (This : in out InterfaceCastProxy; proxyObject_Param : access Java_Object'Class; proxyMethod_Param : access Method_Package.Method'Class; proxyArgs : Java_Object_Access_Array_Access) return Java_Object_Access;
   procedure invoke (This : in out InterfaceCastProxy; proxyObject_Param : access Java_Object'Class; proxyMethod_Param : access Method_Package.Method'Class; proxyArgs : Java_Object_Access_Array_Access);
   function newInstance (Value : Unbounded_String) return Java_Object_Access;
   procedure newInstance (Value : Unbounded_String);

end org.allbinary.logic.java.proxy.InterfaceCastProxy_Package;


