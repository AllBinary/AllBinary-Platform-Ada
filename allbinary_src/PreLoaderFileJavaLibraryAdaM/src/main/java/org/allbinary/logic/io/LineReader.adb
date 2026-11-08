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


with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package_References;
with org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.io.LineReader_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype AbFileInputStream_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access;
   function "=" (Left, Right : AbFileInputStream_Access) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array;
   function "=" (Left, Right : AbFileInputStream_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access;
   function "=" (Left, Right : AbFileInputStream_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access_Array;
   function "=" (Left, Right : AbFileInputStream_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFileInputStream_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   procedure Initialize_Fields (This : in out LineReader'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.fileName := Null_Unbounded_String;
      This.string_Id := Null_Unbounded_String;
      This.index := 0;
      This.idFile := null;
      This.idData := null;
   end Initialize_Fields;


   procedure Initialize (This : in out LineReader'Class; fileName : Unbounded_String) is
      bytes : Short_Short_Integer_Array_Access;
   begin
      Initialize_Fields (This);
        begin
            bytes := new Short_Short_Integer_Array'(0 .. (100000) - 1 => 0);
            This.fileName := fileName;
            This.idFile := AbFileInputStream_Package.Create (fileName);
            This.idFile.read (bytes);
            This.string_Id := Java_New_String (bytes);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("File: ") & fileName, LineReader_Access'(This'Unchecked_Access), To_Unbounded_String ("LineReader"), e);
            begin
                null;
            end;
                end;
        end;
   end Initialize;

   function Create (fileName : Unbounded_String) return LineReader_Access is
      This : constant LineReader_Access := new LineReader;
   begin
      LineReader_Package.Initialize (This.all, fileName);
      return This;
   end Create;

   function hasNext (This : in out LineReader) return Boolean is
      nextIndex : Integer;
   begin
        begin
            nextIndex := Java_Index_Of (This.string_Id, Java_Image (CommonSeps_Package.getInstance.NEW_LINE), This.index);
            if (nextIndex) = (-(1)) then
                return False;
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, LineReader_Access'(This'Unchecked_Access), To_Unbounded_String ("hasNext"), e);
            begin
                null;
            end;
            return False;
                end;
        end;
   end hasNext;

   --  throws Exception
   function next (This : in out LineReader) return Unbounded_String is
      nextIndex : Integer;
      temp : Unbounded_String;
   begin
        begin
            nextIndex := Java_Index_Of (This.string_Id, Java_Image (CommonSeps_Package.getInstance.NEW_LINE), This.index);
            if (nextIndex) = (-(1)) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("next() should have been called first")));
            end if;
            temp := Unbounded_Slice (This.string_Id, (This.index) + 1, nextIndex);
            This.index := (nextIndex) + (1);
            return temp;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, LineReader_Access'(This'Unchecked_Access), To_Unbounded_String ("next"), e);
            begin
                null;
            end;
            Java_Throw (e);
                end;
        end;
   end next;

end org.allbinary.logic.io.LineReader_Package;


