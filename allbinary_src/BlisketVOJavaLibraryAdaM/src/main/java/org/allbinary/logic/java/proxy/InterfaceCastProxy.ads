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
with org.allbinary.logic.java.proxy.InvocationHandler_Package; use org.allbinary.logic.java.proxy.InvocationHandler_Package;

package org.allbinary.logic.java.proxy.InterfaceCastProxy_Package is


   type InterfaceCastProxy is tagged;
   type InterfaceCastProxy_Access is access all InterfaceCastProxy'Class;
   type InterfaceCastProxy_Access_Array is array (Natural range <>) of InterfaceCastProxy_Access;
   type InterfaceCastProxy_Access_Array_Access is access all InterfaceCastProxy_Access_Array;

   type InterfaceCastProxy is new InvocationHandler with record
      anyType : Java_Object_Access;
   end record;

   procedure Initialize (This : in out InterfaceCastProxy'Class; anyType : Java_Object_Access);
   function Create (anyType : Java_Object_Access) return InterfaceCastProxy_Access;
   function newInstance (anyType : Java_Object_Access) return Java_Object_Access;
   procedure newInstance (anyType : Java_Object_Access);
   function invoke (This : in out InterfaceCastProxy; proxyObject : Java_Object_Access; proxyMethod : Method_Access; proxyArgs : Java_Object_Access_Array_Access) return Java_Object_Access;
   procedure invoke (This : in out InterfaceCastProxy; proxyObject : Java_Object_Access; proxyMethod : Method_Access; proxyArgs : Java_Object_Access_Array_Access);

end org.allbinary.logic.java.proxy.InterfaceCastProxy_Package;


