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


with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package;

package body org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   subtype TsUtil_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access;
   function "=" (Left, Right : TsUtil_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array;
   function "=" (Left, Right : TsUtil_Access_Array) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access;
   function "=" (Left, Right : TsUtil_Access_Array_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CryptInterface_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access;
   function "=" (Left, Right : CryptInterface_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array;
   function "=" (Left, Right : CryptInterface_Access_Array) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access;
   function "=" (Left, Right : CryptInterface_Access_Array_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CryptInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CryptInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
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
        return BasicCryptUtil_Access (BasicCryptUtil_Package.instance);
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
        index := Java_Index_Of (decryptedString, Java_Image (This.XML_START));
        if (index) > (0) then
            decryptedString := Unbounded_Slice (decryptedString, (index) + 1, Length (decryptedString));
        end if;
        return InputStream_Access (ByteArrayInputStream_Package.Create (This.tsUtil.getByteArray (decryptedString)));
   end getDecryptedInputStream;

   procedure getDecryptedInputStream (This : in out BasicCryptUtil; inputStream_Param : access InputStream_Package.InputStream'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) is
      Java_Result : constant InputStream_Access := BasicCryptUtil'Class (This).getDecryptedInputStream (inputStream_Param => inputStream_Param, cryptInterface_Param => cryptInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDecryptedInputStream;

begin
   null;
   instance := BasicCryptUtil_Package.Create;

end org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package;


