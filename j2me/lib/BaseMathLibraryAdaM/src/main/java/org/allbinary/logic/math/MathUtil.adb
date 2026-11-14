--  Generated Code Do Not Modify


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;

package body org.allbinary.logic.math.MathUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   procedure Initialize_Fields (This : in out MathUtil'Class) is
   begin
      null;
      This.ACCURACY := 100;
   end Initialize_Fields;

   procedure Initialize (This : in out MathUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MathUtil_Access is
      This : constant MathUtil_Access := new MathUtil;
   begin
      MathUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MathUtil_Access is
   begin
        return MathUtil_Package.instance;
   end getInstance;

   function getTotalDigits (This : in out MathUtil; digits_Id_Param : Integer) return Integer is
      digits_Id : Integer := digits_Id_Param;
      total : Integer;
   begin
        total := 0;
        while (digits_Id) > (0) loop
            digits_Id := (digits_Id) / (10);
            total := total + 1;
        end loop;
        return total;
   end getTotalDigits;

   function sqrt (This : in out MathUtil; value : Integer) return Integer is
      accumulated : Integer;
      result : Integer;
   begin
        if (value) <= (1) then
            return value;
        end if;
        accumulated := Java_Shift_Right_Arithmetic (value, 1);
        result := Java_Shift_Right_Arithmetic (((accumulated) + (((value) / (accumulated)))), 1);
        loop
            accumulated := result;
            result := Java_Shift_Right_Arithmetic (((accumulated) + (((value) / (accumulated)))), 1);
            exit when not ((accumulated) > (result));
        end loop;
        return accumulated;
   end sqrt;

   function sqrtd (This : in out MathUtil; x : Integer) return Long_Float is
      result : Long_Float;
      index : Integer;
   begin
        if (x) = (0) then
            return Long_Float (0.0);
        end if;
        if (x) < (0) then
            return Long_Float (-(1.0));
        end if;
        result := Long_Float (x);
        for index in 0 .. (This.ACCURACY) - 1 loop
            result := (((result) + (((Long_Float (x)) / (result))))) / (2.0);
        end loop;
        return result;
   end sqrtd;

   function abs_Id (This : in out MathUtil; value : Integer) return Integer is
   begin
        return (if ((value) < (0)) then -(value) else value);
   end abs_Id;

   function abslong (This : in out MathUtil; value : Long_Long_Integer) return Long_Long_Integer is
   begin
        return (if ((value) < (0)) then -(value) else value);
   end abslong;

   function min (This : in out MathUtil; value : Integer; value2 : Integer) return Integer is
   begin
        return (if ((value) <= (value2)) then value else value2);
   end min;

   function max (This : in out MathUtil; value : Integer; value2 : Integer) return Integer is
   begin
        return (if ((value) >= (value2)) then value else value2);
   end max;

   procedure getTotalDigits (This : in out MathUtil; digits_Id_Param : Integer) is
      Java_Result : constant Integer := MathUtil'Class (This).getTotalDigits (digits_Id_Param => digits_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalDigits;

   procedure sqrt (This : in out MathUtil; value : Integer) is
      Java_Result : constant Integer := MathUtil'Class (This).sqrt (value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end sqrt;

   procedure sqrtd (This : in out MathUtil; x : Integer) is
      Java_Result : constant Long_Float := MathUtil'Class (This).sqrtd (x => x);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end sqrtd;

   procedure abs_Id (This : in out MathUtil; value : Integer) is
      Java_Result : constant Integer := MathUtil'Class (This).abs_Id (value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end abs_Id;

   procedure abslong (This : in out MathUtil; value : Long_Long_Integer) is
      Java_Result : constant Long_Long_Integer := MathUtil'Class (This).abslong (value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end abslong;

   procedure min (This : in out MathUtil; value : Integer; value2 : Integer) is
      Java_Result : constant Integer := MathUtil'Class (This).min (value => value, value2 => value2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end min;

   procedure max (This : in out MathUtil; value : Integer; value2 : Integer) is
      Java_Result : constant Integer := MathUtil'Class (This).max (value => value, value2 => value2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end max;

begin
   null;
   instance := MathUtil_Package.Create;

end org.allbinary.logic.math.MathUtil_Package;


