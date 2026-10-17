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


package body org.allbinary.logic.java.exception_Id.ExceptionUtil_Package is

   procedure Initialize_Fields (This : in out ExceptionUtil'Class) is
   begin
      null;
      This.PRETEND_EXCEPTION := Java_New_Exception ("Exception", To_Unbounded_String ("Not Really An Exception"));
      This.NONE := To_Unbounded_String ("No Stack Trace");
   end Initialize_Fields;


   function getInstance return ExceptionUtil_Access is
   begin
        return ExceptionUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ExceptionUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ExceptionUtil_Access is
      This : constant ExceptionUtil_Access := new ExceptionUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getStackTrace (This : in out ExceptionUtil; e : Java_Throwable) return Unbounded_String is
   begin
        if True then
            null;
        end if;
        if True then
            null;
        end if;
        if True then
            null;
        end if;
        if True then
            null;
        end if;
        return This.NONE;
   end getStackTrace;

   procedure getInstance is
      Java_Result : constant ExceptionUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getStackTrace (This : in out ExceptionUtil; e : Java_Throwable) is
      Java_Result : constant Unbounded_String := ExceptionUtil'Class (This).getStackTrace (e);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStackTrace;

begin
   null;
   instance := ExceptionUtil_Package.Create;

end org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;


