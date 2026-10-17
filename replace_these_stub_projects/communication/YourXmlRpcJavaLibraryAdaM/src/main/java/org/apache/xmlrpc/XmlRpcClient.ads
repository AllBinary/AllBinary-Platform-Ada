--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.net.MalformedURLException_Package; use java.net.MalformedURLException_Package;
--  with java.net.URL_Package; use java.net.URL_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.apache.xmlrpc.XmlRpcHandler_Package; use org.apache.xmlrpc.XmlRpcHandler_Package;

package org.apache.xmlrpc.XmlRpcClient_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package CryptInterface_Package renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;

   type XmlRpcClient is tagged;
   type XmlRpcClient_Access is access all XmlRpcClient'Class;
   type XmlRpcClient_Access_Array is array (Natural range <>) of XmlRpcClient_Access;
   type XmlRpcClient_Access_Array_Access is access all XmlRpcClient_Access_Array;

   type XmlRpcClient is new XmlRpcHandler with record
      url : URL_Access;
   end record;

   procedure Initialize (This : in out XmlRpcClient'Class; url : Unbounded_String);
   function Create (url : Unbounded_String) return XmlRpcClient_Access;
   function getURL (This : in out XmlRpcClient) return URL_Access;
   procedure getURL (This : in out XmlRpcClient);
   procedure setBasicAuthentication (This : in out XmlRpcClient; user : Unbounded_String; password : Unbounded_String);
   function execute (This : in out XmlRpcClient; method : Unbounded_String; params : BasicArrayList_Access) return Java_Object_Access;
   procedure execute (This : in out XmlRpcClient; method : Unbounded_String; params : BasicArrayList_Access);
   function execute (This : in out XmlRpcClient; method : Unbounded_String; params : BasicArrayList_Access; cryptInterface : CryptInterface_Access) return Java_Object_Access;
   procedure execute (This : in out XmlRpcClient; method : Unbounded_String; params : BasicArrayList_Access; cryptInterface : CryptInterface_Access);

end org.apache.xmlrpc.XmlRpcClient_Package;


