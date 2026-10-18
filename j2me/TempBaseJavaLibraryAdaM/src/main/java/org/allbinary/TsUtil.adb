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


package body org.allbinary.TsUtil_Package is

   procedure Initialize_Fields (This : in out TsUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TsUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TsUtil_Access is
      This : constant TsUtil_Access := new TsUtil;
   begin
      TsUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TsUtil_Access is
   begin
        return TsUtil_Package.instance;
   end getInstance;

   function hashCode (This : in out TsUtil; anyType_Param : access Java_Object'Class) return Integer is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return anyType.hashCode;
   end hashCode;

   --  throws InterruptedException
   procedure waitFor (This : in out TsUtil; any_Param : access Java_Object'Class; timeoutMillis : Long_Long_Integer) is
      any : constant Java_Object_Access := Java_Object_Access (any_Param);
      anyType : Java_Object_Access;
   begin
        anyType := Java_Object_Access (any);
        anyType.wait (timeoutMillis);
   end waitFor;

   function compareTo (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String) return Integer is
   begin
        return Java_Compare_To (a, b);
   end compareTo;

   procedure hashCode (This : in out TsUtil; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Integer := TsUtil'Class (This).hashCode (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hashCode;

   procedure compareTo (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String) is
      Java_Result : constant Integer := TsUtil'Class (This).compareTo (a, b);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

begin
   null;
   instance := TsUtil_Package.Create;

end org.allbinary.TsUtil_Package;


