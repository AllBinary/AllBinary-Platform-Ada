--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.apache.xmlrpc.XmlRpcHandler_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type XmlRpcHandler is interface;
   type XmlRpcHandler_Access is access all XmlRpcHandler'Class;
   type XmlRpcHandler_Access_Array is array (Natural range <>) of XmlRpcHandler_Access;
   type XmlRpcHandler_Access_Array_Access is access all XmlRpcHandler_Access_Array;
   function execute (This : in out XmlRpcHandler; method : Unbounded_String; params : BasicArrayList_Access) return Java_Object_Access is abstract;

end org.apache.xmlrpc.XmlRpcHandler_Package;


