--  Generated Code Do Not Modify

limited with org.apache.xmlrpc.XmlRpcHandler_Package;
package org.apache.xmlrpc.XmlRpcHandler_Package_References is
   type XmlRpcHandler_Access is access all org.apache.xmlrpc.XmlRpcHandler_Package.XmlRpcHandler'Class;
   type XmlRpcHandler_Access_Array is array (Natural range <>) of XmlRpcHandler_Access;
   type XmlRpcHandler_Access_Array_Access is access all XmlRpcHandler_Access_Array;
   type XmlRpcHandler_Access_Array_Access_Array is array (Natural range <>) of XmlRpcHandler_Access_Array_Access;
   type XmlRpcHandler_Access_Array_Access_Array_Access is access all XmlRpcHandler_Access_Array_Access_Array;
end org.apache.xmlrpc.XmlRpcHandler_Package_References;

with org.apache.xmlrpc.XmlRpcHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.apache.xmlrpc.XmlRpcHandler_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   end Reference_Types;
   use Reference_Types;


   type XmlRpcHandler is interface;
   subtype XmlRpcHandler_Access is org.apache.xmlrpc.XmlRpcHandler_Package_References.XmlRpcHandler_Access;
   function "=" (Left, Right : XmlRpcHandler_Access) return Boolean renames org.apache.xmlrpc.XmlRpcHandler_Package_References."=";
   subtype XmlRpcHandler_Access_Array is org.apache.xmlrpc.XmlRpcHandler_Package_References.XmlRpcHandler_Access_Array;
   function "=" (Left, Right : XmlRpcHandler_Access_Array) return Boolean renames org.apache.xmlrpc.XmlRpcHandler_Package_References."=";
   subtype XmlRpcHandler_Access_Array_Access is org.apache.xmlrpc.XmlRpcHandler_Package_References.XmlRpcHandler_Access_Array_Access;
   function "=" (Left, Right : XmlRpcHandler_Access_Array_Access) return Boolean renames org.apache.xmlrpc.XmlRpcHandler_Package_References."=";
   subtype XmlRpcHandler_Access_Array_Access_Array is org.apache.xmlrpc.XmlRpcHandler_Package_References.XmlRpcHandler_Access_Array_Access_Array;
   function "=" (Left, Right : XmlRpcHandler_Access_Array_Access_Array) return Boolean renames org.apache.xmlrpc.XmlRpcHandler_Package_References."=";
   subtype XmlRpcHandler_Access_Array_Access_Array_Access is org.apache.xmlrpc.XmlRpcHandler_Package_References.XmlRpcHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XmlRpcHandler_Access_Array_Access_Array_Access) return Boolean renames org.apache.xmlrpc.XmlRpcHandler_Package_References."=";
   function Java_Object_Access_From_XmlRpcHandler (Value : XmlRpcHandler_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function execute (This : in out XmlRpcHandler; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class) return Java_Object_Access is abstract;

end org.apache.xmlrpc.XmlRpcHandler_Package;


