--  Generated Code Do Not Modify

limited with org.apache.xmlrpc.XmlRpcClient_Package;
package org.apache.xmlrpc.XmlRpcClient_Package_References is
   type XmlRpcClient_Access is access all org.apache.xmlrpc.XmlRpcClient_Package.XmlRpcClient'Class;
   type XmlRpcClient_Access_Array is array (Natural range <>) of XmlRpcClient_Access;
   type XmlRpcClient_Access_Array_Access is access all XmlRpcClient_Access_Array;
   type XmlRpcClient_Access_Array_Access_Array is array (Natural range <>) of XmlRpcClient_Access_Array_Access;
   type XmlRpcClient_Access_Array_Access_Array_Access is access all XmlRpcClient_Access_Array_Access_Array;
end org.apache.xmlrpc.XmlRpcClient_Package_References;

with org.apache.xmlrpc.XmlRpcClient_Package_References;
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
with java.net.URL_Package; use java.net.URL_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References;
with org.apache.xmlrpc.XmlRpcHandler_Package; use org.apache.xmlrpc.XmlRpcHandler_Package;

package org.apache.xmlrpc.XmlRpcClient_Package is

   package URL_Package renames Standard.java.net.URL_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CryptInterface_Package renames Standard.org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype CryptInterface_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access;
   use type CryptInterface_Access;
   subtype CryptInterface_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array;
   use type CryptInterface_Access_Array;
   subtype CryptInterface_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access;
   use type CryptInterface_Access_Array_Access;
   subtype CryptInterface_Access_Array_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array;
   use type CryptInterface_Access_Array_Access_Array;
   subtype CryptInterface_Access_Array_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array_Access;
   use type CryptInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype XmlRpcClient_Access is org.apache.xmlrpc.XmlRpcClient_Package_References.XmlRpcClient_Access;
   function "=" (Left, Right : XmlRpcClient_Access) return Boolean renames org.apache.xmlrpc.XmlRpcClient_Package_References."=";
   subtype XmlRpcClient_Access_Array is org.apache.xmlrpc.XmlRpcClient_Package_References.XmlRpcClient_Access_Array;
   function "=" (Left, Right : XmlRpcClient_Access_Array) return Boolean renames org.apache.xmlrpc.XmlRpcClient_Package_References."=";
   subtype XmlRpcClient_Access_Array_Access is org.apache.xmlrpc.XmlRpcClient_Package_References.XmlRpcClient_Access_Array_Access;
   function "=" (Left, Right : XmlRpcClient_Access_Array_Access) return Boolean renames org.apache.xmlrpc.XmlRpcClient_Package_References."=";
   subtype XmlRpcClient_Access_Array_Access_Array is org.apache.xmlrpc.XmlRpcClient_Package_References.XmlRpcClient_Access_Array_Access_Array;
   function "=" (Left, Right : XmlRpcClient_Access_Array_Access_Array) return Boolean renames org.apache.xmlrpc.XmlRpcClient_Package_References."=";
   subtype XmlRpcClient_Access_Array_Access_Array_Access is org.apache.xmlrpc.XmlRpcClient_Package_References.XmlRpcClient_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XmlRpcClient_Access_Array_Access_Array_Access) return Boolean renames org.apache.xmlrpc.XmlRpcClient_Package_References."=";

   type XmlRpcClient is new Java_Object and XmlRpcHandler with record
      url : URL_Access;
   end record;

   procedure Initialize (This : in out XmlRpcClient'Class; url : Unbounded_String);
   function Create (url : Unbounded_String) return XmlRpcClient_Access;
   function getURL (This : in out XmlRpcClient) return URL_Access;
   procedure setBasicAuthentication (This : in out XmlRpcClient; user : Unbounded_String; password : Unbounded_String);
   function execute (This : in out XmlRpcClient; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class) return Java_Object_Access;
   procedure execute (This : in out XmlRpcClient; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function execute (This : in out XmlRpcClient; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) return Java_Object_Access;
   procedure execute (This : in out XmlRpcClient; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class);

end org.apache.xmlrpc.XmlRpcClient_Package;


