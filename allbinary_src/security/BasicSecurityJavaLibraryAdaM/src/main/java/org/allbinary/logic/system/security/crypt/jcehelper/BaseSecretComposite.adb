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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package body org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out BaseSecretComposite'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseSecretComposite'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseSecretComposite_Access is
      This : constant BaseSecretComposite_Access := new BaseSecretComposite;
   begin
      BaseSecretComposite_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function encrypt (This : in out BaseSecretComposite; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        return NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
   end encrypt;

   --  throws Exception
   function decrypt (This : in out BaseSecretComposite; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        return NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
   end decrypt;

   procedure encrypt (This : in out BaseSecretComposite; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := BaseSecretComposite'Class (This).encrypt (array_Id => array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encrypt;

   procedure decrypt (This : in out BaseSecretComposite; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := BaseSecretComposite'Class (This).decrypt (array_Id => array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

begin
   null;
   NULL_SECRET_COMPOSITE := BaseSecretComposite_Package.Create;

end org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package;


