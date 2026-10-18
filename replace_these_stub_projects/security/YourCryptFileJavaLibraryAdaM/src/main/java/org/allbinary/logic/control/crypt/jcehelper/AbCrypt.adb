-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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



package body org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package is

   procedure Initialize_Fields (This : in out AbCrypt'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbCrypt'Class; algorithm : Unbounded_String; key : Unbounded_String) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (algorithm : Unbounded_String; key : Unbounded_String) return AbCrypt_Access is
      This : constant AbCrypt_Access := new AbCrypt;
   begin
      AbCrypt_Package.Initialize (This.all, algorithm, key);
      return This;
   end Create;

   function encrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        return null;
   end encrypt;

   function decrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        return null;
   end decrypt;

   function mutilate (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        return null;
   end mutilate;

   procedure encrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbCrypt'Class (This).encrypt (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encrypt;

   procedure decrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbCrypt'Class (This).decrypt (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

   procedure mutilate (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbCrypt'Class (This).mutilate (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end mutilate;

end org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package;


