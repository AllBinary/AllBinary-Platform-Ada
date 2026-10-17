-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


package body org.allbinary.logic.ABSystemWrapper_Package is

   procedure Initialize_Fields (This : in out ABSystemWrapper'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ABSystemWrapper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ABSystemWrapper_Access is
      This : constant ABSystemWrapper_Access := new ABSystemWrapper;
   begin
      ABSystemWrapper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ABSystemWrapper_Access is
   begin
        return ABSystemWrapper_Package.instance;
   end getInstance;

   procedure arraycopy (This : in out ABSystemWrapper; src_Param : access Java_Object'Class; srcPos : Integer; dest_Param : access Java_Object'Class; destPos : Integer; length : Integer) is
      src : constant Java_Object_Access := Java_Object_Access (src_Param);
      dest : constant Java_Object_Access := Java_Object_Access (dest_Param);
   begin
        Java_Array_Copy (src, srcPos, dest, destPos, length);
   end arraycopy;

   function currentTimeMillis (This : in out ABSystemWrapper) return Long_Long_Integer is
   begin
        return Java_Current_Time_Millis;
   end currentTimeMillis;

begin
   null;
   instance := ABSystemWrapper_Package.Create;

end org.allbinary.logic.ABSystemWrapper_Package;


