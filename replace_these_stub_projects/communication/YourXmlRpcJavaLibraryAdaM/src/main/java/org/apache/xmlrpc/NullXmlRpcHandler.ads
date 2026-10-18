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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.apache.xmlrpc.XmlRpcHandler_Package; use org.apache.xmlrpc.XmlRpcHandler_Package;

package org.apache.xmlrpc.NullXmlRpcHandler_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type NullXmlRpcHandler is tagged;
   type NullXmlRpcHandler_Access is access all NullXmlRpcHandler'Class;
   type NullXmlRpcHandler_Access_Array is array (Natural range <>) of NullXmlRpcHandler_Access;
   type NullXmlRpcHandler_Access_Array_Access is access all NullXmlRpcHandler_Access_Array;
   type NullXmlRpcHandler_Access_Array_Access_Array is array (Natural range <>) of NullXmlRpcHandler_Access_Array_Access;
   type NullXmlRpcHandler_Access_Array_Access_Array_Access is access all NullXmlRpcHandler_Access_Array_Access_Array;

   type NullXmlRpcHandler is new Java_Object and XmlRpcHandler with null record;
   NULL_XML_RPC_HANDLER : NullXmlRpcHandler_Access;

   procedure Initialize (This : in out NullXmlRpcHandler'Class);
   function Create return NullXmlRpcHandler_Access;
   function execute (This : in out NullXmlRpcHandler; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class) return Java_Object_Access;
   procedure execute (This : in out NullXmlRpcHandler; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.apache.xmlrpc.NullXmlRpcHandler_Package;


