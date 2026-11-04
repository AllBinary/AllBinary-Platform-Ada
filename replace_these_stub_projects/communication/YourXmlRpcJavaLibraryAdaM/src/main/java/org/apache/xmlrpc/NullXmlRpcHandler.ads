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

limited with org.apache.xmlrpc.NullXmlRpcHandler_Package;
package org.apache.xmlrpc.NullXmlRpcHandler_Package_References is
   type NullXmlRpcHandler_Access is access all org.apache.xmlrpc.NullXmlRpcHandler_Package.NullXmlRpcHandler'Class;
   type NullXmlRpcHandler_Access_Array is array (Natural range <>) of NullXmlRpcHandler_Access;
   type NullXmlRpcHandler_Access_Array_Access is access all NullXmlRpcHandler_Access_Array;
   type NullXmlRpcHandler_Access_Array_Access_Array is array (Natural range <>) of NullXmlRpcHandler_Access_Array_Access;
   type NullXmlRpcHandler_Access_Array_Access_Array_Access is access all NullXmlRpcHandler_Access_Array_Access_Array;
end org.apache.xmlrpc.NullXmlRpcHandler_Package_References;

with org.apache.xmlrpc.NullXmlRpcHandler_Package_References;
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
with org.apache.xmlrpc.XmlRpcHandler_Package; use org.apache.xmlrpc.XmlRpcHandler_Package;

package org.apache.xmlrpc.NullXmlRpcHandler_Package is

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


   subtype NullXmlRpcHandler_Access is org.apache.xmlrpc.NullXmlRpcHandler_Package_References.NullXmlRpcHandler_Access;
   function "=" (Left, Right : NullXmlRpcHandler_Access) return Boolean renames org.apache.xmlrpc.NullXmlRpcHandler_Package_References."=";
   subtype NullXmlRpcHandler_Access_Array is org.apache.xmlrpc.NullXmlRpcHandler_Package_References.NullXmlRpcHandler_Access_Array;
   function "=" (Left, Right : NullXmlRpcHandler_Access_Array) return Boolean renames org.apache.xmlrpc.NullXmlRpcHandler_Package_References."=";
   subtype NullXmlRpcHandler_Access_Array_Access is org.apache.xmlrpc.NullXmlRpcHandler_Package_References.NullXmlRpcHandler_Access_Array_Access;
   function "=" (Left, Right : NullXmlRpcHandler_Access_Array_Access) return Boolean renames org.apache.xmlrpc.NullXmlRpcHandler_Package_References."=";
   subtype NullXmlRpcHandler_Access_Array_Access_Array is org.apache.xmlrpc.NullXmlRpcHandler_Package_References.NullXmlRpcHandler_Access_Array_Access_Array;
   function "=" (Left, Right : NullXmlRpcHandler_Access_Array_Access_Array) return Boolean renames org.apache.xmlrpc.NullXmlRpcHandler_Package_References."=";
   subtype NullXmlRpcHandler_Access_Array_Access_Array_Access is org.apache.xmlrpc.NullXmlRpcHandler_Package_References.NullXmlRpcHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullXmlRpcHandler_Access_Array_Access_Array_Access) return Boolean renames org.apache.xmlrpc.NullXmlRpcHandler_Package_References."=";

   type NullXmlRpcHandler is new Java_Object and XmlRpcHandler with null record;
   NULL_XML_RPC_HANDLER : NullXmlRpcHandler_Access;

   procedure Initialize (This : in out NullXmlRpcHandler'Class);
   function Create return NullXmlRpcHandler_Access;
   function execute (This : in out NullXmlRpcHandler; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class) return Java_Object_Access;
   procedure execute (This : in out NullXmlRpcHandler; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.apache.xmlrpc.NullXmlRpcHandler_Package;


