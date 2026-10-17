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


package body org.allbinary.logic.math.PrimitiveLongSingleton_Package is

   procedure Initialize_Fields (This : in out PrimitiveLongSingleton'Class) is
   begin
      null;
      This.UNK := new Character_Array'('U', 'n', 'k');
      This.NUMBER_ARRAY := new Short_Short_Integer_Array'(0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
      This.NUMBER_CHAR_ARRAY := new Character_Array'('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
      This.NUMBER_CHAR_ARRAYS := new Character_Array_Access_Array'(new Character_Array'(0 => '0'), new Character_Array'(0 => '1'), new Character_Array'(0 => '2'), new Character_Array'(0 => '3'), new Character_Array'(0 => '4'), new Character_Array'(0 => '5'), new Character_Array'(0 => '6'), new Character_Array'(0 => '7'), new Character_Array'(0 => '8'), new Character_Array'(0 => '9'));
      This.ZERO := new Character_Array'(0 => This.NUMBER_CHAR_ARRAY (0));
   end Initialize_Fields;

   procedure Initialize (This : in out PrimitiveLongSingleton'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PrimitiveLongSingleton_Access is
      This : constant PrimitiveLongSingleton_Access := new PrimitiveLongSingleton;
   begin
      PrimitiveLongSingleton_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PrimitiveLongSingleton_Access is
   begin
        return PrimitiveLongSingleton_Package.instance;
   end getInstance;

   --  throws Exception
   function getNumberFromChar (This : in out PrimitiveLongSingleton; numberAsChar : Character) return Short_Short_Integer is
      size : Integer;
      index : Integer;
   begin
        size := This.NUMBER_CHAR_ARRAY'Length;
        for index in 0 .. (size) - 1 loop
            if (This.NUMBER_CHAR_ARRAY (index)) = (numberAsChar) then
                return This.NUMBER_ARRAY (index);
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", StringMaker_Package.Create.append (To_Unbounded_String ("numberAsChar was not in array: ")).appendchar (numberAsChar).toString));
   end getNumberFromChar;

   procedure getNumberFromChar (This : in out PrimitiveLongSingleton; numberAsChar : Character) is
      Java_Result : constant Short_Short_Integer := PrimitiveLongSingleton'Class (This).getNumberFromChar (numberAsChar);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNumberFromChar;

begin
   null;
   instance := PrimitiveLongSingleton_Package.Create;

end org.allbinary.logic.math.PrimitiveLongSingleton_Package;


