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


package body org.allbinary.logic.io.LineReader_Package is

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
            when e : others =>
            This.logUtil.put (To_Unbounded_String ("File: ") & fileName, This'Unchecked_Access, To_Unbounded_String ("LineReader"), e);
            begin
                null;
            end;
        end;
   end Initialize;

   function Create (fileName : Unbounded_String) return LineReader_Access is
      This : constant LineReader_Access := new LineReader;
   begin
      Initialize (This.all, fileName);
      return This;
   end Create;

   function hasNext (This : in out LineReader) return Boolean is
      nextIndex : Integer;
   begin
        begin
            nextIndex := This.string_Id.indexOf (CommonSeps_Package.getInstance.NEW_LINE, This.index);
            if (nextIndex) = (-(1)) then
                return False;
            end if;
            return True;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("hasNext"), e);
            begin
                null;
            end;
            return False;
        end;
   end hasNext;

   --  throws Exception
   function next (This : in out LineReader) return Unbounded_String is
      nextIndex : Integer;
      temp : Unbounded_String;
   begin
        begin
            nextIndex := This.string_Id.indexOf (CommonSeps_Package.getInstance.NEW_LINE, This.index);
            if (nextIndex) = (-(1)) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("next() should have been called first")));
            end if;
            temp := Unbounded_Slice (This.string_Id, (This.index) + 1, nextIndex);
            This.index := (nextIndex) + (1);
            return temp;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("next"), e);
            begin
                null;
            end;
            Java_Throw (e);
        end;
   end next;

   procedure hasNext (This : in out LineReader) is
      Java_Result : constant Boolean := LineReader'Class (This).hasNext;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hasNext;

   procedure next (This : in out LineReader) is
      Java_Result : constant Unbounded_String := LineReader'Class (This).next;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end next;

end org.allbinary.logic.io.LineReader_Package;


