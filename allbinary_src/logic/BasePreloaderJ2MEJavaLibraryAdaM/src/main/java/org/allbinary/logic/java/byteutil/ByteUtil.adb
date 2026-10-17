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


package body org.allbinary.logic.java.byteutil.ByteUtil_Package is

   procedure Initialize_Fields (This : in out ByteUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ByteUtil_Access is
   begin
        return ByteUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ByteUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ByteUtil_Access is
      This : constant ByteUtil_Access := new ByteUtil;
   begin
      ByteUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function xor_Id (This : in out ByteUtil; array_Id : Short_Short_Integer_Array_Access; mask : Short_Short_Integer) return Short_Short_Integer_Array_Access is
      bytes : Short_Short_Integer_Array_Access;
      size : Integer;
      index : Integer;
      currentByte : Short_Short_Integer;
   begin
        bytes := new Short_Short_Integer_Array'(0 .. (array_Id'Length) - 1 => 0);
        size := array_Id'Length;
        index := 0;
        currentByte := 0;
        while (index) < (size) loop
            currentByte := array_Id (index);
            bytes (index) := Short_Short_Integer ((Java_Xor (currentByte, mask)));
            index := index + 1;
        end loop;
        return bytes;
   end xor_Id;

   function not_Id (This : in out ByteUtil; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
      bytes : Short_Short_Integer_Array_Access;
      size : Integer;
      index : Integer;
   begin
        bytes := new Short_Short_Integer_Array'(0 .. (array_Id'Length) - 1 => 0);
        size := array_Id'Length;
        index := 0;
        while (index) < (size) loop
            bytes (index) := Short_Short_Integer (Java_Not (array_Id (index)));
            index := index + 1;
        end loop;
        return bytes;
   end not_Id;

   function xorByte (This : in out ByteUtil; array_Id : Short_Short_Integer_Array_Access; index : Integer) return Short_Short_Integer_Array_Access is
      mask : Short_Short_Integer;
   begin
        mask := 0;
        if (index) = (0) then
            mask := 1;
        end if;
        if (index) = (1) then
            mask := 2;
        end if;
        if (index) = (2) then
            mask := 4;
        end if;
        if (index) = (3) then
            mask := 8;
        end if;
        if (index) = (4) then
            mask := 16;
        end if;
        if (index) = (5) then
            mask := 32;
        end if;
        if (index) = (6) then
            mask := 64;
        end if;
        if (index) = (7) then
            mask := Short_Short_Integer (-(127));
        end if;
        return This.xor_Id (array_Id, mask);
   end xorByte;

   function compare (This : in out ByteUtil; newByteArray : Short_Short_Integer_Array_Access; oldByteArray : Short_Short_Integer_Array_Access) return Boolean is
      size : Integer;
      index : Integer;
   begin
        if (newByteArray'Length) /= (oldByteArray'Length) then
            return False;
        else
            null;
        end if;
        size := newByteArray'Length;
        for index in 0 .. (size) - 1 loop
            if (newByteArray (index)) /= (oldByteArray (index)) then
                return False;
            end if;
        end loop;
        return True;
   end compare;

   function compareWithStats (This : in out ByteUtil; newByteArray : Short_Short_Integer_Array_Access; newSize : Integer; oldByteArray : Short_Short_Integer_Array_Access; stats : Integer_Array_Access) return Boolean is
      size : Integer;
      index : Integer;
   begin
        if (newSize) /= (oldByteArray'Length) then
            stats (0) := -(1);
            stats (2) := newSize;
            stats (3) := oldByteArray'Length;
            return False;
        else
            stats (0) := newSize;
        end if;
        stats (1) := 0;
        size := newSize;
        for index in 0 .. (size) - 1 loop
            if (newByteArray (index)) /= (oldByteArray (index)) then
                return False;
            end if;
            stats (1) := stats (1) + 1;
        end loop;
        return True;
   end compareWithStats;

   procedure xor_Id (This : in out ByteUtil; array_Id : Short_Short_Integer_Array_Access; mask : Short_Short_Integer) is
      Java_Result : constant Short_Short_Integer_Array_Access := ByteUtil'Class (This).xor_Id (array_Id, mask);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end xor_Id;

   procedure not_Id (This : in out ByteUtil; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := ByteUtil'Class (This).not_Id (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end not_Id;

   procedure xorByte (This : in out ByteUtil; array_Id : Short_Short_Integer_Array_Access; index : Integer) is
      Java_Result : constant Short_Short_Integer_Array_Access := ByteUtil'Class (This).xorByte (array_Id, index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end xorByte;

   procedure compare (This : in out ByteUtil; newByteArray : Short_Short_Integer_Array_Access; oldByteArray : Short_Short_Integer_Array_Access) is
      Java_Result : constant Boolean := ByteUtil'Class (This).compare (newByteArray, oldByteArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compare;

   procedure compareWithStats (This : in out ByteUtil; newByteArray : Short_Short_Integer_Array_Access; newSize : Integer; oldByteArray : Short_Short_Integer_Array_Access; stats : Integer_Array_Access) is
      Java_Result : constant Boolean := ByteUtil'Class (This).compareWithStats (newByteArray, newSize, oldByteArray, stats);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareWithStats;

begin
   null;
   instance := ByteUtil_Package.Create;

end org.allbinary.logic.java.byteutil.ByteUtil_Package;


