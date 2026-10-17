-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package is

   procedure Initialize_Fields (This : in out NoCrypt'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NoCrypt'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NoCrypt_Access is
      This : constant NoCrypt_Access := new NoCrypt;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function encrypt (This : in out NoCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        return array_Id;
   end encrypt;

   function decrypt (This : in out NoCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        return array_Id;
   end decrypt;

   procedure encrypt (This : in out NoCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := NoCrypt'Class (This).encrypt (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encrypt;

   procedure decrypt (This : in out NoCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := NoCrypt'Class (This).decrypt (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

end org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;


