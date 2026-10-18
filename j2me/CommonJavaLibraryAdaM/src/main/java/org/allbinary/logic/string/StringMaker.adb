--  Generated Code Do Not Modify


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;

package body org.allbinary.logic.string_Id.StringMaker_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   procedure Initialize_Fields (This : in out StringMaker'Class) is
   begin
      null;
      
      This.currentLength := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out StringMaker'Class) is
   begin
      Initialize_Fields (This);
        This.charArray := new Character_Array'(0 .. (20) - 1 => ASCII.NUL);
   end Initialize;

   function Create return StringMaker_Access is
      This : constant StringMaker_Access := new StringMaker;
   begin
      StringMaker_Package.Initialize (This.all);
      return This;
   end Create;

   function append (This : in out StringMaker; string_Id : Unbounded_String) return StringMaker_Access is
      stringLength : Integer;
   begin
        stringLength := Length (string_Id);
        StringMaker'Class (This).ensureCapacity ((This.currentLength) + (stringLength));
        Java_Get_Chars (string_Id, 0, stringLength, This.charArray, This.currentLength);
        This.currentLength := (This.currentLength) + (stringLength);
        return StringMaker_Access'(This'Unchecked_Access);
   end append;

   function appendchar (This : in out StringMaker; c : Character) return StringMaker_Access is
   begin
        StringMaker'Class (This).ensureCapacity ((This.currentLength) + (1));
        This.charArray (Java_Post_Increment (This.currentLength)) := c;
        return StringMaker_Access'(This'Unchecked_Access);
   end appendchar;

   function appendCharArray (This : in out StringMaker; charArray : Character_Array_Access; start : Integer; end_Id : Integer) return StringMaker_Access is
      index : Integer;
   begin
        StringMaker'Class (This).ensureCapacity ((This.currentLength) + (((end_Id) - (start))));
        for index in start .. (end_Id) - 1 loop
            This.charArray (Java_Post_Increment (This.currentLength)) := charArray (index);
        end loop;
        return StringMaker_Access'(This'Unchecked_Access);
   end appendCharArray;

   function appendbyte (This : in out StringMaker; b : Short_Short_Integer) return StringMaker_Access is
   begin
        StringMaker'Class (This).append (To_Unbounded_String (Java_Image (b)));
        return StringMaker_Access'(This'Unchecked_Access);
   end appendbyte;

   function appendshort (This : in out StringMaker; b : Short_Integer) return StringMaker_Access is
   begin
        StringMaker'Class (This).append (To_Unbounded_String (Java_Image (b)));
        return StringMaker_Access'(This'Unchecked_Access);
   end appendshort;

   function appendint (This : in out StringMaker; i : Integer) return StringMaker_Access is
   begin
        StringMaker'Class (This).append (To_Unbounded_String (Java_Image (i)));
        return StringMaker_Access'(This'Unchecked_Access);
   end appendint;

   function appendlong (This : in out StringMaker; l : Long_Long_Integer) return StringMaker_Access is
   begin
        StringMaker'Class (This).append (To_Unbounded_String (Java_Image (l)));
        return StringMaker_Access'(This'Unchecked_Access);
   end appendlong;

   function appendfloat (This : in out StringMaker; f : Float) return StringMaker_Access is
   begin
        StringMaker'Class (This).append (To_Unbounded_String (Java_Image (f)));
        return StringMaker_Access'(This'Unchecked_Access);
   end appendfloat;

   function appendboolean (This : in out StringMaker; bool : Boolean) return StringMaker_Access is
   begin
        if bool then
            StringMaker'Class (This).ensureCapacity ((This.currentLength) + (4));
            This.charArray (Java_Post_Increment (This.currentLength)) := 't';
            This.charArray (Java_Post_Increment (This.currentLength)) := 'r';
            This.charArray (Java_Post_Increment (This.currentLength)) := 'u';
            This.charArray (Java_Post_Increment (This.currentLength)) := 'e';
        else
            StringMaker'Class (This).ensureCapacity ((This.currentLength) + (5));
            This.charArray (Java_Post_Increment (This.currentLength)) := 'f';
            This.charArray (Java_Post_Increment (This.currentLength)) := 'a';
            This.charArray (Java_Post_Increment (This.currentLength)) := 'l';
            This.charArray (Java_Post_Increment (This.currentLength)) := 's';
            This.charArray (Java_Post_Increment (This.currentLength)) := 'e';
        end if;
        return StringMaker_Access'(This'Unchecked_Access);
   end appendboolean;

   procedure ensureCapacity (This : in out StringMaker; minSize : Integer) is
      oldCapacity : Integer;
      newCapacity : Integer;
      copy : Character_Array_Access;
      min : Integer;
   begin
        oldCapacity := This.charArray'Length;
        if (minSize) > (oldCapacity) then
            newCapacity := (oldCapacity) * (3);
            if (newCapacity) < (minSize) then
                newCapacity := minSize;
            end if;
            copy := new Character_Array'(0 .. (newCapacity) - 1 => ASCII.NUL);
            min := StringMaker'Class (This).min (This.charArray'Length, newCapacity);
            Java_Array_Copy (This.charArray, 0, copy, 0, min);
            This.charArray := copy;
        end if;
   end ensureCapacity;

   function min (This : in out StringMaker; value : Integer; value2 : Integer) return Integer is
   begin
        return (if ((value) <= (value2)) then value else value2);
   end min;

   function delete (This : in out StringMaker; start : Integer; end_Id : Integer) return StringMaker_Access is
   begin
        This.currentLength := (This.currentLength) - (((end_Id) - (start)));
        return StringMaker_Access'(This'Unchecked_Access);
   end delete;

   function length (This : in out StringMaker) return Integer is
   begin
        return This.currentLength;
   end length;

   function toString (This : in out StringMaker) return Unbounded_String is
   begin
        return Java_New_String (This.charArray, 0, This.currentLength);
   end toString;

   procedure append (This : in out StringMaker; string_Id : Unbounded_String) is
      Java_Result : constant StringMaker_Access := StringMaker'Class (This).append (string_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end append;

   procedure appendchar (This : in out StringMaker; c : Character) is
      Java_Result : constant StringMaker_Access := StringMaker'Class (This).appendchar (c);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end appendchar;

   procedure appendCharArray (This : in out StringMaker; charArray : Character_Array_Access; start : Integer; end_Id : Integer) is
      Java_Result : constant StringMaker_Access := StringMaker'Class (This).appendCharArray (charArray, start, end_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end appendCharArray;

   procedure appendbyte (This : in out StringMaker; b : Short_Short_Integer) is
      Java_Result : constant StringMaker_Access := StringMaker'Class (This).appendbyte (b);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end appendbyte;

   procedure appendshort (This : in out StringMaker; b : Short_Integer) is
      Java_Result : constant StringMaker_Access := StringMaker'Class (This).appendshort (b);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end appendshort;

   procedure appendint (This : in out StringMaker; i : Integer) is
      Java_Result : constant StringMaker_Access := StringMaker'Class (This).appendint (i);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end appendint;

   procedure appendlong (This : in out StringMaker; l : Long_Long_Integer) is
      Java_Result : constant StringMaker_Access := StringMaker'Class (This).appendlong (l);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end appendlong;

   procedure appendfloat (This : in out StringMaker; f : Float) is
      Java_Result : constant StringMaker_Access := StringMaker'Class (This).appendfloat (f);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end appendfloat;

   procedure appendboolean (This : in out StringMaker; bool : Boolean) is
      Java_Result : constant StringMaker_Access := StringMaker'Class (This).appendboolean (bool);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end appendboolean;

   procedure min (This : in out StringMaker; value : Integer; value2 : Integer) is
      Java_Result : constant Integer := StringMaker'Class (This).min (value, value2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end min;

   procedure delete (This : in out StringMaker; start : Integer; end_Id : Integer) is
      Java_Result : constant StringMaker_Access := StringMaker'Class (This).delete (start, end_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end delete;

end org.allbinary.logic.string_Id.StringMaker_Package;


