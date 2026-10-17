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


package body org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package is

   procedure Initialize_Fields (This : in out BasicCryptUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
      This.XML_START := To_Unbounded_String ("<?xml");
   end Initialize_Fields;

   procedure Initialize (This : in out BasicCryptUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicCryptUtil_Access is
      This : constant BasicCryptUtil_Access := new BasicCryptUtil;
   begin
      BasicCryptUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicCryptUtil_Access is
   begin
        return BasicCryptUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getDecryptedInputStream (This : in out BasicCryptUtil; inputStream_Param : access InputStream_Package.InputStream'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) return InputStream_Access is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
      cryptInterface : constant CryptInterface_Access := CryptInterface_Access (cryptInterface_Param);
      buffer : ByteArrayOutputStream_Access;
      ch : Integer;
      decrypted : Short_Short_Integer_Array_Access;
      decryptedString : Unbounded_String;
      index : Integer;
   begin
        buffer := ByteArrayOutputStream_Package.Create;
        ch := 0;
        while True loop
            ch := inputStream.read;
            if (ch) = (-(1)) then
                exit;
            end if;
            buffer.write (ch);
        end loop;
        decrypted := cryptInterface.decrypt (buffer.toByteArray);
        decryptedString := Java_New_String (decrypted);
        index := (Index (decryptedString, To_String (This.XML_START)) - 1);
        if (index) > (0) then
            decryptedString := Unbounded_Slice (decryptedString, (index) + 1, Length (decryptedString));
        end if;
        return ByteArrayInputStream_Package.Create (This.tsUtil.getByteArray (decryptedString));
   end getDecryptedInputStream;

   procedure getDecryptedInputStream (This : in out BasicCryptUtil; inputStream_Param : access InputStream_Package.InputStream'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) is
      Java_Result : constant InputStream_Access := BasicCryptUtil'Class (This).getDecryptedInputStream (inputStream_Param, cryptInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDecryptedInputStream;

begin
   null;
   instance := BasicCryptUtil_Package.Create;

end org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package;


