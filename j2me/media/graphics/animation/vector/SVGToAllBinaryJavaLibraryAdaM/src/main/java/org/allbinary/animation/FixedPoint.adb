--  Generated Code Do Not Modify


package body org.allbinary.animation.FixedPoint_Package is

   procedure Initialize_Fields (This : in out FixedPoint'Class) is
   begin
      null;
      This.ONE := Java_Shift_Left (1, 16);
   end Initialize_Fields;

   procedure Initialize (This : in out FixedPoint'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FixedPoint_Access is
      This : constant FixedPoint_Access := new FixedPoint;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return FixedPoint_Access is
   begin
        return FixedPoint_Package.instance;
   end getInstance;

   function toFixed (This : in out FixedPoint; val : Long_Float) return Integer is
   begin
        return Integer (((val) * (65536.0)));
   end toFixed;

   function toFixed (This : in out FixedPoint; val : Float) return Integer is
   begin
        return Integer (((val) * (65536.0)));
   end toFixed;

   function mul (This : in out FixedPoint; a : Integer; b : Integer) return Integer is
   begin
        return Integer ((Java_Shift_Right_Arithmetic (((Long_Long_Integer (a)) * (Long_Long_Integer (b))), 16)));
   end mul;

   function div (This : in out FixedPoint; a : Integer; b : Integer) return Integer is
   begin
        return Integer ((((Java_Shift_Left ((Long_Long_Integer (a)), 16))) / (Long_Long_Integer (b))));
   end div;

   function toInt (This : in out FixedPoint; fixed : Integer) return Integer is
   begin
        return Java_Shift_Right_Arithmetic (fixed, 16);
   end toInt;

   procedure getInstance is
      Java_Result : constant FixedPoint_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure toFixed (This : in out FixedPoint; val : Long_Float) is
      Java_Result : constant Integer := FixedPoint'Class (This).toFixed (val);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toFixed;

   procedure toFixed (This : in out FixedPoint; val : Float) is
      Java_Result : constant Integer := FixedPoint'Class (This).toFixed (val);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toFixed;

   procedure mul (This : in out FixedPoint; a : Integer; b : Integer) is
      Java_Result : constant Integer := FixedPoint'Class (This).mul (a, b);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end mul;

   procedure div (This : in out FixedPoint; a : Integer; b : Integer) is
      Java_Result : constant Integer := FixedPoint'Class (This).div (a, b);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end div;

   procedure toInt (This : in out FixedPoint; fixed : Integer) is
      Java_Result : constant Integer := FixedPoint'Class (This).toInt (fixed);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toInt;

begin
   null;
   instance := FixedPoint_Package.Create;

end org.allbinary.animation.FixedPoint_Package;


