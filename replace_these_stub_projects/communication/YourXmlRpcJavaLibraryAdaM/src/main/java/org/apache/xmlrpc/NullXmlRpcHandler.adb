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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.math.MathUtil_Package;

package body org.apache.xmlrpc.NullXmlRpcHandler_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out NullXmlRpcHandler'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullXmlRpcHandler'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullXmlRpcHandler_Access is
      This : constant NullXmlRpcHandler_Access := new NullXmlRpcHandler;
   begin
      NullXmlRpcHandler_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function execute (This : in out NullXmlRpcHandler; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class) return Java_Object_Access is
      params : constant BasicArrayList_Access := BasicArrayList_Access (params_Param);
   begin
        return NullUtil_Package.getInstance.NULL_OBJECT;
   end execute;

   procedure execute (This : in out NullXmlRpcHandler; method : Unbounded_String; params_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Java_Object_Access := NullXmlRpcHandler'Class (This).execute (method => method, params_Param => params_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end execute;

begin
   null;
   NULL_XML_RPC_HANDLER := NullXmlRpcHandler_Package.Create;

end org.apache.xmlrpc.NullXmlRpcHandler_Package;


