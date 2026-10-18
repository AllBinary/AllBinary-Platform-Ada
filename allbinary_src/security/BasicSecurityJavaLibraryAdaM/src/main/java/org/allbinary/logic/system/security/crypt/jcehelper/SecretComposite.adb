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



package body org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package is

   procedure Initialize_Fields (This : in out SecretComposite'Class) is
   begin
      null;
      This.byteUtil := ByteUtil_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out SecretComposite'Class; secretKey_Param : access SecretKey_Package.SecretKey'Class; cipher_Param : access Cipher_Package.Cipher'Class; key : Short_Short_Integer_Array_Access) is
      secretKey : constant SecretKey_Access := SecretKey_Access (secretKey_Param);
      cipher : constant Cipher_Access := Cipher_Access (cipher_Param);
   begin
      BaseSecretComposite_Package.Initialize (This);
      Initialize_Fields (This);
        This.secretKey := secretKey;
        This.cipher := cipher;
        This.key := key;
   end Initialize;

   function Create (secretKey_Param : access SecretKey_Package.SecretKey'Class; cipher_Param : access Cipher_Package.Cipher'Class; key : Short_Short_Integer_Array_Access) return SecretComposite_Access is
      This : constant SecretComposite_Access := new SecretComposite;
   begin
      SecretComposite_Package.Initialize (This.all, secretKey_Param, cipher_Param, key);
      return This;
   end Create;

   --  throws Exception
   function encrypt (This : in out SecretComposite; array_Id_Param : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
      array_Id : Short_Short_Integer_Array_Access := array_Id_Param;
   begin
        array_Id := SecretComposite'Class (This).mutilate (array_Id);
        This.cipher.init (Cipher_Package.ENCRYPT_MODE, This.secretKey);
        return This.cipher.doFinal (array_Id);
   end encrypt;

   --  throws Exception
   function decrypt (This : in out SecretComposite; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        This.cipher.init (Cipher_Package.DECRYPT_MODE, This.secretKey);
        return SecretComposite'Class (This).mutilate (This.cipher.doFinal (array_Id));
   end decrypt;

   function mutilate (This : in out SecretComposite; array_Id_Param : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
      array_Id : Short_Short_Integer_Array_Access := array_Id_Param;
      value : Short_Short_Integer;
      index : Integer;
   begin
        for index in 0 .. (This.key'Length) - 1 loop
            value := This.key (index);
            if ((Integer (value)) < (8)) and then ((Integer (value)) > (0)) then
                array_Id := This.byteUtil.xorByte (array_Id, Integer (value));
            end if;
        end loop;
        return array_Id;
   end mutilate;

   procedure encrypt (This : in out SecretComposite; array_Id_Param : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := SecretComposite'Class (This).encrypt (array_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encrypt;

   procedure decrypt (This : in out SecretComposite; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := SecretComposite'Class (This).decrypt (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

   procedure mutilate (This : in out SecretComposite; array_Id_Param : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := SecretComposite'Class (This).mutilate (array_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end mutilate;

end org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package;


