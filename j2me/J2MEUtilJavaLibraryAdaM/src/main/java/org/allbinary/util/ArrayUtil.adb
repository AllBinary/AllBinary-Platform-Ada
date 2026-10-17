--  Generated Code Do Not Modify


package body org.allbinary.util.ArrayUtil_Package is

   procedure Initialize_Fields (This : in out ArrayUtil'Class) is
   begin
      null;
      This.mathUtil := MathUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ArrayUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ArrayUtil_Access is
      This : constant ArrayUtil_Access := new ArrayUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ArrayUtil_Access is
   begin
        return ArrayUtil_Package.instance;
   end getInstance;

   function copyOf (This : in out ArrayUtil; original : Java_Object_Access_Array_Access; newLength : Integer) return Java_Object_Access_Array_Access is
   begin
        return This.copyOfType (original, newLength, original.all'Tag);
   end copyOf;

   function copyOfType (This : in out ArrayUtil; original : Java_Object_Access_Array_Access; newLength : Integer; newType : Ada.Tags.Tag) return Java_Object_Access_Array_Access is
      copy : Java_Object_Access_Array_Access;
   begin
        copy := new Java_Object_Access_Array'(0 .. (newLength) - 1 => null);
        Java_Array_Copy (original, 0, copy, 0, This.mathUtil.min (original'Length, newLength));
        return copy;
   end copyOfType;

   function copyOfbyte (This : in out ArrayUtil; original : Short_Short_Integer_Array_Access; newLength : Integer) return Short_Short_Integer_Array_Access is
      copy : Short_Short_Integer_Array_Access;
   begin
        copy := new Short_Short_Integer_Array'(0 .. (newLength) - 1 => 0);
        Java_Array_Copy (original, 0, copy, 0, This.mathUtil.min (original'Length, newLength));
        return copy;
   end copyOfbyte;

   function copyOfshort (This : in out ArrayUtil; original : Short_Integer_Array_Access; newLength : Integer) return Short_Integer_Array_Access is
      copy : Short_Integer_Array_Access;
   begin
        copy := new Short_Integer_Array'(0 .. (newLength) - 1 => 0);
        Java_Array_Copy (original, 0, copy, 0, This.mathUtil.min (original'Length, newLength));
        return copy;
   end copyOfshort;

   function copyOfint (This : in out ArrayUtil; original : Integer_Array_Access; newLength : Integer) return Integer_Array_Access is
      copy : Integer_Array_Access;
   begin
        copy := new Integer_Array'(0 .. (newLength) - 1 => 0);
        Java_Array_Copy (original, 0, copy, 0, This.mathUtil.min (original'Length, newLength));
        return copy;
   end copyOfint;

   function copyOflong (This : in out ArrayUtil; original : Long_Long_Integer_Array_Access; newLength : Integer) return Long_Long_Integer_Array_Access is
      copy : Long_Long_Integer_Array_Access;
   begin
        copy := new Long_Long_Integer_Array'(0 .. (newLength) - 1 => 0);
        Java_Array_Copy (original, 0, copy, 0, This.mathUtil.min (original'Length, newLength));
        return copy;
   end copyOflong;

   function copyOfchar (This : in out ArrayUtil; original : Character_Array_Access; newLength : Integer) return Character_Array_Access is
      copy : Character_Array_Access;
   begin
        copy := new Character_Array'(0 .. (newLength) - 1 => ASCII.NUL);
        Java_Array_Copy (original, 0, copy, 0, This.mathUtil.min (original'Length, newLength));
        return copy;
   end copyOfchar;

   function copyOffloat (This : in out ArrayUtil; original : Float_Array_Access; newLength : Integer) return Float_Array_Access is
      copy : Float_Array_Access;
   begin
        copy := new Float_Array'(0 .. (newLength) - 1 => 0.0);
        Java_Array_Copy (original, 0, copy, 0, This.mathUtil.min (original'Length, newLength));
        return copy;
   end copyOffloat;

   function copyOfdouble (This : in out ArrayUtil; original : Long_Float_Array_Access; newLength : Integer) return Long_Float_Array_Access is
      copy : Long_Float_Array_Access;
   begin
        copy := new Long_Float_Array'(0 .. (newLength) - 1 => 0.0);
        Java_Array_Copy (original, 0, copy, 0, This.mathUtil.min (original'Length, newLength));
        return copy;
   end copyOfdouble;

   function copyOfboolean (This : in out ArrayUtil; original : Boolean_Array_Access; newLength : Integer) return Boolean_Array_Access is
      copy : Boolean_Array_Access;
   begin
        copy := new Boolean_Array'(0 .. (newLength) - 1 => False);
        Java_Array_Copy (original, 0, copy, 0, This.mathUtil.min (original'Length, newLength));
        return copy;
   end copyOfboolean;

   procedure reverse_Id (This : in out ArrayUtil; intArray : Integer_Array_Access) is
      length : Integer;
      temp : Integer;
      size : Integer;
      index : Integer;
   begin
        length := (intArray'Length) - (1);
        temp := 0;
        size := (length) / (2);
        for index in 0 .. size loop
            temp := intArray (index);
            intArray (index) := intArray ((length) - (index));
            intArray ((length) - (index)) := temp;
        end loop;
   end reverse_Id;

   procedure flip (This : in out ArrayUtil; intArray : Integer_Array_Access; width : Integer; height : Integer) is
      length : Integer;
      temp : Integer;
      index : Integer;
      rowIndex : Integer;
      x : Integer;
      y : Integer;
   begin
        length := (height) - (1);
        temp := 0;
        index := 0;
        rowIndex := 0;
        for y in 0 .. (length) / (2) loop
            for x in 0 .. (width) - 1 loop
                rowIndex := ((((length) - (y))) * (width));
                index := (x) + (((y) * (width)));
                temp := intArray (index);
                intArray (index) := intArray ((rowIndex) + (x));
                intArray ((rowIndex) + (x)) := temp;
            end loop;
        end loop;
   end flip;

   function toStringFromTwoDimensionaArray (This : in out ArrayUtil; twoDimensionalIntArray : Integer_Array_Access_Array_Access) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      commonSeps : CommonSeps_Access;
      endIndex : Integer;
      endIndex2 : Integer;
      index2 : Integer;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        commonSeps := CommonSeps_Package.getInstance;
        endIndex := twoDimensionalIntArray'Length;
        endIndex2 := twoDimensionalIntArray (0)'Length;
        for index in 0 .. (endIndex) - 1 loop
            stringBuffer.append (commonSeps.BRACE_OPEN);
            for index2 in 0 .. (endIndex2) - 1 loop
                stringBuffer.appendint (Integer (twoDimensionalIntArray (index) (index2)));
                stringBuffer.append (commonSeps.COMMA_SEP);
            end loop;
            stringBuffer.append (commonSeps.BRACE_CLOSE);
            stringBuffer.append (commonSeps.NEW_LINE);
        end loop;
        return stringBuffer.toString;
   end toStringFromTwoDimensionaArray;

   function toStringFromObjectArray (This : in out ArrayUtil; objectArray : Java_Object_Access_Array_Access) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      commonSeps : CommonSeps_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        commonSeps := CommonSeps_Package.getInstance;
        for index in 0 .. (objectArray'Length) - 1 loop
            stringBuffer.append (StringUtil_Package.getInstance.toString (objectArray (index)));
            stringBuffer.append (commonSeps.COMMA_SEP);
        end loop;
        return stringBuffer.toString;
   end toStringFromObjectArray;

   function toStringFromByteArray (This : in out ArrayUtil; byteArray : Short_Short_Integer_Array_Access) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      commonSeps : CommonSeps_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        commonSeps := CommonSeps_Package.getInstance;
        for index in 0 .. (byteArray'Length) - 1 loop
            stringBuffer.appendbyte (byteArray (index));
            stringBuffer.append (commonSeps.COMMA_SEP);
        end loop;
        return stringBuffer.toString;
   end toStringFromByteArray;

   procedure getInstance is
      Java_Result : constant ArrayUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure copyOf (This : in out ArrayUtil; original : Java_Object_Access_Array_Access; newLength : Integer) is
      Java_Result : constant Java_Object_Access_Array_Access := ArrayUtil'Class (This).copyOf (original, newLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copyOf;

   procedure copyOfType (This : in out ArrayUtil; original : Java_Object_Access_Array_Access; newLength : Integer; newType : Ada.Tags.Tag) is
      Java_Result : constant Java_Object_Access_Array_Access := ArrayUtil'Class (This).copyOfType (original, newLength, newType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copyOfType;

   procedure copyOfbyte (This : in out ArrayUtil; original : Short_Short_Integer_Array_Access; newLength : Integer) is
      Java_Result : constant Short_Short_Integer_Array_Access := ArrayUtil'Class (This).copyOfbyte (original, newLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copyOfbyte;

   procedure copyOfshort (This : in out ArrayUtil; original : Short_Integer_Array_Access; newLength : Integer) is
      Java_Result : constant Short_Integer_Array_Access := ArrayUtil'Class (This).copyOfshort (original, newLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copyOfshort;

   procedure copyOfint (This : in out ArrayUtil; original : Integer_Array_Access; newLength : Integer) is
      Java_Result : constant Integer_Array_Access := ArrayUtil'Class (This).copyOfint (original, newLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copyOfint;

   procedure copyOflong (This : in out ArrayUtil; original : Long_Long_Integer_Array_Access; newLength : Integer) is
      Java_Result : constant Long_Long_Integer_Array_Access := ArrayUtil'Class (This).copyOflong (original, newLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copyOflong;

   procedure copyOfchar (This : in out ArrayUtil; original : Character_Array_Access; newLength : Integer) is
      Java_Result : constant Character_Array_Access := ArrayUtil'Class (This).copyOfchar (original, newLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copyOfchar;

   procedure copyOffloat (This : in out ArrayUtil; original : Float_Array_Access; newLength : Integer) is
      Java_Result : constant Float_Array_Access := ArrayUtil'Class (This).copyOffloat (original, newLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copyOffloat;

   procedure copyOfdouble (This : in out ArrayUtil; original : Long_Float_Array_Access; newLength : Integer) is
      Java_Result : constant Long_Float_Array_Access := ArrayUtil'Class (This).copyOfdouble (original, newLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copyOfdouble;

   procedure copyOfboolean (This : in out ArrayUtil; original : Boolean_Array_Access; newLength : Integer) is
      Java_Result : constant Boolean_Array_Access := ArrayUtil'Class (This).copyOfboolean (original, newLength);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copyOfboolean;

   procedure toStringFromTwoDimensionaArray (This : in out ArrayUtil; twoDimensionalIntArray : Integer_Array_Access_Array_Access) is
      Java_Result : constant Unbounded_String := ArrayUtil'Class (This).toStringFromTwoDimensionaArray (twoDimensionalIntArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toStringFromTwoDimensionaArray;

   procedure toStringFromObjectArray (This : in out ArrayUtil; objectArray : Java_Object_Access_Array_Access) is
      Java_Result : constant Unbounded_String := ArrayUtil'Class (This).toStringFromObjectArray (objectArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toStringFromObjectArray;

   procedure toStringFromByteArray (This : in out ArrayUtil; byteArray : Short_Short_Integer_Array_Access) is
      Java_Result : constant Unbounded_String := ArrayUtil'Class (This).toStringFromByteArray (byteArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toStringFromByteArray;

begin
   null;
   instance := ArrayUtil_Package.Create;

end org.allbinary.util.ArrayUtil_Package;


