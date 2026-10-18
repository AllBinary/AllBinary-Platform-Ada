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


with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory_Package; use org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory_Package;

package body org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out AbBasicCrypt'Class) is
   begin
      null;
      This.cipher := null;
      This.secretKey := null;
      This.algorithm := Null_Unbounded_String;
      This.key := null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbBasicCrypt'Class; algorithm : Unbounded_String; key : Unbounded_String) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        begin
            This.algorithm := algorithm;
            This.key := key.getBytes;
            AbBasicCrypt'Class (This).init;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, AbBasicCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("AbCrypt(alg,key)"), e);
                end;
        end;
   end Initialize;

   function Create (algorithm : Unbounded_String; key : Unbounded_String) return AbBasicCrypt_Access is
      This : constant AbBasicCrypt_Access := new AbBasicCrypt;
   begin
      AbBasicCrypt_Package.Initialize (This.all, algorithm, key);
      return This;
   end Create;

   procedure init (This : in out AbBasicCrypt) is
      sunJce : Provider_Access;
      keySpec : KeySpec_Access;
      keyFactory : SecretKeyFactory_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            sunJce := Provider_Access (SunJCE_Package.Create);
            Security_Package.addProvider (sunJce);
            keySpec := KeySpecFactory_Package.getInstance.getInstance (This.algorithm, This.key);
            keyFactory := SecretKeyFactory_Package.getInstance (This.algorithm);
            This.secretKey := keyFactory.generateSecret (keySpec);
            This.cipher := Cipher_Package.getInstance (This.algorithm);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (To_Unbounded_String ("init Failed"), AbBasicCrypt_Access'(This'Unchecked_Access), commonStrings.INIT, e);
                end;
        end;
   end init;

   function encrypt (This : in out AbBasicCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
      ivArray : Short_Short_Integer_Array_Access;
      encrypted : Short_Short_Integer_Array_Access;
      result : Short_Short_Integer_Array_Access;
      index : Integer;
   begin
        begin
            This.cipher.init (Cipher_Package.ENCRYPT_MODE, This.secretKey);
            ivArray := This.secretKey.getEncoded;
            encrypted := This.cipher.doFinal (array_Id);
            result := new Short_Short_Integer_Array'(0 .. ((ivArray'Length) + (encrypted'Length)) - 1 => 0);
            PreLogUtil_Package.put (To_Unbounded_String ("ivArray Length: ") & Java_Image (ivArray'Length), AbBasicCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("encrypt"));
            for index in 0 .. (ivArray'Length) - 1 loop
                result (index) := ivArray (index);
            end loop;
            for index in 0 .. (encrypted'Length) - 1 loop
                result ((index) + (ivArray'Length)) := encrypted (index);
            end loop;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("Encrypt Failed"), AbBasicCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("encrypt"), e);
            return null;
                end;
        end;
   end encrypt;

   function decrypt (This : in out AbBasicCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
      ivArray : Short_Short_Integer_Array_Access;
      index : Integer;
      result : Short_Short_Integer_Array_Access;
      decrypted : Short_Short_Integer_Array_Access;
   begin
        begin
            This.cipher.init (Cipher_Package.DECRYPT_MODE, This.secretKey);
            ivArray := new Short_Short_Integer_Array'(0 .. (8) - 1 => 0);
            for index in 0 .. (8) - 1 loop
                ivArray (index) := array_Id (index);
            end loop;
            PreLogUtil_Package.put (To_Unbounded_String ("ivArray Length: ") & Java_Image (ivArray'Length), AbBasicCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("encrypt"));
            result := new Short_Short_Integer_Array'(0 .. ((array_Id'Length) - (ivArray'Length)) - 1 => 0);
            for index in ivArray'Length .. (array_Id'Length) - 1 loop
                result ((index) - (ivArray'Length)) := array_Id (index);
            end loop;
            decrypted := This.cipher.doFinal (result);
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("decrypt Failed"), AbBasicCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("decrypt"), e);
            return null;
                end;
        end;
   end decrypt;

   procedure encrypt (This : in out AbBasicCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbBasicCrypt'Class (This).encrypt (array_Id => array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encrypt;

   procedure decrypt (This : in out AbBasicCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbBasicCrypt'Class (This).decrypt (array_Id => array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

end org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package;


