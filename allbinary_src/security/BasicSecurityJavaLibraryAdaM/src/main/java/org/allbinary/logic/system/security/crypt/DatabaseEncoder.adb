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


package body org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package is

   procedure Initialize_Fields (This : in out DatabaseEncoder'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DatabaseEncoder'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DatabaseEncoder_Access is
      This : constant DatabaseEncoder_Access := new DatabaseEncoder;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function encode (value : Short_Short_Integer_Array_Access) return Unbounded_String is
      array_Id : Short_Short_Integer_Array_Access;
      stringBuffer : StringMaker_Access;
      index : Integer;
      commonStrings : CommonStrings_Access;
   begin
        begin
            array_Id := value;
            stringBuffer := StringMaker_Package.Create;
            for index in 0 .. (array_Id'Length) - 1 loop
                stringBuffer.append (array_Id (index).toString);
                if (index) < ((array_Id'Length) - (1)) then
                    stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
                end if;
            end loop;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, To_Unbounded_String ("DatabaseEncoder"), To_Unbounded_String ("decode"), e);
            return StringUtil_Package.getInstance.EMPTY_STRING;
                end;
        end;
   end encode;

   function decode (value : Unbounded_String) return Short_Short_Integer_Array_Access is
      tokenizer : Tokenizer_Access;
      vector : BasicArrayList_Access;
      byteVector : BasicArrayList_Access;
      size : Integer;
      byteOfData : Unbounded_String;
      index : Integer;
      decode : Short_Short_Integer_Array_Access;
      decodeIndex : Integer;
      aByte : Short_Short_Integer;
      commonStrings : CommonStrings_Access;
   begin
        begin
            tokenizer := Tokenizer_Package.Create (CommonSeps_Package.getInstance.SPACE);
            vector := tokenizer.getTokensFromString (value, BasicArrayListD_Package.Create);
            byteVector := BasicArrayListD_Package.Create;
            size := vector.size;
            byteOfData := Null_Unbounded_String;
            for index in 0 .. (size) - 1 loop
                byteOfData := Unbounded_String (vector.objectArray (index));
                byteVector.add (byteOfData);
            end loop;
            decode := new Short_Short_Integer_Array'(0 .. (byteVector.size) - 1 => 0);
            decodeIndex := 0;
            aByte := null;
            for index in 0 .. (size) - 1 loop
                aByte := Short_Short_Integer (byteVector.objectArray (index));
                decode (decodeIndex) := aByte.byteValue;
                decodeIndex := decodeIndex + 1;
            end loop;
            return decode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putSE (commonStrings.EXCEPTION_Id, To_Unbounded_String ("DatabaseEncoder"), To_Unbounded_String ("decode"), e);
            return NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
                end;
        end;
   end decode;

   procedure encode (value : Short_Short_Integer_Array_Access) is
      Java_Result : constant Unbounded_String := encode (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encode;

   procedure decode (value : Unbounded_String) is
      Java_Result : constant Short_Short_Integer_Array_Access := decode (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decode;

end org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;


