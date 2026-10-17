--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.apache.xmlrpc.Exception_Package; use org.apache.xmlrpc.Exception_Package;

package org.apache.xmlrpc.XmlRpcException_Package is


   type XmlRpcException is tagged;
   type XmlRpcException_Access is access all XmlRpcException'Class;
   type XmlRpcException_Access_Array is array (Natural range <>) of XmlRpcException_Access;
   type XmlRpcException_Access_Array_Access is access all XmlRpcException_Access_Array;

   type XmlRpcException is new Exception with null record;

   procedure Initialize (This : in out XmlRpcException'Class; code : Integer; message : Unbounded_String);
   function Create (code : Integer; message : Unbounded_String) return XmlRpcException_Access;

end org.apache.xmlrpc.XmlRpcException_Package;


