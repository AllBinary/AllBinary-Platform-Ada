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


package body org.allbinary.logic.system.security.AbCryptUtil_Package is

   procedure Initialize_Fields (This : in out AbCryptUtil'Class) is
   begin
      null;
      This.streamUtil := StreamUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return AbCryptUtil_Access is
   begin
        return AbCryptUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AbCryptUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbCryptUtil_Access is
      This : constant AbCryptUtil_Access := new AbCryptUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function decrypt (This : in out AbCryptUtil; inputStream : InputStream_Access; key : Unbounded_String) return Short_Short_Integer_Array_Access is
      outputStream : ByteArrayOutputStream_Access;
      abCrypt : AbCrypt_Access;
   begin
        outputStream := null;
        begin
            outputStream := ByteArrayOutputStream_Access (This.streamUtil.get (inputStream, ByteArrayOutputStream_Package.Create, new Short_Short_Integer_Array'(0 .. (16384) - 1 => 0)));
            abCrypt := AbCrypt_Package.Create (KeySpecFactory_Package.getInstance.DESEDE);
            abCrypt.init (key);
            return abCrypt.decrypt (outputStream.toByteArray);
        end;
        --  finally
        begin
            This.streamUtil.close (outputStream);
            This.streamUtil.close (inputStream);
        end;
   end decrypt;

   procedure getInstance is
      Java_Result : constant AbCryptUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure decrypt (This : in out AbCryptUtil; inputStream : InputStream_Access; key : Unbounded_String) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbCryptUtil'Class (This).decrypt (inputStream, key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

begin
   null;
   instance := AbCryptUtil_Package.Create;

end org.allbinary.logic.system.security.AbCryptUtil_Package;


