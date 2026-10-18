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


with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.logic.system.security.crypt.jcehelper.BasicCrypt_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out BasicCrypt'Class) is
   begin
      null;
      This.byteUtil := ByteUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicCrypt'Class; keyAsString : Unbounded_String) is
      key : Short_Short_Integer_Array_Access;
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        key := NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
        begin
            key := TsUtil_Package.getInstance.getByteArray (keyAsString);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, BasicCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("AbCrypt(alg,key)"), e);
                end;
        end;
        This.key := key;
   end Initialize;

   function Create (keyAsString : Unbounded_String) return BasicCrypt_Access is
      This : constant BasicCrypt_Access := new BasicCrypt;
   begin
      BasicCrypt_Package.Initialize (This.all, keyAsString);
      return This;
   end Create;

   function encrypt (This : in out BasicCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        begin
            return BasicCrypt'Class (This).mutilate (array_Id);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("Encrypt Failed"), BasicCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("encrypt"), e);
            return NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
                end;
        end;
   end encrypt;

   function decrypt (This : in out BasicCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        begin
            return BasicCrypt'Class (This).mutilate (array_Id);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("decrypt Failed"), BasicCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("decrypt"), e);
            return NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
                end;
        end;
   end decrypt;

   function mutilate (This : in out BasicCrypt; array_Id_Param : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
      array_Id : Short_Short_Integer_Array_Access := array_Id_Param;
      value : Short_Short_Integer;
      index : Integer;
   begin
        value := 0;
        for index in 0 .. (This.key'Length) - 1 loop
            value := This.key (index);
            array_Id := This.byteUtil.xor_Id (array_Id, value);
        end loop;
        return array_Id;
   end mutilate;

   procedure encrypt (This : in out BasicCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := BasicCrypt'Class (This).encrypt (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encrypt;

   procedure decrypt (This : in out BasicCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := BasicCrypt'Class (This).decrypt (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

   procedure mutilate (This : in out BasicCrypt; array_Id_Param : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := BasicCrypt'Class (This).mutilate (array_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end mutilate;

end org.allbinary.logic.system.security.crypt.jcehelper.BasicCrypt_Package;


