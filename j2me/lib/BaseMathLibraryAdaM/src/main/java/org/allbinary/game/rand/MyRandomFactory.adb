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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.game.rand.MyRandomFactory_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out MyRandomFactory'Class) is
   begin
      null;
      This.mathUtil := MathUtil_Package.getInstance;
      
   end Initialize_Fields;


   function getInstance return MyRandomFactory_Access is
   begin
        return MyRandomFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out MyRandomFactory'Class) is
   begin
      Initialize_Fields (This);
        This.rand := Random_Package.Create (Java_Current_Time_Millis);
   end Initialize;

   function Create return MyRandomFactory_Access is
      This : constant MyRandomFactory_Access := new MyRandomFactory;
   begin
      MyRandomFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setSeed (This : in out MyRandomFactory; seed : Long_Long_Integer) is
   begin
        This.rand := Random_Package.Create (seed);
   end setSeed;

   function getNextInt (This : in out MyRandomFactory; range_Id : Integer) return Integer is
      div : Integer;
   begin
        div := (((Integer'Last) / (range_Id))) + (1);
        return Integer (((This.rand.nextInt) / (div)));
   end getNextInt;

   function getAbsoluteNextInt (This : in out MyRandomFactory; range_Id : Integer) return Integer is
   begin
        return This.mathUtil.abs_Id (MyRandomFactory'Class (This).getNextInt (range_Id));
   end getAbsoluteNextInt;

   function getAbsoluteNextIntAllowZero (This : in out MyRandomFactory; range_Id : Integer) return Integer is
   begin
        if (range_Id) = (0) then
            return 0;
        else
            return This.mathUtil.abs_Id (MyRandomFactory'Class (This).getNextInt (range_Id));
        end if;
   end getAbsoluteNextIntAllowZero;

   procedure shuffle (This : in out MyRandomFactory; intArray : Integer_Array_Access) is
   begin
        MyRandomFactory'Class (This).shuffleTotal (intArray, (intArray'Length) * (7));
   end shuffle;

   procedure shuffleTotal (This : in out MyRandomFactory; intArray : Integer_Array_Access; shuffleTotal : Integer) is
      size : Integer;
      randomIndex : Integer;
      randomIndex2 : Integer;
      value : Integer;
      index : Integer;
   begin
        size := intArray'Length;
        randomIndex := 0;
        randomIndex2 := 0;
        value := 0;
        for index in 0 .. (shuffleTotal) - 1 loop
            randomIndex := MyRandomFactory'Class (This).getAbsoluteNextIntAllowZero (size);
            randomIndex2 := MyRandomFactory'Class (This).getAbsoluteNextIntAllowZero (size);
            value := intArray (randomIndex);
            intArray (randomIndex) := intArray (randomIndex2);
            intArray (randomIndex2) := value;
        end loop;
   end shuffleTotal;

   procedure shuffle2 (This : in out MyRandomFactory; intArray : Integer_Array_Access; intArray2 : Integer_Array_Access) is
   begin
        MyRandomFactory'Class (This).shuffle2Total (intArray, intArray2, (intArray'Length) * (7));
   end shuffle2;

   procedure shuffle2Total (This : in out MyRandomFactory; intArray : Integer_Array_Access; intArray2 : Integer_Array_Access; shuffleTotal : Integer) is
      size : Integer;
      randomIndex : Integer;
      randomIndex2 : Integer;
      value : Integer;
      value2 : Integer;
      index : Integer;
   begin
        size := intArray'Length;
        randomIndex := 0;
        randomIndex2 := 0;
        value := 0;
        value2 := 0;
        for index in 0 .. (shuffleTotal) - 1 loop
            randomIndex := MyRandomFactory'Class (This).getAbsoluteNextIntAllowZero (size);
            randomIndex2 := MyRandomFactory'Class (This).getAbsoluteNextIntAllowZero (size);
            value := intArray (randomIndex);
            value2 := intArray2 (randomIndex);
            intArray (randomIndex) := intArray (randomIndex2);
            intArray (randomIndex2) := value;
            intArray2 (randomIndex) := intArray2 (randomIndex2);
            intArray2 (randomIndex2) := value2;
        end loop;
   end shuffle2Total;

   procedure main (args : Unbounded_String_Array_Access) is
      randomFactory : MyRandomFactory_Access;
      stringBuilder : StringMaker_Access;
      commonSeps : CommonSeps_Access;
      size2 : Integer;
      index : Integer;
      intArray : Integer_Array_Access;
      intArray2 : Integer_Array_Access;
      size : Integer;
      found : Boolean;
      index2 : Integer;
   begin
        randomFactory := MyRandomFactory_Package.getInstance;
        stringBuilder := StringMaker_Package.Create;
        commonSeps := CommonSeps_Package.getInstance;
        size2 := 100;
        for index in 0 .. (size2) - 1 loop
            stringBuilder.appendint (Integer (randomFactory.getAbsoluteNextInt (3))).append (commonSeps.COMMA);
        end loop;
        Ada.Text_IO.Put_Line (Java_Image (stringBuilder.toString));
        stringBuilder.delete (0, stringBuilder.length);
        intArray := new Integer_Array'(0 .. (52) - 1 => 0);
        intArray2 := new Integer_Array'(0 .. (52) - 1 => 0);
        size := intArray'Length;
        for index in 0 .. (size) - 1 loop
            intArray (index) := index;
            intArray2 (index) := index;
        end loop;
        randomFactory.shuffle2 (intArray, intArray2);
        for index in 0 .. (size) - 1 loop
            stringBuilder.appendint (intArray (index)).append (commonSeps.COMMA);
        end loop;
        Ada.Text_IO.Put_Line (Java_Image (stringBuilder.toString));
        stringBuilder.delete (0, stringBuilder.length);
        for index in 0 .. (size) - 1 loop
            stringBuilder.appendint (intArray2 (index)).append (commonSeps.COMMA);
        end loop;
        Ada.Text_IO.Put_Line (Java_Image (stringBuilder.toString));
        found := False;
        for index in 0 .. (size) - 1 loop
            found := False;
            for index2 in 0 .. (size) - 1 loop
                if (intArray (index2)) = (index) then
                    found := True;
                end if;
            end loop;
            if not (found) then
                Java_Throw (Java_New_Exception ("RuntimeException"));
            end if;
        end loop;
   end main;

   procedure getNextInt (This : in out MyRandomFactory; range_Id : Integer) is
      Java_Result : constant Integer := MyRandomFactory'Class (This).getNextInt (range_Id => range_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNextInt;

   procedure getAbsoluteNextInt (This : in out MyRandomFactory; range_Id : Integer) is
      Java_Result : constant Integer := MyRandomFactory'Class (This).getAbsoluteNextInt (range_Id => range_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAbsoluteNextInt;

   procedure getAbsoluteNextIntAllowZero (This : in out MyRandomFactory; range_Id : Integer) is
      Java_Result : constant Integer := MyRandomFactory'Class (This).getAbsoluteNextIntAllowZero (range_Id => range_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAbsoluteNextIntAllowZero;

begin
   null;
   instance := MyRandomFactory_Package.Create;

end org.allbinary.game.rand.MyRandomFactory_Package;


